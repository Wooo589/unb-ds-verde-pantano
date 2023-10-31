from django.db.models.signals import post_save, pre_delete
from django.dispatch import receiver
from django.db.models import Avg
from .models import *
from datetime import timedelta

@receiver(post_save, sender=Avaliacao)
def update_time(sender, instance, created, **kwargs):
    if created:
        hospital = instance.hospital
        risco = instance.risco
        duracao = Avaliacao.objects.filter(hospital=hospital).filter(risco=risco).aggregate(Avg("duracao", default=timedelta(minutes=0)))
        minutos = round(duracao["duracao__avg"].seconds / 60)

        if risco == "EMERGENTE":
            hospital.tempo_emergente = minutos
            hospital.save()

        if risco == "MUITO_URGENTE":
            hospital.tempo_muito_urgente = minutos
            hospital.save()

        if risco == "URGENTE":
            hospital.tempo_urgente = minutos
            hospital.save()

        if risco == "POUCO_URGENTE":
            hospital.tempo_pouco_urgente = minutos
            hospital.save()

        if risco == "NAO_URGENTE":
            hospital.tempo_nao_urgente = minutos
            hospital.save()
