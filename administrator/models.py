from django.db import models
from d_auth.models import User

# Create your models here.

class Country(models.Model):
    Name = models.CharField(max_length=100)
    def __str__(self):
        return self.Name

class CCode(models.Model):
    Code = models.CharField(max_length=5)
    def __str__(self):
        return self.Code

class Domain(models.Model):
    Date = models.DateTimeField(auto_now_add=True)
    Status = models.IntegerField(default=1)
    AddedBy = models.IntegerField(default=1)
    Ip = models.GenericIPAddressField(null=True,blank=True)

    Customer_Name = models.ForeignKey(User,on_delete=models.CASCADE)
    Domain_Name = models.CharField(max_length=50)
    Purchase_Date = models.DateField()
    Renewal_Date = models.DateField(null=True,blank=True)
    Amount = models.IntegerField(default=100)

    def __str__(self):
        return self.Domain_Name

class Tickets(models.Model):
    Ip = models.GenericIPAddressField(null=True,blank=True)
    Status = models.IntegerField(default=1)

    Creator = models.ForeignKey(User,on_delete=models.CASCADE)
    Title = models.CharField(max_length=50,null=True,blank=True)
    Message = models.TextField()
    Date = models.DateField(null=True,blank=True)
    Attachment = models.FileField(null=True,blank=True,upload_to='attachments/')
    Admin_Status = models.IntegerField(default=1)
    Customer_Status = models.IntegerField(default=1)
    Last_replayed = models.CharField(max_length=50,null=True,blank=True)
    Last_replayed_Date = models.DateTimeField(null=True,blank=True)

    def __str__(self):
        return self.Message

class Replayes(models.Model):
    Ip = models.GenericIPAddressField(null=True,blank=True)
    Status = models.IntegerField(default=1)

    Ticket = models.ForeignKey(Tickets,on_delete=models.CASCADE)
    Sender = models.ForeignKey(User,on_delete=models.CASCADE)
    Replay = models.TextField()
    Date = models.DateField(null=True,blank=True)
    Attachment = models.FileField(upload_to='attachments/',null=True,blank=True)

    def __str__(self):
        return self.Ticket.Message