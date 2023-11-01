from django.shortcuts import render, get_object_or_404, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from .models import *
from .forms import *
from datetime import datetime

def index(request):
    hospitais = Hospital.objects.order_by("nome")[:3]
    context = {"hospitais": hospitais}

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
    context = {"hospital": hospital, "buscar":buscar2}

    return render(request, "inicial/maisinformacoes.html", context)

def avaliar_hospital(request, hospital_cnes):
    hospital = get_object_or_404(Hospital, pk=hospital_cnes)
    buscar = BuscarForms()
    avaliar = AvaliarForms()
    context = {"hospital": hospital, "buscar":buscar, "avaliar":avaliar}

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

        return redirect('locais_de_atendimento')

    return render(request, "inicial/avaliarhospital.html", context)

def sobre_nos(request):
    return render(request, 'inicial/SobreNos.html')

def duvidas_frequentes(request):
    return render(request, 'inicial/duvidas_frequentes.html')

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
            messages.success(request, "Usuário cadastrado com sucesso")
            return redirect('login')

    context = {"cadastro":cadastro}

    return render(request, 'inicial/criar_conta_2.html', context)

def login_site(request):

    if request.method == "POST":
        usuario = request.POST["usuario"]
        senha = request.POST["senha"]

        user = authenticate(request, username=usuario, password=senha)

        if user is not None:
            login(request, user)
            messages.success(request, f"{usuario} logado com sucesso!")
            return redirect('locais_de_atendimento')

        else:
            messages.error(request, "Usuário ou senha incorretos")
            return redirect('login')

    return render(request, 'inicial/FazerLogin.html')

def esqueci_senha(request):
    return render(request, 'inicial/esqueciSenha.html')

def confirma_email(request):
    return render(request, 'inicial/ConfirmaEmail.html')

def logout_site(request):
    logout(request)
    messages.success(request, "Logout efetuado com sucesso!")
    return redirect('locais_de_atendimento')