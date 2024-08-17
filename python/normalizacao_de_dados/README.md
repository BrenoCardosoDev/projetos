# Desafio
Você foi contratado para desenvolver um sistema que normaliza dados de um conjunto de registros financeiros para facilitar a análise. 
A normalização Min-Max (Escalonamento) é especialmente útil para trazer todos os valores para uma mesma escala, facilitando a comparação entre diferentes registros. 
Seu objetivo é escrever um programa que receba uma lista de valores financeiros e retorne esses valores normalizados no intervalo [0, 1] 
usando a técnica de normalização Min-Max.

# Entrada
A entrada do seu programa deve ser uma lista de números reais que representam os valores financeiros. Por exemplo: [1500.0, 2000.0, 2500.0, 3000.0, 3500.0]

# Saída
A saída deve ser uma lista de números reais normalizados no intervalo [0, 1]. 
Cada valor deve ser transformado de acordo com a fórmula de normalização Min-Max: x_norm = (x - x_min) / (x_max - x_min)

# Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. 
Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada	| Saída |
| - | - |
| 1500.0, 2000.0, 2500.0, 3000.0, 3500.0	| [0.0, 0.25, 0.5, 0.75, 1.0] |
| 1000.0, 1500.0, 2000.0 | [0.0, 0.5, 1.0] |
| 1200.0, 800.0, 1000.0, 900.0 | [1.0, 0.0, 0.5, 0.25] |
