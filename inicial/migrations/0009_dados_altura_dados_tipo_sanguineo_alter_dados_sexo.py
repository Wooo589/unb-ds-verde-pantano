# Generated by Django 4.2.5 on 2023-11-26 18:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inicial', '0008_alter_avaliacao_numero'),
    ]

    operations = [
        migrations.AddField(
            model_name='dados',
            name='altura',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=3),
        ),
        migrations.AddField(
            model_name='dados',
            name='tipo_sanguineo',
            field=models.CharField(choices=[('A+', 'A+'), ('A-', 'A-'), ('B+', 'B+'), ('B-', 'B-'), ('AB+', 'AB+'), ('AB-', 'AB-'), ('O+', 'O+'), ('O-', 'O-'), ('na', 'Não informado')], default='na', max_length=4),
        ),
        migrations.AlterField(
            model_name='dados',
            name='sexo',
            field=models.CharField(choices=[('femininino', 'Feminino'), ('masculino', 'Masculino'), ('na', 'Não informado')], default='na', max_length=20),
        ),
    ]