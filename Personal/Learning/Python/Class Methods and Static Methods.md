#static #method #classmethod #staticmethod
Ref[^1]
***
#### Class Methods
- Binding to the class
- Have access to the classes state
- First argument is CLS
	
	##### Usage Case
	- Factory Methods creation
		- Methods that returns instances of the class


#### Static Methods
- Don't receive first param explicitly
- Also it is binding to the class not to the instance of the class
- Can't access or modify class state


	##### Usage Case
	- Utility functions


>[!example]
```python
class Pessoa:
  def __init__(self, nome=None, idade=None):
    self.nome = nome
    self.idade = idade

  @classmethod
  #First param is cls INSTEAD self
  #Return a class instance
  def criar_de_data_nascimento(cls, ano, mes, dia, nome):
    idade = 2023 - ano
    return cls(nome, idade)
    
  @staticmethod
  #Doesn't required an object
  def e_maior_idade(idade):
    return idade >= 18

p = Pessoa.criar_de_data_nascimento(7,7,1977,"Wilson Campos")

print(p.nome, p.idade)

print(Pessoa.e_maior_idade(8))
print(Pessoa.e_maior_idade(p.idade))
```






***
[[Class and Instance Attributes]] | [[Abstract Classes - Interfaces]]
#### Tags
***
[^1]: [Class methods and Statics Methods](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/02%20-%20Programa%C3%A7%C3%A3o%20Orientada%20a%20Objetos/08%20-%20M%C3%A9todos%20de%20classe%20e%20m%C3%A9todos%20est%C3%A1ticos)