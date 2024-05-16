# Desafio
Você foi contratado para desenvolver um sistema que armazena informações dos pedidos de comida online realizados por um cliente.  
O sistema deve permitir ao cliente inserir novos pedidos, escolher um cupom de desconto (10% ou 20%) e exibir o valor total de todos os pedidos realizados até o momento, com o desconto aplicado.

# Entrada
A entrada é composta por:

* Uma linha com um número inteiro n representando a quantidade de pedidos que o usuário deseja inserir;
* n linhas, cada uma contendo uma string com o nome do pedido e um valor em ponto flutuante separados por espaço. O nome do pedido não contém espaços em branco;
* Uma linha contendo o cupom de desconto escolhido (10% ou 20%).

# Saída
O programa deve exibir uma única linha contendo o valor total de todos os pedidos com o desconto aplicado, no seguinte formato:

* `Valor total: XX.YY`, onde "XX.YY" é a soma de todos os pedidos com desconto em formato de duas casas decimais após a vírgula.

# Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas.  
Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada	| Saída |
| - | - |
| 3<br/> Pizza 29.90<br/> Hambúrguer 15.50<br/> Refrigerante 7.00<br/> 10%	| Valor total: 47.16 |
| 2<br/> Salada 12.00<br/> Suco 10.50<br/> 20% | Valor total: 18.00 |
| 4<br/> X-Burger 19.99<br/> Salada 29.99<br/> Sushi 61.00<br/> Pudim 10.00<br/> 20% |	Valor total: 96.78 |
