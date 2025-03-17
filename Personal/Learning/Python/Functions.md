Functions[^1]
***
#python #function #functions

A code block identified by a name.
It either can have a list of parameter or not

#### Declaration:
Use the **reserved** key word ***===def=== + function_name(param)+ :***

>[!example] Examples
>No Param
>```
>	def exibir_mensagem():
>		print("Olá mundo!")
>```
>with param
>```
>def exibir_mensagem(nome):
>	print(f"Seja Bem Vindo: {nome}!")
>```
>param **with Default** value
>```
>def exibir_mensagem(nome="Wilson"):
>	print(f'Seja Bem Vindo: {nome}!')
>```

#### Function Return
#return
- Could return more than one value

>[!example] Examples
>Returns **\#None** if theres no return specified
>```
>	def calcular_total(numeros):
>		print(numeros)
>```
>One return
>```
>	def calcular_total(numeros):
>		return sum(numeros)
>```
Two values
>```
>	def retorna_antecessor_e_sucessor(numero):
>		antecessor = numero - 1
>		sucessor = numero + 1
>		
>		return antecessor, sucessor
>```
It Returns a ===tuple once it is immutable===


#### Arguments
#arguments #argument

##### Positional
- Passing arguments based on position

>[!example] Examples
```python
def salvar_carro(ano, modelo, marca, placa):

    print(f'Ano: {ano}\nModelo: {modelo}\nMarca: {marca}\nPlaca: {placa}\n')
```
>[!success] Positional Arguments in the correct order
```python
salvar_carro("23", "Ranger", "Ford", "1234") #Positional
```
>[!failure] Positional Arguments in the WRONG order. Will mess the structure
```python
salvar_carro("Ranger", "23", "Ford", "1234") #Positional
```


##### Named
- Passing arguments based on their name

>[!example] Examples
```python
def salvar_carro(ano, modelo, marca, placa):

    print(f'Ano: {ano}\nModelo: {modelo}\nMarca: {marca}\nPlaca: {placa}\n')
```
>[!success] Named: Correct order
```python
salvar_carro(ano="23", modelo="Ranger", marca="Ford", placa="1234")
```
>[!success] Named: Incorrect order working properly also
```python
salvar_carro(modelo="Ranger",ano="23", marca="Ford", placa="1234")
```
>[!failure] Will broken the code if the attribute name in the method change.

- Passing a dictionary

>[!success] Named: Same as named
```python
salvar_carro(**{"ano": "2023", "modelo": "Ranger", "marca": "Ford", "placa": "1234"})
```


#### Forcing Positional, Positional or Key/word, Only Key/word
#positional #keyword #params
***

```python
def f(pos1, pos2, /, pos_or_kwd, *, kwd1, kwd2):
```

>[!note]
> - Before (\/) positional only
> - After (\/) positional OR keyword
> - After (\*) keyword only




#### Required Params combined \*args and \*\*kwargs
#args #kwargs
>[!note] arg & kwargs is a convention, but could be any name

- \*args - Tupla
- \*\*kwargs - Dictionary

>[!code]

```python
def exibir_poema(data_extenso, *args, **kwargs):
  #Text splitted by comma
  text = "\n".join(args)
  #add new line
  #format
  #Iterate over all key=value
  meta_data = "\n".join([f"{key.title()}: {value}" for key, value in kwargs.items()])
  msg = f"{data_extenso}\n\n{text}\n\n{meta_data}"
  print(msg)
  
exibir_poema(

    "Dec, 06th, 2023",
    "Zen of Python",
    "Beautiful is better than ugly.",
    "Explicit is better than implicit.",
    "Simple is better than complex.",
    "Complex is better than complicated...",
    autor="Tim Peters",
    ano=1999,
)
```

##### Output

>[!example] Output
>Dec, 06th, 2023
Zen of Python
Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated...
Autor: Tim Peters
Ano: 1999

#### Function as a params
#functionparams

Functions could be passed as a parameter or be assigned to a variable:

>[!code]
```python
def somar(a, b):
  return a + b

def subtrair(a, b):
	return a - b

  

def exibir_resultado(a, b, funcao):
  resultado = funcao(a, b)
  print(f"O resultado é: {resultado}")

#main
exibir_resultado(10, 10, somar)
exibir_resultado(10, 10, subtrair)
```


#### Scope
#local #global #scope 

Program scope variable be be access in a method using the reserved keyword ===global===

>[!Example]
```python
salary = 2000.0

def salario_bonus(bonus):
	global salary
	salary =+ bonus
	return salario

salario_bonus(500) #2500
```

>[!warning] Mutable Objects in a global scope
>Like (List, Dictionary, String)
>They will propagate even after the functions/methods ends





***
[[Data Structure - Dictionaries]] | [[]]
#### Tags
***
[^1]: [Functions](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/01%20-%20Estrutura%20de%20dados/05%20-%20Fun%C3%A7%C3%B5es)