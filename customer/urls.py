from django.urls import path
from customer import views

urlpatterns = [
    path('customer-home/',views.customer_home,name='cus-home'),
    path('domains/',views.list_domains,name='list-domains'),
    path('tickets/',views.user_tickets_list,name='list-tickets'),
    path('create-ticket/',views.create_ticket,name='create-ticket'),
    path('replayes/<int:id>/',views.tickets_replay,name='replayes')
]