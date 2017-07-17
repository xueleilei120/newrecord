# _*_ encoding=utf-8 _*_
# python 自带的一些模块
from __future__ import unicode_literals
from datetime import datetime

# 第三方常用库
from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.


# 对用户信息重新封装
class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name=u"昵称", default="")
    birday = models.DateField(verbose_name=u"生日", blank=True, null=True)
    gender = models.CharField(max_length=6, choices=(("male", u"男"), ("female", u"女")), default="female")
    address = models.CharField(max_length=100, default=u"", verbose_name=u"地址")
    # blank=True表示可以为空， null=True表示数据库中存为NULL
    mobile = models.CharField(max_length=11, blank=True, null=True)
    image = models.ImageField(upload_to="images/%Y/%m", default=u"images/default.png")

    class Meta:
        verbose_name = u"用户信息"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.username

# 轮播图
class Banner(models.Model):
    title = models.CharField(max_length=200, verbose_name=u"标题")
    image = models.ImageField(upload_to="banner/%Y/%m", default=u"images/default.png", verbose_name=u"轮播图片")
    url = models.URLField(verbose_name=u"访问地址")
    index = models.IntegerField(verbose_name=u"轮播顺序", default=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"轮播图"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title

# 邮箱验证码
class EmailVerifyRecord(models.Model):
    code = models.CharField(max_length=20, verbose_name=u"验证码")
    email = models.EmailField(max_length=50, verbose_name=u"邮箱")
    send_type = models.CharField(max_length=10, choices=(("register", u"注册"),("forget", u"忘记")), verbose_name=u"验证码类型")
    send_time = models.DateTimeField(default=datetime.now, verbose_name=u"验证时间")

    class Meta:
        verbose_name = u"邮箱验证码"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '{0}({1})'.format(self.code, self.email)