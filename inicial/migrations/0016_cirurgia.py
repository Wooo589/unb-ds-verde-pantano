# Generated by Django 4.2.5 on 2023-12-01 19:40

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('inicial', '0015_diagnostico'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cirurgia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cirurgia', models.CharField(default='N/A', max_length=200)),
                ('data', models.DateTimeField(default=django.utils.timezone.now)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='cirurgias', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
