#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
@author: liuyc
@file: forms.py
@time: 2017/1/7 18:27
@describe:
"""
from django import forms
from captcha.fields import CaptchaField


from users.models import UserProfile

class LoginForm(forms.Form):
    # required=True 表示不能为空
    username = forms.CharField(required=True, error_messages={"required": u"姓名不能为空!"})
    password = forms.CharField(required=True, min_length=3,
                               error_messages={"required": u"密码不能为空!", "min_length":u"密码不能少于三位！"})


class RegisterForm(forms.Form):
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, min_length=3)
    # 验证码
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误!"})

class ForgetForm(forms.Form):
    email = forms.EmailField(required=True)
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误!"})

class ModifyPwdForm(forms.Form):
    password1 = forms.CharField(required=True, min_length=3)
    password2 = forms.CharField(required=True, min_length=3)

class UserInfoForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['nick_name', 'gender', 'birday', 'address', 'mobile']

class UploadImageForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['image']