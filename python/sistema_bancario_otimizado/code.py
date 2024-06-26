import textwrap


def menu():
  MENU = '''
  ------------------------------
         SISTEMA BANCÁRIO
  ------------------------------
  [1] Depósito
  [2] Saque
  [3] Extrato
  [4] Novo Usuário
  [5] Nova Conta
  [6] Listar Contas
  [0] Sair
  ------------------------------

  Digite uma operação: '''
  return input(textwrap.dedent(MENU))


def depositar(saldo, deposito, extrato, /):

  if (deposito > 0):
    saldo += deposito
    extrato += f'Depósito: R$ {deposito:_.2f}\n'.replace('.',',').replace('_','.')
    print('Valor depositado com sucesso!')

  else:
    print('Valor incorreto!')
  
  return saldo, extrato


def sacar(*, saldo, saque, extrato, saque_limite, numero_saques, numero_saques_limite):

  excedeu_saldo = saque > saldo
  excedeu_limite_saque = saque > saque_limite
  excedeu_numero_saques = numero_saques >= numero_saques_limite

  if excedeu_saldo:
    print('Saldo insuficiente!')

  elif excedeu_limite_saque:
    print('Valor excede o limite de saque!')

  elif excedeu_numero_saques:
    print('Limite de 3 saques por dia!')
  
  elif saque > 0:
    saldo -= saque
    extrato += f'Saque: R$ {saque:_.2f}\n'.replace('.',',').replace('_','.')
    numero_saques += 1
    print('Valor sacado com sucesso!')
     
  else:
    print('Valor incorreto!')

  return saldo, extrato, numero_saques


def exibir_extrato(saldo, /, *, extrato):
  print()
  print('-'*30)
  print( 'EXTRATO'.center(30, ' '))
  print('-'*30)
  print('Não houve movimentação!\n' if not extrato else extrato)
  print(f'Saldo: R$ {saldo:_.2f}'.replace('.',',').replace('_','.'))
  print('-'*30)


def criar_usuario(usuarios):
  cpf = input('Informe o CPF (somente números): ')
  usuario = filtrar_usuario(cpf, usuarios)
  
  if usuario:
    print('Usuário já existente!')
    return

  nome = input('Nome completo do usuário: ')
  data_nascimento = input('Data de nascimento (dd-mm-aaaa): ')
  endereco = input('Endereço (logradouro, n° - bairro - cidade/sigla_estado): ')
  usuarios.append({
    'nome': nome, 
    'data_nascimento': data_nascimento,
    'cpf': cpf,
    'endereco': endereco  
  })

  print('Usuário cadastrado com sucesso!')


def filtrar_usuario(cpf, usuarios):
  usuarios_filtrados = [usuario for usuario in usuarios if usuario['cpf'] == cpf]
  return usuarios_filtrados[0] if usuarios_filtrados else None


def criar_conta(agencia, numero_conta, usuarios):
  cpf = input('Digite o CPF: ')
  usuario = filtrar_usuario(cpf, usuarios)
  
  if usuario:
    print('Conta criada com sucesso!')
    return {'agencia': agencia, 'numero_conta': numero_conta, 'usuario': usuario}
  
  print('Usuário não encontrado!')


def listar_contas (contas):
  print('-'*30)
  print('Contas'.center(30,' '))  
  print('-'*30)

  for conta in contas:
    head = f'''
      Agência: {conta['agencia']}
      CC: {conta['numero_conta']}
      Titular: {conta['usuario']['nome']}'''
    print(textwrap.dedent(head))

  print('-'*30)
  print()


def main():

  deposito = 0
  saque = 0
  saldo = 0
  extrato = ''
  numero_saques = 0
  usuarios = []
  contas = []
  numero_conta = 1

  SAQUE_LIMITE = 500
  NUMERO_SAQUES_LIMITE = 3
  AGENCIA = '0001'

  while True:

    operacao = menu()
    
    if (operacao == '1'):
      deposito = float(input('Valor do depósito : R$ '))
      saldo, extrato = depositar(saldo, deposito, extrato)

    elif (operacao == '2'):
      saque = float(input('Valor do saque: R$ '))
      saldo, extrato, numero_saques = sacar(
        saldo=saldo,
        saque=saque, 
        extrato=extrato, 
        saque_limite=SAQUE_LIMITE,
        numero_saques=numero_saques,
        numero_saques_limite=NUMERO_SAQUES_LIMITE,
        )

    elif (operacao == '3'):
      exibir_extrato(saldo, extrato=extrato)

    elif (operacao == '4'):
      criar_usuario(usuarios)

    elif (operacao == '5'):
      conta = criar_conta(AGENCIA, numero_conta, usuarios)

      if conta:
        contas.append(conta)
        numero_conta += 1
    
    elif (operacao == '6'):
      listar_contas(contas)

    elif (operacao == '0'):
      print('Finalizado!')
      print()
      break

    else:
      print('Digite corretamente!')
      continue
main()
