# Desafio
Agrupar dados por faixas etárias é uma maneira comum de categorizar e analisar dados demográficos. 
Dada uma lista de idades, você deve agrupar as idades em faixas etárias e contar quantas pessoas há em cada faixa.

# Entrada
Uma lista de idades (por exemplo: 15, 22, 34, 45, 52, 67, 80).

# Saída
Um dicionário onde as chaves são as faixas etárias e os valores são as contagens de pessoas em cada faixa 
(por exemplo: {'0-18': 1, '19-35': 2, '36-50': 1, '51-70': 2, '71+': 1}). 
O que fazer: Definir as faixas etárias e iterar pela lista de idades, incrementando a contagem apropriada para cada faixa.

# Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. 
Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada	| Saída |
| - | - |
| 15, 22, 34, 45, 52, 67, 80	| {'0-18': 1, '19-35': 2, '36-50': 1, '51-70': 2, '71+': 1} |
| 18, 22, 27, 32, 38, 42, 49	| {'0-18': 1, '19-35': 3, '36-50': 3, '51-70': 0, '71+': 0} |
| 21, 29, 34, 39, 45, 52, 59	| {'0-18': 0, '19-35': 3, '36-50': 2, '51-70': 2, '71+': 0} |
