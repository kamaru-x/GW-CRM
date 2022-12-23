from django import forms
from django.contrib.auth.forms import UserCreationForm,PasswordChangeForm
from d_auth.models import User

class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField()


class CreateCustomer(UserCreationForm):
    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2','Country','CCode','Mobile')


class ChangePassword(PasswordChangeForm):
    def __init__(self,*args,**kwargs):
        super().__init__(*args,**kwargs)

        for fieldname in ['old_password','new_password1','new_password2'] :
            self.fields[fieldname].widget.attrs = {'class' : 'form-control'}