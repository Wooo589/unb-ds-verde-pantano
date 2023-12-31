# Generated by Django 4.2.5 on 2023-12-01 21:26

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('inicial', '0017_alter_cirurgia_data'),
    ]

    operations = [
        migrations.CreateModel(
            name='Internacao',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('internacao', models.CharField(default='N/A', max_length=200)),
                ('tempo', models.IntegerField(default=0)),
                ('data', models.DateField(default=django.utils.timezone.now)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='internacoes', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
