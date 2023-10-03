from django.db import models

class Hospital(models.Model):

    CATEGORIAS = [
        ("PUBLICO", "Público"),
        ("PRIVADO", "Privado")
    ]

    nome = models.CharField(max_length=100, null=False, blank=False)
    endereco = models.CharField(max_length=150, null=False, blank=False)
    cep = models.CharField(max_length=20, null=False, blank=False)
    categoria = models.CharField(max_length=100, choices=CATEGORIAS, default='')

    def __str__(self):
        return self.nome
    