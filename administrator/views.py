from django.shortcuts import render,redirect
from d_auth.models import User
from administrator.models import Domain,CCode,Country,Tickets,Replayes
from django.contrib.auth.decorators import user_passes_test
from datetime import date
import datetime
from dateutil.relativedelta import relativedelta
from datetime import datetime
from datetime import timedelta
from django.contrib import messages
from administrator.forms import EditCustomer

# Create your views here.

@user_passes_test(lambda u: u.is_superuser)
def admin_home(request):
    return render(request,'adm/admin-home.html')

@user_passes_test(lambda u: u.is_superuser)
def customers_list(request):
    customers = User.objects.all().exclude(username='admin')
    context = {
        'customers' : customers
    }
    return render(request,'adm/customers-list.html',context)

@user_passes_test(lambda u: u.is_superuser)
def customer_details(request,username):
    customer = User.objects.get(username=username)
    domains = Domain.objects.filter(Customer_Name=customer)
    count = domains.count()
    context = {
        'customer' : customer,
        'domains' : domains,
        'count' : count,
    }
    return render(request,'adm/customer-details.html',context)

# @user_passes_test(lambda u: u.is_superuser)
# def edit_customer(request,id):
#     customer = User.objects.get(id=id)
#     ccodes = CCode.objects.all().exclude(Code = customer.CCode)
#     countries = Country.objects.all().exclude(Name = customer.Country)
#     if request.method == 'POST' :
#         c = request.POST.get('ccode')
#         co = request.POST.get('country')

#         customer.username = request.POST.get('name')
#         customer.email = request.POST.get('email')
#         customer.CCode = CCode.objects.get(id=c)
#         customer.Mobile = request.POST.get('mobile')
#         customer.Country = Country.objects.get(id=co)
#         customer.save()
#         messages.success(request,'customer details edited successfully')
#         return redirect('.')
#     context = {
#         'customer' : customer,
#         'ccodes' : ccodes,
#         'countries' : countries,
#     }
#     return render(request,'adm/edit_customer.html',context)

@user_passes_test(lambda u: u.is_superuser)
def edit_customer(request,id):
    customer = User.objects.get(id=id)
    if request.method == 'POST':
        form = EditCustomer(request.POST or None , instance=customer )
        if form.is_valid():
            form.save()
            messages.success(request,'customer details edited successfully')
            return redirect('.')
    else:
        form = EditCustomer(instance=customer)
    return render(request,'adm/edit_customer.html',{'form':form})

@user_passes_test(lambda u: u.is_superuser)
def add_domain(request):
    customers = User.objects.all().exclude(id=request.user.id)
    if request.method == 'POST':
        customer = request.POST.get('customer')
        cus = User.objects.get(id=customer)
        domain = request.POST.get('domain')
        date = request.POST.get('date')

        Begindate = datetime.strptime(date, "%Y-%m-%d")
        Enddate = Begindate + timedelta(days=365)

        x_forw_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forw_for is not None:
            ip = x_forw_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')

        data = Domain(Customer_Name=cus,Domain_Name=domain,Purchase_Date=date,Renewal_Date=Enddate,Ip=ip,AddedBy=request.user.id)
        data.save()

        dcount = User.objects.get(id=cus.id)
        dcount.Domains = dcount.Domains + 1
        dcount.save()

        messages.success(request,'successfully added new domain')
        
        return redirect('.')
    context = {
        'customers' : customers
    }
    return render(request,'adm/add-domain.html',context)

@user_passes_test(lambda u: u.is_superuser)
def all_tickets(request):
	tickets = Tickets.objects.filter(Admin_Status=1).order_by('-id')
	context = {
		'tickets' : tickets
	}
	return render(request,'adm/all-tickets.html',context)

@user_passes_test(lambda u: u.is_superuser)
def replay_ticket(request,id):
    usr = request.user
    replays = Replayes.objects.filter(Ticket__id=id).order_by('-id')
    ticket = Tickets.objects.get(id=id)
    if request.method == 'POST' :
        replay = request.POST.get('message')
        dt = date.today()
        attachment = request.FILES.get('attachment')

        x_forw_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forw_for is not None:
            ip = x_forw_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')

        data = Replayes(Ticket=ticket,Sender=usr,Replay=replay,Date=dt,Attachment=attachment,Ip=ip)
        data.save()

        last_replay = Replayes.objects.filter(Ticket__id=id).last()
        ticket.Last_replayed = last_replay.id
        ticket.save()
        return redirect('/ticket-replayes/%s'%ticket.id)


@user_passes_test(lambda u: u.is_superuser)
def admin_close_ticket(request,id):
    ticket = Tickets.objects.get(id=id)
    ticket.Admin_Status = 0
    ticket.save()
    return redirect('list-ticket')