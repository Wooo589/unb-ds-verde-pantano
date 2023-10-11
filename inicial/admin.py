from django.contrib import admin
from inicial.models import Hospital

class ListandoHospitais(admin.ModelAdmin):
    list_display = ("cnes", "nome", "uf", "categoria")
    ordering = ["nome",]
    search_fields = ("nome",)
    list_filter = ("categoria", "uf")
    list_per_page = 10

admin.site.register(Hospital, ListandoHospitais)