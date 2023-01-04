from django.urls import path
from administrator import views

urlpatterns = [
    path('admin-home/',views.admin_home,name='admin-home'),
    path('customers-list/',views.customers_list,name='customers-list'),
    path('customer-details/<str:username>',views.customer_details,name='customer-details'),
    path('edit-customer/<int:id>/',views.edit_customer,name='edit-customer'),
    path('add-domain/',views.add_domain,name='add-domain'),
    path('list-tickets/',views.all_tickets,name='list-ticket'),
    path('ticket-replayes/<int:id>',views.replay_ticket,name='ticket-replayes'),
    path('close-ticket/<int:id>',views.admin_close_ticket,name='admin-close'),
    path('closed-ticket/',views.closed_tickets,name='closed-tickets'),
    path('closed-ticket-details/<int:id>/',views.view_closed_ticket,name='closed-ticket-details'),
    path('deactivate/<int:cid>/<int:did>/',views.deactivate_domain,name='deactivate'),
    path('staff-list/',views.staff_list,name='staff-list'),
]