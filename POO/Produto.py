from IProduto import IProduto

class Produto(IProduto):
    def __init__(self, nome, tipo, quantidade, limite_minimo):
        self.nome = nome
        self.tipo = tipo
        self.quantidade = quantidade
        self.limite_minimo = limite_minimo

    def verificar_estoque_baixo(self):
        return self.quantidade <= self.limite_minimo

    def to_dict(self):
        return {
            "nome": self.nome,
            "tipo": self.tipo,
            "quantidade": self.quantidade,
            "limite_minimo": self.limite_minimo
        }

    def __str__(self):
        return f"{self.nome} ({self.tipo}): {self.quantidade} unidades (limite mínimo: {self.limite_minimo})"