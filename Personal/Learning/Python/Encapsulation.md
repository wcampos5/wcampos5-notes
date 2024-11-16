#python #encapsulation #public #private #computed #computedattribute

Encapsulation[^1]
***

Group data and methods in a single unit.
Protect the object allowing changes to its properties only from itself.
Allow accidentally changes to its properties

![[class_diagram_encapsulation.png]]

- Saldo - Can't be public accessible
- Must be private to avoid un-validated changes

>[!example]
```python
class Conta:
  def __init__(self, saldo):
      self._saldo = saldo #_saldo defines saldo as private by convention
      
  def depositar(self, valor):
    # ...
    self._saldo += valor
    print(self.exibir_saldo())

  def sacar(self, valor):
    # ...
    self._saldo -= valor
    print(self.exibir_saldo())

  #Acesso a variavel privada via method
  def exibir_saldo(self):
    # ...
    return f" Saldo: {self._saldo}"

  def __str__(self) -> str:

     return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"


# Main
conta = Conta(100)
conta.depositar(100)
conta.sacar(50)
```



#### Properties / Getter
#properties #property #getter

Know as:
- Manager Variable
- Computed variable

Annotating a method with ==@property== turn method into a variable

>[!example]
```python
class Foo:

  def __init__(self, x=None):
      #Private property x
      self._x = x

  @property
  def x(self):
    return self._x or 0 #Acty like as a getter

# Main
foo = Foo(10)
#getting x
print(foo.x)
```


#### Setter
#setter

Once we have defined the method x as a variable, now we can set \_x annotating it as ==\@x.setter==

```python
class Foo:

  def __init__(self, x=None):
      self._x = x

  @property
  def x(self):
    return self._x or 0

  @x.setter #Define the setter
  def x(self, valor):
    self._x += valor

  

# Main
foo = Foo(10)
#get x
print(foo.x)
foo.x = 10
print(foo.x)
```


Deleter
#deleter

Remove the computed property from memory or setup a new default value

```python
	#...
	@x.deleter
	def x(self):
	  #remove from memory
	  #self._x
	  # Update to a default value
	  self._x = -1
```

***
[[Inheritance]] | [[Polymorphism]]
#### Tags
***
[^1]: [Encapsulation](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/02%20-%20Programa%C3%A7%C3%A3o%20Orientada%20a%20Objetos/05%20-%20Encapsulamento)

