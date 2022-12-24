from django.shortcuts import render,redirect
from d_auth.models import User
from administrator.models import Domain,CCode,Country,Tickets,Replayes
from django.contrib.auth.decorators import user_passes_test
from datetime import date
import datetime
from dateutil.relativedelta import relativedelta

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

@user_passes_test(lambda u: u.is_superuser)
def edit_customer(request,id):
    customer = User.objects.get(id=id)
    ccodes = CCode.objects.all().exclude(Code = customer.CCode)
    countries = Country.objects.all().exclude(Name = customer.Country)
    if request.method == 'POST' :
        customer.username = request.POST.get('name')
        customer.email = request.POST.get('email')
        customer.CCode = request.POST.get('ccode')
        customer.Mobile = request.POST.get('mobile')
        customer.Country = request.POST.get('country')
        customer.save()
        return redirect('.')
    context = {
        'customer' : customer,
        'ccodes' : ccodes,
        'countries' : countries,
    }
    return render(request,'adm/edit_customer.html',context)

@user_passes_test(lambda u: u.is_superuser)
def add_domain(request):
    customers = User.objects.all().exclude(id=request.user.id)
    if request.method == 'POST':
        customer = request.POST.get('customer')
        cus = User.objects.get(id=customer)
        domain = request.POST.get('domain')
        date = request.POST.get('date')
        today = datetime.date.today()
        r_date = today + relativedelta(years = 1)
        data = Domain(Customer_Name=cus,Domain_Name=domain,Purchase_Date=date,Renewal_Date=r_date)
        data.save()
        return redirect('.')
    context = {
        'customers' : customers
    }
    return render(request,'adm/add-domain.html',context)

@user_passes_test(lambda u: u.is_superuser)
def all_tickets(request):
	tickets = Tickets.objects.all().order_by('-id')
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
		data = Replayes(Ticket=ticket,Sender=usr,Replay=replay,Date=dt,Attachment=attachment)
		data.save()
		return redirect('/ticket-replayes/%s'%ticket.id)
	context = {
		'replays' : replays,
		'ticket' : ticket
	}
	return render(request,'adm/ticket-replayes.html',context)