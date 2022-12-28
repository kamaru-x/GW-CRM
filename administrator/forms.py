from django import forms
from d_auth.models import User
from django.forms import TextInput,EmailInput,Select

class EditCustomer(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username', 'email','Country','CCode','Mobile')

        widgets = {
            'username': TextInput(attrs={'class' : 'form-control'}),
            'email': EmailInput(attrs={'class' : 'form-control'}),
            'Mobile': TextInput(attrs={'class' : 'form-control'}),
            'Country': Select(attrs={'class' : 'form-control'}),
            'CCode': Select(attrs={'class' : 'form-control'}),
        }