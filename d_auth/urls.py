from django.urls import path
from d_auth import views
from django.urls import path,reverse_lazy
from django.contrib.auth.views import PasswordChangeView,PasswordChangeDoneView
from d_auth.forms import ChangePassword

urlpatterns = [
    path('create-customer',views.create_customer,name='create-customer'),
    path('',views.user_login,name='user-login'),
    path('change-admin-password/',PasswordChangeView.as_view(template_name='aut/change-admin-password.html',success_url=reverse_lazy('password changed'),form_class=ChangePassword),name='change-admin-password'),
    path('change-password/',PasswordChangeView.as_view(template_name='aut/change-customer-password.html',success_url=reverse_lazy('password changed'),form_class=ChangePassword),name='change-customer-password'),
]