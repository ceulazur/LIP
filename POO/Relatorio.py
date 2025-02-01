class Relatorio:
    @staticmethod
    def gerar_relatorio(estoque, arquivo="relatorio.txt"):
        produtos_baixos = estoque.verificar_estoque_baixo()
        with open(arquivo, "w") as f:
            f.write("--- Relatório de Estoque ---\n")
            f.write("Produtos no estoque:\n")
            for produto in estoque.produtos:
                f.write(f"{produto}\n")
            f.write("\nProdutos com estoque baixo:\n")
            if produtos_baixos:
                for produto in produtos_baixos:
                    f.write(f"{produto}\n")
            else:
                f.write("Nenhum produto com estoque baixo.\n")
        print(f"Relatório salvo em '{arquivo}'.")