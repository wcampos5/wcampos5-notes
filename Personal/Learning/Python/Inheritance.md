#inheritance #heranca

Inheritance[^1]
***

>[!example]
```python
class A:
  pass

class B:
  pass


#Extend A & B
class C(A,B):
  pass
```


#### Simple Inheritance

![[class_diagram_inheritance.png]]


>[!example]

>[!code]
```python
class Veiculo: #Super/Parent Class
  def __init__(self, cor, placa, nr_rodas):
    self.cor = cor
    self.placa = placa
    self.nr_rodas = nr_rodas

  def ligar_motor(self):
    print("Ligando o motor")

  def __str__(self):
    return f"{self.__class__.__name__}: {', '.join([f'{key}={value}' for key, value in self.__dict__.items()])}"


class Motocicleta(Veiculo): #Child class1
  pass

class Carro(Veiculo): #Child class2
  pass

class Caminhao(Veiculo): #Child class3

  def __init__(self, cor, placa, nr_rodas, carregado):

    super().__init__(cor, placa, nr_rodas) #get super class implementation

    self.carregado = carregado # add own class param to the constructor

  

  def esta_carregado(self): #Own class behavior

    print(f"{'Sim' if self.carregado else 'Não'} estou carregado!")

  
  

#main

  

moto = Motocicleta("MOT123","123",2)
carro = Carro("Branco", "XYZ", 4)
caminhao = Caminhao("CAM", "CAM123", 8, True)

print(moto)
print(carro)
print(caminhao)
caminhao.ligar_motor()
```

#### Multiple Inherintance

![[class_diagram_multiple_inheritance.png]]

>[!example]

>[!code]
```python
#Parent Class
class Animal:

  def __init__(self, nro_patas):

      self.nro_patas = nro_patas

  def __str__(self):

    return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"


#Simple Inhitance
class Mamifero(Animal):

  def __init__(self, cor_pelo, **kwargs): #Recebe args da classe pai via **kwargs

    self.cor_pelo = cor_pelo

    super().__init__(**kwargs) #Recebe args da classe pai via **kwargs


#Simple Inhitance
class Ave(Animal):

  def __init__(self, cor_bico, **kwargs): #Recebe args da classe pai via **kwargs

      self.cor_bico = cor_bico

      super().__init__(**kwargs) #Recebe args da classe pai via **kwargs

  

class Gato(Mamifero):
  pass

  
#Multiple Inhitance
class Ornitorrinco(Mamifero, Ave):
  pass

  
  

#Main

gato = Gato(cor_pelo="Branco",nro_patas=4)

print(gato)

  
#Mutiple Inhitance
ornitorrinco = Ornitorrinco(cor_pelo="Vermelho", nro_patas=4, cor_bico="Amarelo")

print(ornitorrinco)
```

For Multiple Inheritance
#multipleinheritance
- Constructor
	Defines it's properties + \*\*kwargs (get args from parent as a dictionary)
	Assign own properties
	then,
	Invoke super class properties with \*\*kwargs:
	```
	def __init__(self, cor_pelo, **kwargs):
		self.cor_pelo = cor_pelo
		super().__init__(**kwargs)
`>````


Using the \*\* make confuse to instantiate the class, we can declare properties explicitly instead of get through kwargs in our child class overridden the Parent constructor.

```python
def __init__(self, cor_bico, cor_pelo, nro_patas):
      super().__init__(cor_pelo=cor_pelo, cor_bico=cor_bico, nro_patas=nro_patas)
```




***
#### MRO -> Methods Resolution Order
#mro 

Shows the order that the Python is looking for the inheritance structure
```
print(Class.__mro__)
```
>[!success] Example __mro__ return
>(<class '__main__.Ornitorrinco'>, <class '__main__.Mamifero'>, <class '__main__.Ave'>, <class '__main__.Animal'>, <class 'object'>)


***
[[Abstract Classes - Interfaces]] | [[Encapsulation]]
#### Tags
***
[^1]: [Heranca](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/02%20-%20Programa%C3%A7%C3%A3o%20Orientada%20a%20Objetos/04%20-%20Heran%C3%A7a)
