class Bicicleta: # Criando a classe
    
    def __init__(self, cor, modelo, ano, valor): # Inicializando os atributos da classe com o Método Construtor
        self.cor = cor # Definindo o primeiro atributo da classe
        self.modelo = modelo # Definindo o segundo atributo da classe
        self.ano = ano # Definindo o terceiro atributo da classe
        self.valor = valor # Definindo o quarto atributo da classe
    
    def buzinar(self): # Criando método para o primeiro comportamento
        print("Plim plim...")
    
    def parar(self): # Criando método para o segundo comportamento
        print("Parando a bibliceta...")
        print("Bicicleta parada!")
    
    def correr(self): # Criando método para o terceiro comportamento
        print("Vrummm...")
        
    #def __str__(self): # Criando método para passar as características (manualmente)
    #    return f"Bicicleta: cor={self.cor}, modelo={self.modelo}, ano={self.ano}, valor={self.valor}"
        
    def __str__(self): # Criando método para passar as características (automaticamente)
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"


b1 = Bicicleta("vermelha", "caloi",2022, 600) # Criando um objeto
b1.buzinar() # Chamando o método para o objeto b1
b1.parar() # Chamando o método para o objeto b1
b1.correr() # Chamando o método para o objeto b1
print(b1.cor, b1.modelo, b1.ano, b1.valor) # Acessando os atributos desse objeto

b2 = Bicicleta("verde", "monark", 200, 189) # Criando outro objeto
Bicicleta.buzinar(b2) # Chamando o método buzinar da classe Bicicleta para o objeto b2 (outra forma)
print(b2)
