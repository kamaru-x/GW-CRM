from django.shortcuts import render,redirect
from d_auth.forms import CreateCustomer,LoginForm
from django.contrib.auth import authenticate,login
from django.core.mail import send_mail
from d_auth.models import User
from django.contrib import messages

# Create your views here.

def create_customer(request):
    msg = None
    if request.method == 'POST':
        form = CreateCustomer(request.POST)
        if form.is_valid():
            password = form.cleaned_data['password1']
            user = form.save()
            messages.success(request,'created new customer')
            send_mail('Password for Your Website','your password is #password123 ','xin.kamaru@gmail.com',['hackerkamaru@gmail.com'],fail_silently=False)
            return redirect('create-customer')
        else:
            messages.error(request,'cant create user some error occupied')
    else:
        form = CreateCustomer()
    return render(request,'aut/create-customer.html', {'form': form})

def user_login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        # usr = User.objects.get(email=username.lower()).username

        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            if request.user.is_superuser:
                return redirect('admin-home')
            else:
                return redirect('cus-home')
        else:
            messages.error(request,'incorrect email or password')
            return redirect('.')
    return render(request,'aut/login.html')



# def user_login(request):
#     form = LoginForm(request.POST or None)
#     msg = None
#     if request.method == 'POST':
#         if form.is_valid():
#             username = form.cleaned_data.get('username')
#             password = form.cleaned_data.get('password')
#             user2 = User.objects.get(email=username.lower()).username
#             if user2 is None:
#                 msg = 'wrong password or email'
#             else:
#                 user = authenticate(username=user2, password=password)
#                 if user is not None:
#                     login(request, user)
#                     if request.user.is_superuser:
#                         return redirect('admin-home')
#                     else:
#                         return redirect('cus-home')
#                 else:
#                     msg = 'wrong password or email'
#     return render(request, 'aut/login.html', {'form': form, 'msg': msg})