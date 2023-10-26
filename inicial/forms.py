from django import forms
from .models import Hospital

class BuscarForms(forms.Form):
    buscar = forms.CharField(
        max_length=100,
        label='',
        required=False,
        widget=forms.TextInput(
            attrs={
                "id":"txtPesquisar",
                "placeholder":"Pesquisar..."
            }
        )
    )

class FilterForms(forms.Form):

    CHOICES = []
    sub_choices = ["",""]
    CHOICES.append(sub_choices)

    for i, j in Hospital.UFS:
        sub_choices = [i,j]
        CHOICES.append(sub_choices)

    uf = forms.ChoiceField(
        required=False,
        choices=CHOICES,
        widget=forms.Select(
            attrs={
                "class":"select-uf",
                "style":"width: 100%"
            }
        )
    )

    CHOICES = []
    sub_choices = ["",""]
    CHOICES.append(sub_choices)

    for i, j in Hospital.objects.values_list("municipio", "uf").distinct():
        sub_choices = [i,f"{i} - {j}"]
        CHOICES.append(sub_choices)

    municipio = forms.ChoiceField(
        required=False,
        choices=CHOICES,
        widget=forms.Select(
            attrs={
                "class":"select-municipio",
                "style":"width: 100%"
            }
        )
    )
    
    CHOICES = []
    sub_choices = ["",""]
    CHOICES.append(sub_choices)

    for i, j in Hospital.CATEGORIAS:
        sub_choices = [i,j]
        CHOICES.append(sub_choices)

    categoria = forms.ChoiceField(
        required=False,
        choices=CHOICES,
        widget=forms.Select(
            attrs={
                "class":"select-categoria",
                "style":"width: 100%"
            }
        )
    )

    especialidade = forms.ChoiceField(
        required=False,
        widget=forms.Select(
            attrs={
                "class":"select-especialidade",
                "style":"width: 100%"
            }
        )
    )

class AvaliarForms(forms.Form):
    horario_entrada = forms.DateTimeField(
        required=True,
        widget=forms.DateTimeInput(
            attrs={
                "id":"horario-entrada",
                "type": "datetime-local"
            }
    ))

    horario_atendimento = forms.DateTimeField(
        required=True,
        widget=forms.DateTimeInput(
            attrs={
                "id":"horario-atendimento",
                "type": "datetime-local"
            }
    ))