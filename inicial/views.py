from django.shortcuts import render

def index(request):
    return render(request, ('inicial/index.html'))

def locais_de_atendimento(request):
    return render(request, ('inicial/locais_de_atendimento.html'))