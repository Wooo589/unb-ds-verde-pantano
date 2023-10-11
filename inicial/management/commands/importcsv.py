import pandas as pd
from django.core.management.base import BaseCommand, CommandError
from inicial.models import Hospital

class Command(BaseCommand):

    help = "Imports .csv file to Hospital"

    def add_arguments(self, parser):
        parser.add_argument('path')
        parser.add_argument('uf')
        parser.add_argument(
            '--display',
            action='store_true'
        )
    
    def handle(self, *args, **options):
        df = pd.read_csv(options['path'])
        df = df.fillna('')

        if options['uf']:
            df = df[df["UF"] == options['uf']]
            df = df.reset_index(drop=True)

        df = df[df["COMP"] == df["COMP"].max()]

        if options['display']:
            entries = 0

            print(df['COMP'].value_counts())

            for i in range(0, len(df.index)):

                if df['NO_COMPLEMENTO'].iloc[i] == '':
                    self.stdout.write(self.style.SUCCESS(f"{df['NO_LOGRADOURO'].iloc[i]}" + f" {df['NU_ENDERECO'].iloc[i]}" + f" - {df['NO_BAIRRO'].iloc[i]}"))
                else:
                    self.stdout.write(self.style.SUCCESS(f"{df['NO_LOGRADOURO'].iloc[i]}" + f" {df['NO_COMPLEMENTO'].iloc[i]}" + f" {df['NU_ENDERECO'].iloc[i]}" + f" - {df['NO_BAIRRO'].iloc[i]}"))
                
                entries += 1

            self.stdout.write(self.style.SUCCESS(f"Entries: {entries}"))

        else:
            created = 0
            updated = 0

            for i in range(0, len(df.index)):

                if df['NO_COMPLEMENTO'].iloc[i] == '':
                    endereco = f"{df['NO_LOGRADOURO'].iloc[i]}" + f" {df['NU_ENDERECO'].iloc[i]}" + f" - {df['NO_BAIRRO'].iloc[i]}"
                else:
                    endereco = f"{df['NO_LOGRADOURO'].iloc[i]}" + f" {df['NO_COMPLEMENTO'].iloc[i]}" + f" {df['NU_ENDERECO'].iloc[i]}" + f" - {df['NO_BAIRRO'].iloc[i]}"

                cnes = f"{df['CNES'].iloc[i]}".zfill(7)
                nome = df['NOME_ESTABELECIMENTO'].iloc[i]
                cep = df['CO_CEP'].iloc[i]
                categoria = df['DESC_NATUREZA_JURIDICA'].iloc[i]
                uf = df['UF'].iloc[i]
                municipio = df["MUNICIPIO"].iloc[i]
                telefone = df["NU_TELEFONE"].iloc[i]
                email = df["NO_EMAIL"].iloc[i]

                obj, create = Hospital.objects.update_or_create(
                    cnes=cnes,
                    nome=nome,
                    endereço=endereco,
                    cep=cep,
                    categoria=categoria,
                    uf=uf,
                    municipio=municipio,
                    telefone=telefone,
                    email=email              
                )

                if create == True:
                    created += 1

                else:
                    updated += 1

            self.stdout.write(self.style.SUCCESS(f"Created: {created}"))
            self.stdout.write(self.style.SUCCESS(f"Updated: {updated}"))