class Veiculo:
    def __init__(self, cor, placa, numero_rodas):
        self.cor = cor
        self.placa = placa
        self.numero_rodas = numero_rodas
    def __str__(self):
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"
    def ligar_motor(self):
        print("Ligando o motor")

class Motocicleta(Veiculo):
    pass

class Carro(Veiculo):
    pass

class Caminhao(Veiculo):
    def __init__(self, cor, placa, numero_rodas, carregado):
        self.carregado = carregado
        print(f"Caminhão {'está' if self.carregado else 'não está'} carregado")
        super().__init__(cor, placa, numero_rodas)
        
moto = Motocicleta("preta", "abc-1234", 2)
print(moto)
moto.ligar_motor()

carro = Carro("branco", "xde-0098", 4)
print(carro)
carro.ligar_motor()

caminhao = Caminhao("roxo", "gfd-8712", 8, "Sim")
print(caminhao)
caminhao.ligar_motor()
