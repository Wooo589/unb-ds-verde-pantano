from django.shortcuts import render, get_object_or_404
from .models import Hospital
from .forms import *

def index(request):
    hospitais = Hospital.objects.order_by("nome")[:3]
    context = {"hospitais": hospitais}

    return render(request, 'inicial/index.html', context)

def locais_de_atendimento(request):
    hospitais = Hospital.objects.order_by("nome")
    buscar2 = BuscarForms()
    filter_form = FilterForms()
    context = {"hospitais": hospitais, "buscar": buscar2, "filter":filter_form}

    return render(request, 'inicial/locais_de_atendimento.html', context)

def buscar(request):
    hospitais = Hospital.objects.order_by("nome")
    buscar2 = BuscarForms()
    filter_form = FilterForms()

    if "uf" in request.GET:
        uf_a_buscar = request.GET['uf']

        if uf_a_buscar:
            hospitais = hospitais.filter(uf__iexact=uf_a_buscar)

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
    context = {"hospital": hospital, "buscar":buscar}

    return render(request, "inicial/avaliarhospital.html", context)

def sobre_nos(request):
    return render(request, ('inicial/SobreNos.html'))

def duvidas_frequentes(request):
    return render(request, ('inicial/duvidas_frequentes.html'))

def cadastro(request):
    return render(request, ('inicial/criar_conta_2.html'))
