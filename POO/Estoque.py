from Produto import Produto

class Estoque:
    def __init__(self):
        self.produtos = []

    def cadastrar_produto(self, nome, tipo, quantidade, limite_minimo):
        produto = Produto(nome, tipo, quantidade, limite_minimo)
        self.produtos.append(produto)
        print(f"Produto '{nome}' cadastrado com sucesso!")

    def remover_produto(self, nome):
        for produto in self.produtos:
            if produto.nome == nome:
                self.produtos.remove(produto)
                print(f"Produto '{nome}' removido com sucesso!")
                return
        print(f"Produto '{nome}' não encontrado.")

    def alterar_produto(self, nome, nova_quantidade):
        for produto in self.produtos:
            if produto.nome == nome:
                produto.quantidade = nova_quantidade
                print(f"Quantidade do produto '{nome}' alterada para {nova_quantidade}.")
                return
        print(f"Produto '{nome}' não encontrado.")

    def listar_produtos(self):
        if not self.produtos:
            print("Nenhum produto cadastrado.")
        else:
            for produto in self.produtos:
                print(produto)

    def verificar_estoque_baixo(self):
        produtos_baixos = [produto for produto in self.produtos if produto.verificar_estoque_baixo()]
        return produtos_baixos

    def to_dict(self):
        return [produto.to_dict() for produto in self.produtos]

    @classmethod
    def from_dict(cls, data):
        estoque = cls()
        estoque.produtos = [Produto(**produto) for produto in data]
        return estoque