from django.shortcuts import render,redirect
from d_auth.models import User
from administrator.models import Domain,CCode,Country,Tickets,Replayes,Attachment
from django.contrib.auth.decorators import user_passes_test
from datetime import date
import datetime
from dateutil.relativedelta import relativedelta
from datetime import datetime
from datetime import timedelta
from django.contrib import messages
from administrator.forms import EditCustomer
import itertools

# Create your views here.

@user_passes_test(lambda u: u.is_superuser)
def admin_home(request):
    return render(request,'adm/admin-home.html')

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def customers_list(request):
    customers = User.objects.all().exclude(is_superuser=True).exclude(is_staff=True)
    context = {
        'customers' : customers
    }
    return render(request,'adm/customers-list.html',context)

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def customer_details(request,Name):
    customer = User.objects.get(Name=Name)
    domains = Domain.objects.filter(Customer_Name=customer)
    count = domains.count()
    context = {
        'customer' : customer,
        'domains' : domains,
        'count' : count,
    }
    return render(request,'adm/customer-details.html',context)

##################################################################################

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

##################################################################################

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

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def all_tickets(request):
	tickets = Tickets.objects.filter(Status=1).order_by('-id')
	context = {
		'tickets' : tickets
	}
	return render(request,'adm/all-tickets.html',context)

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def replay_ticket(request,id):
    usr = request.user
    replays = Replayes.objects.filter(Ticket__id=id).order_by('-id')
    ticket = Tickets.objects.get(id=id)
    attachments = Attachment.objects.all()
    tattach = Attachment.objects.filter(Ticket=ticket)
    
    if request.method == 'POST' :
        replay = request.POST.get('test')
        dt = date.today()
        attachments = request.FILES.getlist('attachment')
        filenames = request.POST.getlist('filename')

        x_forw_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forw_for is not None:
            ip = x_forw_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')

        data = Replayes(Ticket=ticket,Sender=usr,Replay=replay,Date=dt)
        data.save()

        last_replay = Replayes.objects.filter(Ticket__id=id).last()
        ticket.Last_replayed = last_replay.Sender.Name
        ticket.Last_replayed_Date = datetime.now()
        ticket.save()

        for (attachment , filename) in zip(attachments,filenames):
            attach = Attachment(Replay=last_replay,Attach=attachment,Name=filename)
            attach.save()
        return redirect('/ticket-replayes/%s'%ticket.id)

    context = {
		'replays' : replays,
		'ticket' : ticket,
        'attachments' : attachments,
        'attachs' : tattach,
	}
    
    return render(request,'adm/ticket-replayes.html',context)

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def admin_close_ticket(request,id):
    ticket = Tickets.objects.get(id=id)
    ticket.Status = 0
    ticket.Closed_Date = datetime.now()
    ticket.Closed_User = request.user.Name
    ticket.save()
    return redirect('list-ticket')

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def closed_tickets(request):
	tickets = Tickets.objects.filter(Status=0).order_by('-id')
	context = {
		'tickets' : tickets
	}
	return render(request,'adm/closed-tickets.html',context)

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def view_closed_ticket(request,id):
    usr = request.user
    replays = Replayes.objects.filter(Ticket__id=id).order_by('-id')
    ticket = Tickets.objects.get(id=id)
    attachments = Attachment.objects.all()
    tattach = Attachment.objects.filter(Ticket=ticket)
    context = {
		'replays' : replays,
		'ticket' : ticket,
        'attachments' : attachments,
        'attachs' : tattach,
	}
    
    return render(request,'adm/view-closed-tickets.html',context)

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def deactivate_domain(request,cid,did):
    customer = User.objects.get(id=cid)
    domain = Domain.objects.get(id=did)
    domain.Status = 0
    domain.save()
    return redirect('/customer-details/%s'%customer.Name)

##################################################################################

@user_passes_test(lambda u: u.is_superuser)
def staff_list(request):
    customers = User.objects.filter(is_staff=True).exclude(is_superuser=True)
    context = {
        'customers' : customers
    }
    return render(request,'adm/staff-list.html',context)