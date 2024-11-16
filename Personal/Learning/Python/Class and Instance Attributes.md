Ref[^1]
#attributes #classatributes #instances #instancesattributes
***
- Objects risen with same class and instance attributes.
- Instance attributes belongs to the object
- Class attributes are shared between all objects

>[!example]

```Python
class Estudante:
  #Class Attribute are declared right after class declaration
  #Shared between instances
  escola = "Pequeno Principe" #must be assigned if doesn't typed

  def __init__(self, nome, numero):
    self.nome = nome
    self.numero = numero

  def __str__(self):
    return f"{self.nome} ({self.numero}) - {self.escola}"

def exibir_estudantes(*objs):
  for obj in objs:
    print(obj)

#Instancia 2 Estudantes    
wil = Estudante("Wil", 1)
wilson = Estudante("Wilson", 2)

#Exibi
exibir_estudantes(wil, wilson)

#Change instance attribute affects ONLY that object
wil.numero = 7
exibir_estudantes(wil, wilson)

#CLASS attribute otherwise APPLIES TO ALL instances
Estudante.escola = "Python"
exibir_estudantes(wil, wilson)
```



>[!example] Return
>Wil (1) - Pequeno Principe
>Wilson (2) - Pequeno Principe







***
[[Classes e Objetos]] | [[Class Methods and Static Methods]]
#### Tags
***
[^1]: [Class and Instances Attributes](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/02%20-%20Programa%C3%A7%C3%A3o%20Orientada%20a%20Objetos/07%20-%20Atributos%20de%20classe%20ou%20inst%C3%A2ncia)