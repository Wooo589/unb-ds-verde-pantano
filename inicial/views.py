from django.shortcuts import render, get_object_or_404, redirect
from django.core.mail import send_mail
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib.auth.tokens import PasswordResetTokenGenerator
from datetime import datetime
from setup import settings
from .models import *
from .forms import *

def index(request):
    hospitais = Hospital.objects.order_by("-nota")[:3]
    buscar2 = BuscarForms()
    filter_form = FilterForms()
    counter = (1, 2, 3, 4, 5)
    context = {"hospitais": hospitais, "buscar": buscar2, "filter":filter_form, "counter":counter}

    return render(request, 'inicial/index.html', context)

def locais_de_atendimento(request):
    hospitais = Hospital.objects.order_by("nome")
    buscar2 = BuscarForms()
    filter_form = FilterForms()
    context = {"hospitais": hospitais, "buscar": buscar2, "filter":filter_form}

    return render(request, 'inicial/locaisdeatendimento.html', context)

def buscar(request):
    hospitais = Hospital.objects.order_by("nome")
    buscar2 = BuscarForms()
    filter_form = FilterForms()

    if "uf" in request.GET:
        uf_a_buscar = request.GET['uf']

        if uf_a_buscar:
            hospitais = hospitais.filter(uf__iexact=uf_a_buscar)

    if "municipio" in request.GET:
        municipio_a_buscar = request.GET['municipio']

        if municipio_a_buscar:
            hospitais = hospitais.filter(municipio__iexact=municipio_a_buscar)

    if "categoria" in request.GET:
        categoria_a_buscar = request.GET['categoria']

        if categoria_a_buscar:
            hospitais = hospitais.filter(categoria__iexact=categoria_a_buscar)

    if "buscar" in request.GET:
        nome_a_buscar = request.GET['buscar']

        if nome_a_buscar:
            hospitais = hospitais.filter(nome__icontains=nome_a_buscar)

    context = {"hospitais": hospitais, "buscar": buscar2, "filter":filter_form}

    return render(request, "inicial/buscar.html", context)

def mais_informacoes(request, hospital_cnes):
    hospital = get_object_or_404(Hospital, pk=hospital_cnes)
    buscar2 = BuscarForms()
    filter_form = FilterForms()
    counter = (1, 2, 3, 4, 5)
    context = {"hospital": hospital, "buscar": buscar2, "filter":filter_form, "counter":counter}

    return render(request, "inicial/maisinformacoes.html", context)

def avaliar_hospital(request, hospital_cnes):

    if not request.user.is_authenticated:
        messages.error(request, "Usuário precisa estar autenticado para avaliar hospitais")
        return redirect('mais_informacoes', hospital_cnes)

    hospital = get_object_or_404(Hospital, pk=hospital_cnes)
    buscar2 = BuscarForms()
    filter_form = FilterForms()
    avaliar = AvaliarForms()
    context = {"hospital": hospital, "buscar": buscar2, "filter":filter_form, "avaliar":avaliar}

    if request.method == "POST":
        risco = request.POST["risco"]
        duracao = datetime.strptime(request.POST["horario_atendimento"],"%Y-%m-%dT%H:%M") - datetime.strptime(request.POST["horario_entrada"], "%Y-%m-%dT%H:%M")
        avaliacao = request.POST["avaliacao"]
        observacao = request.POST["observacao"]

        Avaliacao.objects.create(
            usuario=request.user.username,
            hospital=hospital,
            risco=risco,
            duracao=duracao,
            avaliacao=avaliacao,
            observacao=observacao
        )

        return redirect('mais_informacoes', hospital_cnes)

    return render(request, "inicial/avaliarhospital.html", context)

def duvidas_frequentes(request):
    buscar2 = BuscarForms()
    filter_form = FilterForms()
    avaliar = AvaliarForms()
    context = {"buscar": buscar2, "filter":filter_form, "avaliar":avaliar}

    return render(request, 'inicial/duvidas_frequentes.html', context)

def cadastro(request):

    cadastro = CadastroForms()

    if request.method == "POST":
        cadastro = CadastroForms(request.POST)

        if cadastro.is_valid():
            if cadastro["senha_1"].value() != cadastro["senha_2"].value():
                messages.error(request, "Digite senhas iguais para concluir o cadastro")
                return redirect('cadastro')

            nome = cadastro["nome_cadastro"].value()
            email = cadastro["email"].value()
            senha = cadastro["senha_1"].value()

            if User.objects.filter(username=nome).exists():
                messages.error(request, "Usuário já existente")
                return redirect('cadastro')

            usuario = User.objects.create_user(
                username=nome,
                email=email,
                password=senha
            )

            usuario.save()
            messages.success(request, "Usuário cadastrado com sucesso!")
            return redirect('index')

    context = {"cadastro":cadastro}

    return render(request, 'inicial/criar_conta.html', context)

def login_site(request, view_name):
    if request.method == "POST":
        usuario = request.POST["usuario"]
        senha = request.POST["senha"]

        user = authenticate(request, username=usuario, password=senha)

        if user is not None:
            login(request, user)
            messages.success(request, f"{usuario} autenticado com sucesso!")
            return redirect(view_name)

        else:
            messages.error(request, "Usuário ou senha incorretos")
            return redirect(view_name)

def confirma_email(request, view_name):

    if request.method == "POST":
        email = request.POST["email"]

        if User.objects.filter(email__exact=email).exists():

            gerador = PasswordResetTokenGenerator()
            usuario = User.objects.get(email=email)
            token = gerador.make_token(usuario)
            username = usuario.username
            context = {"token":token, "username": username}
            # print(gerador.check_token(usuario, token))

            send_mail(
                "Redefinição de Senha",
                message=
                "Uma requisição de redefinição de senha foi feita no site MedConnect para a conta vinculada a este email, "
                f"para prosseguir com a redefinição basta acessar o seguinte link: http://127.0.0.1:8000/redefinir_senha/{username}/{token}. "
                "Caso a requisição não tenha sido feita por você por favor ignore este email.",
                from_email=settings.EMAIL_HOST_USER,
                recipient_list=[email,],
            )
            messages.success(request, "Email de redefinição de senha enviado com sucesso!")
        else:
            messages.error(request, "Nenhum usuário encontrado com o email informado")

    return redirect(view_name)

def logout_site(request):
    logout(request)
    messages.success(request, "Logout efetuado com sucesso!")
    return redirect('index')

def redefinir_senha(request, username, token):

    usuario = User.objects.get(username=username)

    if request.method == "POST":
        if request.POST["senha_1"] != request.POST["senha_2"]:
            return redirect("redefinir_senha", username, token)

        senha = request.POST["senha_1"]
        usuario.set_password(senha)
        usuario.save(force_update=True)

        messages.success(request, "Senha redefinida com sucesso!")
        return redirect("index")

    gerador = PasswordResetTokenGenerator()

    if gerador.check_token(usuario, token):

        context = {"username":username, "token":token}

        return render(request,'inicial/RedefinirSenha.html', context)

def minhas_avaliacoes(request):
    if not request.user.is_authenticated:
        messages.error(request, "Realize login para visualizar suas avaliações")
        return redirect("index")

    buscar2 = BuscarForms()
    filter_form = FilterForms()
    counter = (1, 2, 3, 4, 5)
    avaliacoes = Avaliacao.objects.filter(usuario__exact=request.user.username).order_by("-data")
    context = {"buscar": buscar2, "filter":filter_form, "counter":counter, "avaliacoes":avaliacoes}

    return render(request, "inicial/minhasavaliacoes.html", context)

def meus_dados(request):
    if not request.user.is_authenticated:
        messages.error(request, "Realize login para visualizar seus dados")
        return redirect("index")

    buscar2 = BuscarForms()
    filter_form = FilterForms()
    context = {"buscar": buscar2, "filter":filter_form}

    return render(request, "inicial/meusdados.html", context)