#polymorphism 

Polymorphism[^1]
***
All classes MUST implement the same desired polymorphic method

>[!example]
```python
class Passaro:

  def voar(self):
    print("Voando...")

class Pardal(Passaro):

    def voar(self):
       super().voar()

class Avestruz(Passaro):
  def voar(self):
     print("Avestruz não pode voar!")

#Polymorphic Method    
def plano_voo(obj):
  obj.voar()

#Main  
plano_voo(Pardal())
plano_voo(Avestruz())
```



***
[[Encapsulation]] | [[]]
#### Tags
***
[^1]: [Polymorphism](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/02%20-%20Programa%C3%A7%C3%A3o%20Orientada%20a%20Objetos/06%20-%20Polimorfismo)