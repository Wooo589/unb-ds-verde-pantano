from django.shortcuts import render
from .models import Hospital
from .forms import BuscarForms

def index(request):
    return render(request, ('inicial/index.html'))

def locais_de_atendimento(request):
    hospitais = Hospital.objects.order_by("nome")
    form = BuscarForms()

    return render(request, 'inicial/locais_de_atendimento.html', {"hospitais": hospitais, "form":form})

def buscar(request):
    hospitais = Hospital.objects.order_by("nome")
    form = BuscarForms()

    UFS = [
        ("AC","Acre"),
        ("AL","Alagoas"),
        ("AP","Amapá"),
        ("AM","Amazonas"),
        ("BA","Bahia"),
        ("CE","Ceará"),
        ("DF","Distrito Federal"),
        ("ES","Espirito Santo"),
        ("GO","Goiás"),
        ("MA","Maranhão"),
        ("MT","Mato Grosso"),
        ("MS","Mato Grosso do Sul"),
        ("MG","Minas Gerais"),
        ("PA","Pará"),
        ("PB","Paraíba"),
        ("PR","Paraná"),
        ("PE","Pernambuco"),
        ("PI","Piauí"),
        ("RJ","Rio de Janeiro"),
        ("RN","Rio Grande do Norte"),
        ("RS","Rio Grande do Sul"),
        ("RO","Rondônia"),
        ("RR","Roraima"),
        ("SC","Santa Catarina"),
        ("SP","Sâo Paulo"),
        ("SE","Sergipe"),
        ("TO","Tocantins")
    ]

    if "buscar" in request.GET:
        
        nome_a_buscar = request.GET['buscar']

        if nome_a_buscar:
            hospitais = hospitais.filter(nome__icontains=nome_a_buscar)

    return render(request, "inicial/buscar.html", {"hospitais": hospitais, "form": form, "ufs":UFS})