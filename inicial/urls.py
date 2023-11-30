from django.urls import path
from inicial.views import *

urlpatterns = [
    path('', index, name='index'),
    path("atendimento", locais_de_atendimento, name='locais_de_atendimento'),
    path("atendimento/", buscar, name='buscar'),
    path("informacoes/<int:hospital_cnes>", mais_informacoes, name='mais_informacoes'),
    path("avaliar/<int:hospital_cnes>", avaliar_hospital, name='avaliar_hospital'),
    path("duvidas_frequentes", duvidas_frequentes, name='duvidas_frequentes'),
    path("cadastro", cadastro, name='cadastro'),
    path("login/<str:view_name>", login_site, name='login'),
    path("login/confirmacao/<str:view_name>", confirma_email, name="confirma_email"),
    path("logout", logout_site, name="logout"),
    path("redefinir_senha/<str:username>/<str:token>", redefinir_senha, name="redefinir_senha"),
    path("perfil/avaliacoes", minhas_avaliacoes, name="minhas_avaliacoes"),
    path("perfil/avaliacoes/", pesquisar_avaliacoes, name="pesquisar_avaliacoes"),
    path("perfil/avaliacoes/<int:avaliacao_id>", avaliacao_completa, name="avaliacao_completa"),
    path("perfil/meus_dados", meus_dados, name="meus_dados"),
    path("triagem", triagem, name="triagem"),
    path("triagem/a1",adulto1, name="adulto1"),
    path("triagem/b1",crianca1, name="crianca1"),
    path("triagem/b2",crianca2, name="crianca2"),
    path("resultado_vermelho",resultado_vermelho, name="resultado_vermelho"),
    path("perfil/editar_dados", editar_dados, name="editar_dados")
]
