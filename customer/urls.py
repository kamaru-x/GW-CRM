from django.urls import path
from customer import views

urlpatterns = [
    path('customer-home/',views.customer_home,name='cus-home'),
    path('domains/',views.list_domains,name='list-domains'),
    path('tickets/',views.user_tickets_list,name='list-tickets'),
    path('create-ticket/',views.create_ticket,name='create-ticket'),
    path('replayes/<int:id>/',views.tickets_replay,name='replayes'),
    path('close-tickets/<int:id>',views.customer_close_ticket,name='customer-close'),
    path('closed-tickets/',views.user_closed_tickets,name='closed-ticket'),
    path('view-closed-ticket/<int:id>',views.closed_ticket_view,name='closed_ticket_view'),
]