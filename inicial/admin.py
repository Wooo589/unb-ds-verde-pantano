from django.contrib import admin
from inicial.models import Hospital

class ListandoHospitais(admin.ModelAdmin):
    list_display = ("id", "nome", "uf", "categoria")
    ordering = ["id"]
    search_fields = ("nome",)
    list_filter = ("categoria", "uf")
    list_per_page = 10

admin.site.register(Hospital, ListandoHospitais)