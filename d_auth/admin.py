from django.contrib import admin
from d_auth.models import User,CCodes,Countries
# Register your models here.

admin.site.register(User)
admin.site.register(CCodes)
admin.site.register(Countries)