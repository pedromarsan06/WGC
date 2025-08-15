#!/usr/bin/env python3
import sys
from os import system

# Dicionário interno com URLs apontando para o seu GitHub Pages
urls = {
    "tgit": "https://pedromarsan06.github.io/tgit/install.sh",
    "build": "https://pedromarsan06.github.io/tgit/main.py"
}

# Funções associadas a cada parâmetro
def dowload(name):
    if name not in urls:
        print(f"Nome inválido para download: {name}")
        print(f"Opções válidas: {', '.join(urls.keys())}")
        sys.exit(1)
    url = urls[name]
    system(f"curl -O {url}")
    print(f"Download concluído: {url}")

def git(_=None):
    system("pkg install git -y")
    print("Git instalado!")

# Dicionário de parâmetros e funções
parametros = {
    '-d': dowload,
    '-git': git
}

# Verifica argumentos
if len(sys.argv) < 2:
    print("Uso: main.py <parâmetro> [nome_para_download]")
    print("Parâmetros válidos: -d, -git")
    sys.exit(1)

param = sys.argv[1]
arg = sys.argv[2] if len(sys.argv) > 2 else None

if param not in parametros:
    print(f"Parâmetro inválido: {param}")
    print("Parâmetros válidos: -d, -git")
    sys.exit(1)

# Chama a função correspondente
parametros[param](arg)
