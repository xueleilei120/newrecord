# _*_ encoding:utf-8 _*_
from django.shortcuts import render, HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
import json

from .models import UserProfile, Banner
from .forms import LoginForm, RegisterForm, ForgetForm, ModifyPwdForm, UserInfoForm, UploadImageForm
from utils.email_send import send_register_email
from utils.mixin_utils import LoginRequiredMixin
from .models import EmailVerifyRecord
# Create your views here.

# 首页
class IndexView(View):
    def get(self, request):
        all_banner = Banner.objects.all().order_by('index')

        return render(request, 'index.html', {
            'all_banner': all_banner
        })

# 用户后台登陆
class CustomBackend(ModelBackend):
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            # username 为空或者两个的时候都会报错，用Q可以实现并集验证
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            # user = UserProfile.objects.get(username=username)
            if user.check_password(password):
                return user
        except Exception as e:
            return None

class LogoutView(View):
    """
    用户登出
    """
    def get(self, request):
        logout(request)
        return HttpResponseRedirect(reverse("index"))

# 用类的形式登陆
class LoginView(View):
    def get(self, request):
         return render(request, "login.html", {})

    def post(self, request):
        # request.POST 这个参数是一个字典，回去做Form中的校验
        login_form = LoginForm(request.POST)
        # 表单验证
        if login_form.is_valid():
            user_name = request.POST.get("username", "")
            pass_word = request.POST.get("password", "")
            user = authenticate(username=user_name, password=pass_word)
            msg = "请去%s邮箱激活账号" % user_name
            if user is not None:
                login(request, user)
                return render(request, "index.html")
                # if user.is_active:
                #     login(request, user)
                #     return render(request, "index.html")
                # else:
                #     return render(request, "login.html", {"login_form": login_form, "msg": msg})
            else:
                return render(request, "login.html", {"login_form": login_form, "msg": "用户或者密码错误"})
        else:
            return render(request, "login.html", {"login_form": login_form})


# 用户邮箱注册
class RegisterView(View):
    def get(self, request):
        register_form = RegisterForm()
        return render(request, "register.html", {'register_form': register_form})

    def post(self, request):
        # request.POST 这个参数是一个字典，回去做Form中的校验
        register_form = RegisterForm(request.POST)
        # 表单验证
        if register_form.is_valid():
            user_name = request.POST.get("email", "")
            if UserProfile.objects.filter(email=user_name):
                 return render(request, "register.html", {'register_form': register_form, "msg": "用户已经存在!"})
            pass_word = request.POST.get("password", "")
            print("user_name", user_name)
            user_profile = UserProfile()
            user_profile.username = user_name
            user_profile.email = user_name
            user_profile.is_active = False
            user_profile.password = make_password(pass_word)
            user_profile.save()

            send_register_email(user_name, 'register')
            return render(request, "login.html")
        else:
            return render(request, "register.html", {'register_form': register_form})

class UserinfoView(LoginRequiredMixin, View):
    """
    用户个人信息
    """
    def get(self, request):
        return render(request, 'usercenter-info.html', {})

    def post(self, request):
        user_info_form = UserInfoForm(request.POST, instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse(json.dumps(user_info_form.errors), content_type='application/json')


class UploadImageView(LoginRequiredMixin, View):
    """
    用户修改头像
    """
    def post(self, request):
        image_form = UploadImageForm(request.POST, request.FILES, instance=request.user)
        if image_form.is_valid():
            image_form.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse('{"status":"fail"}', content_type='application/json')

