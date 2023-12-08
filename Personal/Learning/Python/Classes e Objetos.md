#python #classe #class #objetos #object 
***
- Class is the blueprint
- Objects are the instances

#### Class
>[!code]
```python
class ClassName:
	#Constructor
	def __init__(self, attr1, attr2, attr3=True):
		self.attr1 = attr1
		self.attr2 = attr2
		self.attr3 = attr3

	#methos / Behaviors
	def action1(self):
		print("Action")
		
	def action2(self):
		self.attr3 = False
		print("Action 2")
	
	#To String
	#def __str__(self):
		#return f"Attribute1: {self.attr1}, Attribute2: {self.attr2}, Attribute3: {self.attr3}"
	
	def __str__(self):
		return f"{self.__class__.__name__}:{', '.joing([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"
```

>[!warning] Warning - Common Error
>==Missing self== as the first parameter of the class methods


#### Object
>[!code]
```python
obj1 = ClassName("nome", "telefone")
obj1.attr1 #nome
obj1.action1 #Action

```





***
[[Functions]] | [[Class and Instance Attributes]]
#### Tags
***
[^1]: [Class and Objects](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/02%20-%20Programa%C3%A7%C3%A3o%20Orientada%20a%20Objetos/02%20-%20Classes%20e%20Objetos)