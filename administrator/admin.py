from django.contrib import admin
from administrator.models import Country,CCode,Domain,Tickets,Replayes,Attachment

# Register your models here.

admin.site.register(Country)
admin.site.register(CCode)
admin.site.register(Domain)
admin.site.register(Tickets)
admin.site.register(Replayes)
admin.site.register(Attachment)