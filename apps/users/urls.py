#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
@author: liuyc
@file: urls.py
@time: 2017/2/25 20:17
@describe:
"""
from django.conf.urls import url, include


from users.views import UserinfoView, UploadImageView

urlpatterns = [
    # 用户信息
    url(r'^info/$', UserinfoView.as_view(), name="user_info"),

    # 图像上传
    url(r'^image/upload/$', UploadImageView.as_view(), name="image_upload")
    ]