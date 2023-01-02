from django.shortcuts import render,redirect
from django.contrib.auth.decorators import login_required
from administrator.models import Domain,Tickets,Replayes,Attachment
from datetime import date
from datetime import datetime

# Create your views here.

def customer_home(request):
    return render(request,'cus/cus-home.html')

##################################################################################

@login_required
def list_domains(request):
    domains = Domain.objects.filter(Customer_Name=request.user)
    context = {
        'domains' : domains
    }
    return render(request,'cus/list-domains.html',context)

##################################################################################

@login_required
def user_tickets_list(request):
    tickets = Tickets.objects.filter(Creator=request.user).filter(Customer_Status=1).order_by('-id')
    context = {
        'tickets' : tickets
    }
    return render(request,'cus/list-ticket.html',context)

##################################################################################

@login_required
def create_ticket(request):
    if request.method == 'POST':
        title = request.POST.get('title')
        message = request.POST.get('test')
        attachment = request.FILES.getlist('attachment')
        creator = request.user
        dat = date.today()
        x_forw_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forw_for is not None:
            ip = x_forw_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')

        ticket = Tickets(Creator=creator,Message=message,Date=dat,Ip=ip,Title=title)
        ticket.save()
        tick = Tickets.objects.last()
        for a in attachment:
            attach = Attachment(Ticket=tick,Attach=a)
            attach.save()
        return redirect('.')
    return render(request,'cus/create-ticket.html')

##################################################################################

@login_required
def tickets_replay(request,id):
    usr = request.user
    replayes = Replayes.objects.filter(Ticket__id=id).order_by('-id')
    ticket = Tickets.objects.get(id=id)
    attachments = Attachment.objects.all()
    tattach = Attachment.objects.filter(Ticket=ticket)
    
    if request.method == 'POST':
        replay = request.POST.get('test')
        dt = date.today() 
        attachment = request.FILES.getlist('attachment')
        data = Replayes(Ticket=ticket,Sender=usr,Replay=replay,Date=dt)
        data.save()

        last_replay = Replayes.objects.filter(Ticket__id=id).last()
        ticket.Last_replayed = last_replay.Sender.username
        ticket.Last_replayed_Date = datetime.now()
        ticket.save()

        for a in attachment:
            attach = Attachment(Replay=last_replay,Attach=a)
            attach.save()
        return redirect('/replayes/%s'%ticket.id)
    context = {
        'ticket' : ticket,
        'replays' : replayes,
        'attachments' : attachments,
        'attachs' : tattach,
    }
    return render(request,'cus/replayes.html',context)

##################################################################################

@login_required
def customer_close_ticket(request,id):
    ticket = Tickets.objects.get(id=id)
    ticket.Customer_Status = 0
    ticket.save()
    return redirect('list-tickets')

##################################################################################

@login_required
def user_closed_tickets(request):
    tickets = Tickets.objects.filter(Creator=request.user).filter(Customer_Status=0).order_by('-id')
    context = {
        'tickets' : tickets
    }
    return render(request,'cus/closed-ticket.html',context)

##################################################################################

@login_required
def closed_ticket_view(request,id):
    usr = request.user
    replayes = Replayes.objects.filter(Ticket__id=id).order_by('-id')
    ticket = Tickets.objects.get(id=id)
    attachments = Attachment.objects.all()
    tattach = Attachment.objects.filter(Ticket=ticket)

    context = {
        'ticket' : ticket,
        'replays' : replayes,
        'attachments' : attachments,
        'attachs' : tattach,
    }
    return render(request,'cus/view-closed-ticket.html',context)

##################################################################################