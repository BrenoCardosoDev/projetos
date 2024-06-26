capacidade_atual, aumento_percentual = map(int, input().split())

# TODO: Calcule a nova capacidade do disco de Mithril
novaCapacidade = capacidade_atual*(100+aumento_percentual)/100

# TODO: Imprima a nova capacidade
print(int(novaCapacidade))
