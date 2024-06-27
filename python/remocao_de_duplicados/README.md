# Desafio
Em muitos conjuntos de dados, valores duplicados podem distorcer análises e resultados. 
Dada uma lista de números, você deve remover os valores duplicados e retornar uma lista com valores únicos.
<br/>Documentação: <link>https://docs.python.org/pt-br/3/tutorial/datastructures.html</link>

# Entrada
Uma lista de números que pode conter duplicatas. Por exemplo: 1, 2, 2, 3, 4, 4, 5.

# Saída
Uma nova lista contendo apenas valores únicos. Por exemplo: [1, 2, 3, 4, 5]. 
O que fazer: Criar um conjunto a partir da lista para remover duplicatas e depois converter de volta para uma lista.

# Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. 
Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada	| Saída |
| - | - |
| 1, 2, 3, 4, 4, 4	| [1, 2, 3, 4] |
| 30, 31, 32, 30, 31, 31 | [32, 30, 31] |
| 1, 2, 2, 3, 4, 4, 5 | [1, 2, 3, 4, 5] |

## Explicação do Código:
* <b>Conversão para Lista:</b> Utilizamos int para converter os elementos da lista de strings para inteiros.
* <b>Remoção de Duplicatas:</b> Utilizamos a função set para criar um conjunto, o que automaticamente remove duplicatas, e depois convertemos esse conjunto de volta para uma lista.
