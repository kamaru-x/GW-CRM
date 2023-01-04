from django.urls import path
from staff import views

urlpatterns = [
    path('staff-home/',views.staff_home,name='staff-home'),
    path('select-ticket/',views.staff_ticketlist,name='select-ticket'),
    path('select/<int:id>/',views.select_ticket,name='select'),
    path('tickets-replayes/<int:id>/',views.replays_tickets,name='staff-replayes'),
    path('close/<int:id>/',views.staff_close_ticket,name='staff-close'),
    path('closed/',views.staff_closed_tickets,name='closed'),
    path('closed-ticket-replayes/<int:id>/',views.closed_ticket_replay,name='closed-ticket-replay')
]