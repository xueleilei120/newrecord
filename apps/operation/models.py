# _*_ encoding=utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models

from users.models import UserProfile
from notes.models import Notes
# Create your models here.


# class UserNotes(models.Model):
#     """用户的笔记"""
#     user = models.ForeignKey(UserProfile, verbose_name=u"用户")
#     note = models.ForeignKey(Notes, verbose_name=u"笔记")
#     add_time = models.DateTimeField(default=datetime.now, verbose_name=u"提交时间")
#
#     class Meta:
#         verbose_name = u"用户的笔记"
#         verbose_name_plural = verbose_name