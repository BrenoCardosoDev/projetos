class Animal:
    def __init__(self, nro_patas):
        self.nro_patas = nro_patas
    
    def __str__(self):
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"

class Mamifero(Animal):
    def __init__(self, cor_pelo, **kw): #kwargs
        self.cor_pelo = cor_pelo
        super().__init__(**kw)
        
class Ave(Animal):
    def __init__(self, cor_bico, **kw): #kwargs
        self.cor_bico = cor_bico
        super().__init__(**kw)
        
class Gato(Mamifero):
    pass

class Ornitorrinco(Mamifero, Ave):
    pass

gato = Gato(nro_patas=4, cor_pelo="preto") # atributo nomeado por causa do kwargs
print(gato)

ornitorrinco = Ornitorrinco(nro_patas=4, cor_pelo="vermelho", cor_bico="laranja") # atributo nomeado por causa do kwargs
print(ornitorrinco)
