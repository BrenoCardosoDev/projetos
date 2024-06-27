# Desafio
Em análise de dados, a identificação de valores ausentes (nulos) é crucial, pois pode afetar a integridade e a qualidade dos dados. 
Dada uma lista de valores, você deve contar quantos desses valores são None, que representam dados ausentes.
<br/>Documentação: https://docs.python.org/pt-br/3/tutorial/datastructures.html

# Entrada
Uma lista de valores númericos positivos e valores None. 
Por exemplo: 1, None, 2, None, 3, None .

# Saída
Um número inteiro que indica quantos valores nulos estão presentes na lista. 
Por exemplo: 3. O que fazer: Conte quantos elementos são None usando a função count do Python.

# Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. 
Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada	| Saída |
| - | - |
| 1, 2, None, 5, 6	| 1 |
| 10, 15, None, 20, 40 None, 1 | 2 |
| None, None, None, None, None | 5 |

## Explicação do Código:
* <b>Entrada dos Dados:</b> Usamos input para receber a lista e split para separá-la em elementos individuais, removendo espaços em branco com strip.
* <b>Conversão para Lista:</b> Utilizamos split para separar a string em elementos. Usamos strip e isdigit para converter números para int e substituímos não-números por None.
* <b>Contagem de Nulos:</b> Podemos contar quantos elementos são None usando a função count.	
