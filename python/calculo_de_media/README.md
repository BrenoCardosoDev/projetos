# Desafio
Calcular a média é uma das operações estatísticas mais básicas e úteis para resumir um conjunto de dados. 
Dada uma lista de números, você deve calcular a média aritmética desses números.

Documentação: <link>https://docs.python.org/pt-br/dev/library/functions.html</link>

# Entrada
Uma lista de números. Por exemplo:10, 20, 30, 40, 50.

# Saída
Um número representando a média dos números na lista. Por exemplo: 30.0. 
O que fazer: Somar todos os números e dividir pela quantidade de elementos na lista.

# Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. 
Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada	| Saída |
| - | - |
| 8.8, 5.0, 7.5	| 7.1 |
| 3.2, 7.0, 9.0 | 6.4 |
| 10, 20, 30, 40, 50 | 30.0 |

## Explicação do Código: 
* <b>Conversão para Lista:</b> Utilizamos float para converter os elementos da lista de strings para números de ponto flutuante.
* <b>Cálculo da Soma:</b> Utilizamos a função sum para calcular a soma de todos os números na lista.
* <b>Cálculo da Quantidade:</b> Utilizamos len para calcular o número de elementos na lista.
* <b>Cálculo da Média:</b> Dividimos a soma pela quantidade de elementos para obter a média.
