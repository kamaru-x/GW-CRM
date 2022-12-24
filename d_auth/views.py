from django.shortcuts import render,redirect
from d_auth.forms import CreateCustomer,LoginForm
from django.contrib.auth import authenticate,login

# Create your views here.

def create_customer(request):
    initial_data = {
        'password1' : '#password123',
        'password2' : '#password123',
    }
    msg = None
    if request.method == 'POST':
        form = CreateCustomer(request.POST)
        if form.is_valid():
            user = form.save()
            msg = 'user created'
            return redirect('create-customer')
        else:
            msg = 'form is not valid'
    else:
        form = CreateCustomer()
    return render(request,'aut/create-customer.html', {'form': form, 'msg': msg})

def user_login(request):
    form = LoginForm(request.POST or None)
    msg = None
    if request.method == 'POST':
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                if request.user.is_superuser:
                    return redirect('admin-home')
                else:
                    return redirect('cus-home')
    return render(request, 'aut/login.html', {'form': form, 'msg': msg})