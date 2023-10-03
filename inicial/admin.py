from django.contrib import admin
from inicial.models import Hospital

class ListandoHospitais(admin.ModelAdmin):
    list_display = ("id", "nome", "cep", "categoria")
    ordering = ["id"]
    search_fields = ("nome",)
    list_filter = ("categoria",)
    list_per_page = 10

admin.site.register(Hospital, ListandoHospitais)