# Generated by Django 4.2.5 on 2023-11-26 00:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('inicial', '0002_dados'),
    ]

    operations = [
        migrations.RenameField(
            model_name='hospital',
            old_name='endereco',
            new_name='endereço',
        ),
    ]
