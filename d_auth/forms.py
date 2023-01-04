from django import forms
from django.contrib.auth.forms import UserCreationForm,PasswordChangeForm
from d_auth.models import User
from django.forms import TextInput,EmailInput,Select

class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField()

    username = forms.CharField(
        widget= forms.TextInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    password = forms.CharField(
        widget=forms.PasswordInput(
            attrs={
                "class": "form-control"
            }
        )
    )


class CreateCustomer(UserCreationForm):

    password1 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    password2 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    
    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2','Country','CCode','Mobile')

        widgets = {
            'username': TextInput(attrs={'class' : 'form-control','placeholder':'Enter company name'}),
            'email': EmailInput(attrs={'class' : 'form-control','placeholder':'Enter company email'}),
            'password1': TextInput(attrs={'class' : 'form-control'}),
            'password2': TextInput(attrs={'class' : 'form-control'}),
            'Mobile': TextInput(attrs={'class' : 'form-control','placeholder':'Enter mobile number'}),
            'Country': Select(attrs={'class' : 'form-control'}),
            'CCode': Select(attrs={'class' : 'form-control'}),
        }

class CreateStaff(UserCreationForm):

    password1 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    password2 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    
    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2','is_staff')

        widgets = {
            'username': TextInput(attrs={'class' : 'form-control','placeholder':'Enter staff name'}),
            'email': EmailInput(attrs={'class' : 'form-control','placeholder':'Enter staff email'}),
            'password1': TextInput(attrs={'class' : 'form-control'}),
            'password2': TextInput(attrs={'class' : 'form-control'}),
        }

class ChangePassword(PasswordChangeForm):
    def __init__(self,*args,**kwargs):
        super().__init__(*args,**kwargs)

        for fieldname in ['old_password','new_password1','new_password2'] :
            self.fields[fieldname].widget.attrs = {'class' : 'form-control'}