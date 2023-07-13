'''
## Autor: Breno Cardoso

## Desafio: Criar um sistema bancário com as operações de sacar, depositar e visualizar extrato.

## Regras de Negócio:

  Sistema: 
  * Com a linguagem Python.

  Operação de Depósito:
  * Apenas valores positivos;
  * Não precisa identificar número de agência;
  * Não precisa identificar conta bancária;
  * Todos os depósitos devem ser armazenados em uma variável;
  * Disponibilizar os depósitos em extrato.

  Operação de Saque:
  * Limite de 3 saques por dia;
  * Limite de R\$500,00 por saque;
  * Exibir mensagem quando não houver saldo em conta: "Não é possível sacar o dinheiro por falta de saldo!";
  * Todos os saques devem ser armazenados em uma variável;
  * Disponibilizar os saques em extrato.

  Operação de Extrato:
  * Listar todos os depósitos;
  * Listar todos os saques;
  * Exibir saldo atual;
  * Se o extrato estiver em branco, exibir mensagem: "Não foram realizadas movimentações!";
  * Exibir valores no formato R$ XXX.XX.
'''

MENU = '''
------------------------
    SISTEMA BANCÁRIO
------------------------
[1] Depósito
[2] Saque
[3] Extrato
[0] Sair
------------------------
'''
print(MENU)

deposito = 0
saque = 0
saldo = 0
extrato = ''
numero_saques = 0
SAQUE_LIMITE = 500
NUMERO_SAQUES_LIMITE = 3

while True:
  print()
  operacao = input('Digite uma operação: ')
  
  if (operacao == '1'):
    deposito = float(input('Valor do depósito : R$ '))

    if (deposito > 0):
      saldo += deposito
      extrato += f'Depósito: R$ {deposito:_.2f}\n'.replace('.',',').replace('_','.')
      print('Valor depositado com sucesso!')

    else:
      print('Valor incorreto!')
      continue

  elif (operacao == '2'):
    saque = float(input('Valor do saque: R$ '))

    if (saldo < saque):
      print('Saldo insuficiente!')

    elif (saldo >= saque):
      if (saque > SAQUE_LIMITE):
        print('Valor excede o limite de saque.')
      elif (saque > 0):
        if (numero_saques<NUMERO_SAQUES_LIMITE):
          saldo -= saque
          extrato += f'Saque: R$ {saque:_.2f}\n'.replace('.',',').replace('_','.')
          print('Valor sacado com sucesso!')
          numero_saques+=1
        else:
          print('Limite de 3 saques por dia.')
      else:
        print('Valor incorreto!')
        continue

  elif (operacao == '3'):
    print()
    print('-'*30)
    print( 'EXTRATO'.center(30, ' '))
    print('-'*30)
    print('Não houve movimentação!' if not extrato else extrato)
    print(f'Saldo: R$ {saldo:_.2f}'.replace('.',',').replace('_','.'))
    print('-'*30)

  elif (operacao == '0'):
    print('Finalizado!')
    print()
    break

  else:
    print('Digite corretamente!')
    continue
