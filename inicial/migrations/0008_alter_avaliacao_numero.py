# Generated by Django 4.2.5 on 2023-11-26 01:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inicial', '0007_avaliacao_numero'),
    ]

    operations = [
        migrations.AlterField(
            model_name='avaliacao',
            name='numero',
            field=models.IntegerField(default=1),
        ),
    ]
