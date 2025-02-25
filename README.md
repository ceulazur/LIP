# LIP
### Equipe:
* Jhordanna Gonçalves de Oliveira, 536646
* Ana Beatriz de Sousa Martins, 553026
* Ricardo Andrade Chagas Cavalcante, 555596


###  Especificações: 
 ### 1. *Pasta de POO:* ORIENTAÇÃO A OBJETOS
#### Cenário:
A UFC-Quixadá não tem um sistema de controle de estoque. Atualmente, há diversos tiposde materiais em uso no Campus. Contudo, estamos particularmente interessados nos seguintes: materiais de limpeza, materiais de uso por professores, materiais de uso das secretarias e materiais de consumo. Cada tipo de material tem vários produtos associados, por exemplo, vassoura (material de limpeza), sabão (material de limpeza), pincel (material de uso por professores), clipes (material de uso das secretarias) e água (material de consumo). A Direção gostaria de guardar e ter controle das quantidades de produto por tipo de material, inclusive ser avisado quando houver poucos produtos. O sistema deve cadastrar, remover e alterar produtos. O sistema também deve emitir relatórios sobre quantidades e movimentações dos produtos.
Sua tarefa é ajudar a UFC-Quixadá. Você deve implementar um sistema de controle de
estoque utilizando alguma linguagem orientada a objetos. Não precisa utilizar banco de dados. Também não precisa criar uma interface gráfica.

### 2. *Pasta de Funcional*: LINGUAGEM FUNCIONAL 
#### Cenário:
 Você pode utilizar Python (de modo funcional) ou qualquer outra linguagem funcional para resolver as seguintes questões. Importante: é expressamente proibido o uso de instruções de repetição, atribuições de variáveis para usos futuros e variáveis auxiliares. O seu código deve ser o mais funcional possível. Ademais, o uso da instrução if/else é liberado.
1. Faça um programa que recebe uma lista de números inteiros e imprime o produto dos números.
2. Faça um programa que, dado uma lista numérica, imprima uma 2-tupla, tal que contenha o maior valor da lista, bem como sua posição relativa.
 3. Faça um programa que recebe uma lista numérica L e um dado número p e apaga todas as ocorrências de p em L.
4. Faça um programa que recebe uma lista de inteiros e imprime o maior e o menor elemento.
5. O fatorial duplo de um número natural n é o produto de todos os números de 1 (ou 2) até n, contados de 2 em 2. Por exemplo, o fatorial duplo de 8 é 8×6×4×2 = 384, e o fatorial duplo de 7 é 7×5×3×1 = 105. Faça um programa que recebe um número e imprime seu fatorial duplo


     OBS.: A entrada de todas as questões é pelo teclado (entrada padrão). A única coisa impressa na tela deve ser o resultado. Qualquer impressão diferente do resultado, como por exemplo, “digite a entrada” ou “a saída é” será considerada resposta errada. Novamente, imprima apenas o resultado.

### 3. *Pasta de Prolog*: PROGRAMAÇÃO LÓGICA
#### 1. Utilizando Prolog implemente um grafo simples (por definição, não orientado), no qual se possa fazer perguntas sobre adjacências, graus e caminhos. Por exemplo:
   
         • ?- adjacente( 0 , 1 ). → O vértice 0 é adjacente ao vértice 1?

        • ?- caminho( [0 , 1 , 2] ). → Os vértices 0,1,2 formam um caminho?

        • ?- grau( 1 , W ). → Qual o grau do vértice 1?

##### local:
         Pasta questão 1
   #### 2. Implemente um programa em Prolog com os seguintes predicados genéricos sobre listas (sem utilizar os correspondentes predicados do módulo lists do SWI-Prolog:

        • adiciona( X , L1 , L2 ) – onde L2 é a lista que contém o elemento X e a lista L1.

        • apaga( X , L1 , L2 ) – onde L2 é a lista L1 sem o elemento X.

        • concatena( L1 , L2 , L3 ) – onde L3 é resultado da junção das listas L2 e L1.

        • membro( X , L ) – que é verdadeiro se X pertencer à lista L.

        • comprimento( X , L ) – onde X é o número de elementos da lista L.


##### local:
     Pasta  questão 2
#### 3. Implemente um programa em Prolog sobre a seguinte família: 

  Pouco se sabe da história passada da família Pinheiro. Existem alguns registos antigos que indicam que o casal José e Maria criou dois filhos, o João e a Ana. Que a Ana teve duas filhas, a Helena e a Joana, também parece ser verdade, segundo os mesmos registos. Além disso, o Mário é filho do João, pois muito se orgulha ele disso. Estranho também, foi constatar que o Carlos nasceu da relação entre a Helena, muito formosa, e o Mário. 

a) Utilizando o predicado progenitor( X , Y ) ( X é progenitor de Y ), represente em Prolog todos os progenitores da família Pinheiro.

b) Represente em Prolog as relações: sexo (masculino ou feminino), irmã, irmão, descendente, mãe, pai, avô, avó, tio, tia, primo e prima.

##### local:
    Pasta questão 3 - atualizada  


