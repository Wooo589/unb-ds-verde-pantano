from django.urls import path
from inicial.views import *

urlpatterns = [
    path('', index, name='index'),
    path("atendimento", locais_de_atendimento, name='locais_de_atendimento'),
    path("atendimento/", buscar, name='buscar'),
    path("informacoes/<int:hospital_cnes>", mais_informacoes, name='mais_informacoes'),
    path("avaliar/<int:hospital_cnes>", avaliar_hospital, name='avaliar_hospital'),
    path("sobre_nos", sobre_nos, name='sobre_nos'),
    path("duvidas_frequentes", duvidas_frequentes, name='duvidas_frequentes'),
    path("cadastro", cadastro, name='cadastro'),
    path("login/<str:view_name>", login_site, name='login'),
    path("login/confirmacao/<str:view_name>", confirma_email, name="confirma_email"),
    path("logout", logout_site, name="logout"),
    path("redefinir_senha", redefinir_senha ,name="redefinir_senha"),
]
