from django.shortcuts import render,redirect
from django.contrib.auth.decorators import login_required
from administrator.models import Domain,Tickets,Replayes
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
        message = request.POST.get('test')
        attachment = request.FILES.get('attachment')
        creator = request.user
        dat = date.today()
        ticket = Tickets(Creator=creator,Message=message,Attachment=attachment,Date=dat)
        ticket.save()
        return redirect('.')
    return render(request,'cus/create-ticket.html')

##################################################################################

@login_required
def tickets_replay(request,id):
    usr = request.user
    replayes = Replayes.objects.filter(Ticket__id=id).order_by('-id')
    ticket = Tickets.objects.get(id=id)
    if request.method == 'POST':
        replay = request.POST.get('test')
        dt = date.today() 
        attachment = request.FILES.get('attachment')
        data = Replayes(Ticket=ticket,Sender=usr,Replay=replay,Date=dt,Attachment=attachment)
        data.save()

        last_replay = Replayes.objects.filter(Ticket__id=id).last()
        ticket.Last_replayed = last_replay.Sender.username
        ticket.Last_replayed_Date = datetime.now()
        ticket.save()
        return redirect('/replayes/%s'%ticket.id)
    context = {
        'ticket' : ticket,
        'replays' : replayes,
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
    context = {
        'ticket' : ticket,
        'replays' : replayes,
    }
    return render(request,'cus/view-closed-ticket.html',context)

##################################################################################