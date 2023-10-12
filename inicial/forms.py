from django import forms

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