import pandas as pd
from django.core.management.base import BaseCommand, CommandError
from inicial.models import Hospital

class Command(BaseCommand):

    help = "Imports .csv file to Hospital"

    def add_arguments(self, parser):
        parser.add_argument('path')
    
    def handle(self, *args, **options):
        df = pd.read_csv(options['path'])
        df = df.fillna('')

        for i in range(0, 13):

            if df['NO_COMPLEMENTO'].iloc[i] == '':
                self.stdout.write(self.style.SUCCESS(f"{df['NO_LOGRADOURO'].iloc[i]}" + f" {df['NU_ENDERECO'].iloc[i]}"))
            else:
                self.stdout.write(self.style.SUCCESS(f"{df['NO_LOGRADOURO'].iloc[i]}" + f" {df['NO_COMPLEMENTO'].iloc[i]}" + f" {df['NU_ENDERECO'].iloc[i]}"))

        