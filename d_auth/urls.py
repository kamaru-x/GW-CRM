from django.urls import path
from d_auth import views

urlpatterns = [
    path('create-customer',views.create_customer,name='create-customer'),
    path('',views.user_login,name='user-login'),
]