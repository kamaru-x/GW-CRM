from django import forms
from django.contrib.auth.forms import UserCreationForm
from d_auth.models import User

class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField()


class CreateCustomer(UserCreationForm):
    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2','Country','CCode','Mobile')