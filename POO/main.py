from Persistencia import salvar_estoque, carregar_estoque
from Relatorio import Relatorio

def menu():
    print("\n--- Sistema de Controle de Estoque ---")
    print("1. Cadastrar Produto")
    print("2. Remover Produto")
    print("3. Alterar quantidade de Produto")
    print("4. Listar Produtos")
    print("5. Verificar Estoque baixo")
    print("6. Gerar Relatório")
    print("7. Salvar e Sair")
    return input("Escolha uma opção: ")

def main():
    estoque = carregar_estoque()

    while True:
        opcao = menu()

        if opcao == "1":
            nome = input("Nome do produto: ")
            tipo = input("Tipo do produto: ")
            quantidade = int(input("Quantidade: "))
            limite_minimo = int(input("Limite mínimo: "))
            estoque.cadastrar_produto(nome, tipo, quantidade, limite_minimo)

        elif opcao == "2":
            nome = input("Nome do produto a ser removido: ")
            estoque.remover_produto(nome)

        elif opcao == "3":
            nome = input("Nome do produto: ")
            nova_quantidade = int(input("Nova quantidade: "))
            estoque.alterar_produto(nome, nova_quantidade)

        elif opcao == "4":
            estoque.listar_produtos()

        elif opcao == "5":
            produtos_baixos = estoque.verificar_estoque_baixo()
            if produtos_baixos:
                print("Atenção! Os seguintes produtos estão com estoque baixo:")
                for produto in produtos_baixos:
                    print(produto)
            else:
                print("Nenhum produto com estoque baixo.")

        elif opcao == "6":
            Relatorio.gerar_relatorio(estoque)

        elif opcao == "7":
            salvar_estoque(estoque)
            print("Saindo...")
            break

        else:
            print("Opção inválida. Tente novamente.")

if __name__ == "__main__":
    main()