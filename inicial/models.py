from django.db import models
from datetime import date, timedelta

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

    ATENDIMENTO = [
        ("SIM", "Sim"),
        ["NAO", "Não"]
    ]

    RISCO = [
        ("EMERGENTE", "Emergente"),
        ("MUITO_URGENTE", "Muito Urgente"),
        ("URGENTE", "Urgente"),
        ("POUCO_URGENTE", "Pouco Urgente"),
        ("NAO_URGENTE", "Não Urgente")
    ]

    usuario = models.CharField(max_length=100, null=False, blank=False, default="")
    data = models.DateField(null=False, blank=False, default=date.today())
    hospital = models.ForeignKey(Hospital, on_delete=models.CASCADE)
    atendimento = models.CharField(max_length=100, null=False, blank=False, default="SIM", choices=ATENDIMENTO)
    risco = models.CharField(max_length=100, null=False, blank=False, default="NAO_URGENTE", choices=RISCO)
    duracao = models.DurationField(null=False, blank=False, default=timedelta(minutes=30))
    avaliacao = models.IntegerField(null=False, blank=False, default=3)
    observacao = models.TextField(null=False, blank=False, default="")

    def __str__(self):
        return self.risco