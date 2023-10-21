from django.db import models
from datetime import timedelta

class Hospital(models.Model):

    CATEGORIAS = [
        ("HOSPITAL_PUBLICO", "Público"),
        ("HOSPITAL_PRIVADO", "Privado"),
        ("HOSPITAL_FILANTROPICO", "Filantrópico")
    ]

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

    cnes = models.CharField(max_length=7, null=False, blank=False, primary_key=True, default="0000000", editable=False)
    nome = models.CharField(max_length=100, null=False, blank=False)
    endereço = models.CharField(max_length=150, null=False, blank=False)
    cep = models.CharField(max_length=20, null=False, blank=False)
    categoria = models.CharField(max_length=100, choices=CATEGORIAS, default='')
    uf = models.CharField(max_length=100, choices=UFS, default='')
    municipio = models.CharField(max_length=150,  default='')
    telefone = models.CharField(max_length=100, null=False, blank=False, default="Não informado")
    email = models.CharField(max_length=100, null=False, blank=False, default="Não informado")

    def __str__(self):
        return self.nome
    
class Avaliacao(models.Model):

    hospital = models.ForeignKey(Hospital, on_delete=models.CASCADE)
    endereco_correto = models.BooleanField(null=False, blank=False, default=True)
    novo_endereco = models.CharField(max_length=150, null=False, blank=False, default="*")
    telefone_correto = models.BooleanField(null=False, blank=False, default=True)
    novo_telefone = models.CharField(max_length=100, null=False, blank=False, default="*")
    duracao = models.DurationField(null=False, blank=False, default=timedelta(minutes=30))
    avaliacao = models.IntegerField(null=False, blank=False, default=1)

    def __str__(self):
        return self.hospital
    