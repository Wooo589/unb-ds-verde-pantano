from django.urls import path
from inicial.views import index

urlpatterns = [
    path('', index, name='index'),
]
