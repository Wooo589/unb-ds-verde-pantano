from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth import authenticate, login
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
    user = request.user

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
            hospital=hospital,
            risco=risco,
            duracao=duracao,
            avaliacao=avaliacao,
            observacao=observacao
        )

        return redirect('locais_de_atendimento')

    return render(request, "inicial/avaliarhospital.html", context)

def sobre_nos(request):
    return render(request, ('inicial/SobreNos.html'))

def duvidas_frequentes(request):
    return render(request, ('inicial/duvidas_frequentes.html'))

def cadastro(request):
    return render(request, ('inicial/criar_conta_2.html'))

def loginsite(request):

    if request.method == "POST":
        email = request.POST["email"]
        senha = request.POST["senha"]

        user = authenticate(request, username=email, password=senha)

        if user is not None:
            login(request, user)
            return redirect('locais_de_atendimento')

        else:
            return redirect('login')

    return render(request, ('inicial/FazerLogin.html'))