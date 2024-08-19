# Recebe uma entrada do usuário e a divide em uma lista de strings utilizando ', ' como delimitador
strings = input().split(', ')
# Recebe uma entrada do usuário como a palavra-chave para filtragem
palavra_chave = input()

# Define a função para filtrar strings por uma palavra-chave específica
def filtrar_por_palavra_chave(strings, palavra_chave):
    # TODO: Retorne uma lista contendo apenas as strings que contêm a palavra-chave
    return [string for string in strings if palavra_chave in string]

# Chama a função filtrar_por_palavra_chave com as strings e a palavra-chave fornecidas pelo usuário
print(filtrar_por_palavra_chave(strings, palavra_chave))
