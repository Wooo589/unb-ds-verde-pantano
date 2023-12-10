# Generated by Django 4.2.5 on 2023-12-04 17:06

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('inicial', '0023_hospital_atualizacao'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='dados',
            name='idade',
        ),
        migrations.RemoveField(
            model_name='dados',
            name='nome',
        ),
        migrations.RemoveField(
            model_name='dados',
            name='sexo',
        ),
        migrations.AddField(
            model_name='dados',
            name='data_nascimento',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='dados',
            name='genero',
            field=models.CharField(choices=[('na', 'Não informado'), ('homem-cis', 'Homem cis'), ('homem-trans', 'Homem trans'), ('mulher-cis', 'Mulher cis'), ('mulher-trans', 'Mulher trans'), ('nao-binario', 'Não-binário'), ('outro', 'Outro')], default='na', max_length=20),
        ),
    ]
