# Lista para armazenar os itens
itens = []

#TODO: Solicite os itens ao usuário
for i in range(3):
  itens.append(input(""))
  
# Exibe a lista de itens
print("Lista de itens:")
for item in itens:
    print(f"- {item}")
