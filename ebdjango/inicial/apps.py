from django.apps import AppConfig

class InicialConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'inicial'
    verbose_name = "MedConnect"

    def ready(self):
        import inicial.signals
