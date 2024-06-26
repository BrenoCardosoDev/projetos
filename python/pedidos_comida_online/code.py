def main():
    n = int(input())
 
    total = 0
 
    for i in range(1, n + 1):
        pedido = input().split(" ")
        nome = pedido[0]
        valor = float(pedido[1])
        total += valor
 
 
  #//TODO: Criar as condições para aplicar o cupom de desconto (10% ou 20%).
    cupom = input()
    if (cupom == '10%'):
      desconto = 0.9
    elif (cupom == '20%'):
      desconto = 0.8
    valorTotal = total * desconto
    print(f'Valor total: {valorTotal:.2f}')
 
if __name__ == "__main__":
    main()
