from django.db import models
from django.contrib.auth.models import AbstractUser
import uuid

# Create your models here.

class Countries(models.Model):
    Name = models.CharField(max_length=50)

    def __str__(self):
        return self.Name

class CCodes(models.Model):
    Code = models.CharField(max_length=5)

    def __str__(self):
        return self.Code

class User(AbstractUser):
    Name = models.CharField(max_length=50,null=True,blank=True)
    email = models.EmailField(unique=True)
    Country = models.ForeignKey(Countries,on_delete=models.DO_NOTHING,null=True,blank=True)
    CCode = models.ForeignKey(CCodes,on_delete=models.DO_NOTHING,null=True,blank=True)
    Mobile = models.CharField('Mobile',max_length=15,null=True,blank=True)
    Domains = models.IntegerField(default=0)
    username = models.CharField(max_length=50,default=uuid.uuid4)

    USERNAME_FIELD = 'email'

    REQUIRED_FIELDS = []

    def get_username(self):
        return self.email