import json

from Estoque import Estoque

def salvar_estoque(estoque, arquivo="estoque.json"):
    with open(arquivo, "w") as f:
        json.dump(estoque.to_dict(), f, indent=4)
    print("Estoque salvo com sucesso!")

def carregar_estoque(arquivo="estoque.json"):
    try:
        with open(arquivo, "r") as f:
            data = json.load(f)
            return Estoque.from_dict(data)
    except FileNotFoundError:
        print("Arquivo de estoque não encontrado. Criando novo estoque.")
        return Estoque()