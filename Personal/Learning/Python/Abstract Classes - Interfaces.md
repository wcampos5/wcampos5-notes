#python #interfaces #abstract #abstractclass
Interfaces[^1]
Modulo ABC[^2]
***
- Define what class must do
- Doesn't have implementation
- Can't be instantiated

The Python doesn't have abstract class by default.
O Modulo ABC #abc #module ==A==bstract ==B==ased ==C==lass:
- Decorates the class methods as abstract.
- Register concrete class as abstract implementations
- ==@abstractmethod== is the decorator itself


>[!code]
```python
from abc import ABC, abstractmethod

#Class with abstract methods became abstract
class ControleRemoto(ABC):
  @abstractmethod
  def ligar(self):
    pass

  @abstractmethod
  def desligar(self):
    pass

class ControleTV(ControleRemoto): #Controle TV extends Controle Remoto

  def ligar(self):                # Must be implemented
    print("ligando a TV")
    print("TV Ligada!")

  def desligar(self):             # Must be implemented
    print("Desligando a TV")
    print("TV Desligada!")

#New Control Type class
class ControleArCondicionado(ControleRemoto): #extends Controle remoto

  #Must implement methods ligar() and desligar

  def ligar(self):
    print("Ligando o ar condicionado...")
    print("Ar condicionado ligado!")

  def desligar(self):
    print("Desligando o ar condicionado...")
    print("Ar condicionado desligado!")

#Execute
controleTV = ControleTV()
controleTV.ligar()
controleTV.desligar()

controleAr = ControleArCondicionado()
controleAr.ligar()
controleAr.desligar()
```

#### Abstract Class - Properties

Use the decorators ==@property and @abstractpropertie== in the **abstract class** to declare the method as a property.

In the Concrete Class use the decorator @property

>[!code]
```python
from abc import ABC, abstractmethod

#Class with abstract methods became abstract
class ControleRemoto(ABC):
  @abstractmethod
  def ligar(self):
    pass
    
  @abstractmethod
  def desligar(self):
    pass
   


class ControleTV(ControleRemoto): #Controle TV extends Controle Remoto

  def ligar(self):                # Must be implemented
    print("ligando a TV")
    print("TV Ligada!")

  def desligar(self):             # Must be implemented
    print("Desligando a TV")
    print("TV Desligada!")
```





***
[[Class Methods and Static Methods]] | [[Inheritance]]
#### Tags
***
[^1]: [Abstract Class & Interfaces](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/02%20-%20Programa%C3%A7%C3%A3o%20Orientada%20a%20Objetos/09%20-%20Classes%20abstratas)

[^2]: [Modulo ABC](https://docs.python.org/pt-br/3/library/abc.html)
