from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.


class User(AbstractUser):
    Country = models.CharField('country', max_length=50,null=True,blank=True)
    CCode = models.CharField('CCode',max_length=5,null=True,blank=True)
    Mobile = models.CharField('Mobile',max_length=15,null=True,blank=True)