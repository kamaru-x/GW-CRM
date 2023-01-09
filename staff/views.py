from django.shortcuts import render,redirect
from administrator.models import Tickets,Replayes,Attachment
from datetime import datetime
from datetime import date
from django.contrib.auth.decorators import login_required
import itertools

# Create your views here.

def staff_home(request):
    return render(request,'stf/staff-base.html')

##################################################################################

def staff_ticketlist(request):
    tickets = Tickets.objects.exclude(Staff=request.user.id).exclude(Status=0)
    stickets = Tickets.objects.filter(Staff=request.user.id).exclude(Status=0)
    context = {
        'tickets' : tickets,
        'stickets' : stickets,
    }
    return render(request,'stf/staff-tickets.html',context)

##################################################################################

def select_ticket(request,id):
    ticket = Tickets.objects.get(id=id)
    ticket.Staff = request.user.id
    ticket.save()
    return redirect('select-ticket')

##################################################################################

def replays_tickets(request,id):
    usr = request.user
    replays = Replayes.objects.filter(Ticket__id=id).order_by('-id')
    ticket = Tickets.objects.get(id=id)
    attachments = Attachment.objects.all()
    tattach = Attachment.objects.filter(Ticket=ticket)
    
    if request.method == 'POST' :
        replay = request.POST.get('test')
        dt = date.today()
        attachmentz = request.FILES.getlist('attachment')
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

        for (attachment , filename) in zip(attachmentz,filenames):
            attach = Attachment(Replay=last_replay,Attach=attachment,Name=filename)
            attach.save()
        return redirect('/tickets-replayes/%s'%ticket.id)

    context = {
		'replays' : replays,
		'ticket' : ticket,
        'attachments' : attachments,
        'attachs' : tattach,
	}
    
    return render(request,'stf/tickets-replayes.html',context)

##################################################################################

@login_required
def staff_close_ticket(request,id):
    ticket = Tickets.objects.get(id=id)
    ticket.Status = 0
    ticket.save()
    return redirect('select-ticket')

##################################################################################

@login_required
def staff_closed_tickets(request):
    tickets = Tickets.objects.filter(Status=0).order_by('-id')
    context = {
        'tickets' : tickets
    }
    return render(request,'stf/closed-tickets.html',context)

##################################################################################

@login_required
def closed_ticket_replay(request,id):
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
    return render(request,'stf/closed-tickets-replay.html',context)

##################################################################################