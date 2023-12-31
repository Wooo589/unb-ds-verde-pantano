# Generated by Django 4.2.5 on 2023-11-26 00:18

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
        ('inicial', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Dados',
            fields=[
                ('usuario', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('nome', models.CharField(default='Não informado', max_length=200)),
                ('idade', models.IntegerField(default=0)),
                ('sexo', models.CharField(choices=[('femininino', 'Feminino'), ('masculino', 'Masculino'), ('outro', 'Outro'), ('na', 'Não informado')], default='na', max_length=20)),
                ('profissao', models.CharField(default='Não informada', max_length=200)),
                ('endereco', models.CharField(default='Não informado', max_length=200)),
                ('telefone', models.CharField(default='Não informado', max_length=20)),
                ('peso', models.DecimalField(decimal_places=2, default=0, max_digits=5)),
            ],
            options={
                'verbose_name': 'dados',
                'verbose_name_plural': 'Dados',
            },
        ),
    ]
