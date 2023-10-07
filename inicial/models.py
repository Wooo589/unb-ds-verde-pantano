from django.db import models

class Hospital(models.Model):

    CATEGORIAS = [
        ("PUBLICO", "Público"),
        ("PRIVADO", "Privado")
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

    nome = models.CharField(max_length=100, null=False, blank=False)
    endereco = models.CharField(max_length=150, null=False, blank=False)
    cep = models.CharField(max_length=20, null=False, blank=False)
    categoria = models.CharField(max_length=100, choices=CATEGORIAS, default='')
    uf = models.CharField(max_length=100, choices=UFS, default='')

    def __str__(self):
        return self.nome
    