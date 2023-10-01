from django.shortcuts import render
from inicial.models import Hospital

def index(request):
    return render(request, ('inicial/index.html'))

def locais_de_atendimento(request):
    hospitais = Hospital.objects.order_by("nome")
    return render(request, 'inicial/locais_de_atendimento.html', {"hospitais": hospitais})