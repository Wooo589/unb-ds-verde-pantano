# Generated by Django 4.2.5 on 2023-10-01 21:30

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('inicial', '0002_hospital_categoria'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='hospital',
            table='hospitais',
        ),
    ]