Listas[^1]
***
**Mutable** sequence of storage objects.
#### List
It a sequence that stores **ANY** object type.
#list 


Syntax:

|Syntax|Definition|Tag|
|--|--|--|
|my_list = []|Declare an empty list|#emptylistsintaxe|
|my_fruits = ["fruit1","fruit2"]|List with two items|#listitems|
|letters = list("Python")|letters\[0\] = "P"|#listconstructor|
|numbers = list(range(10))|numbers\[10\] = 9 |#listconstructor|


#### Nested List / Matrix
#matrix

```python
matriz = [
	[1,"a", 2],
	[2, "b", 3],
	[3,"c",4]
]

print(matriz[0]) #imprime a linha toda
print(matriz[0][0]) #imprime o 1o item da linha 0
print(matriz[0][-1]) #De tras pra frente no caso 2 da linha 0
print(matriz[-1][-1]) #De tras pra frente linha/coluna no caso 4

```

#### Enumerate
Return the (index, object[n])
#enumerate

```python
carros = ["Ranger","Bronco", "Territory"]

for indice, carro in enumerate(carros):
	print(f"{indice}: {carro}")
```

>[!example] Print
>0: Ranger
>1: Bronco
>2: Territory


#### Comprehension / Filter / Copy List
Generate a new list based on existent one with some condition as filter
#listcomprehension #filterlist #copylist

```python
numeros = range(21)
# Sintaxe
# obj_retorno for obj_retorno in iterable filter condition
pares = [numero for numero in numeros if numero % 2 == 0]

print(pares)
```


#### List Methods
[[Default Functions#^cc6a03|Refer to Default Functions]]




#### Lista.sort() Usage Cases
#listsort #listsortreverse #listsortlambda

```python
linguagens = ["python", "js", "c", "java", "csharp"]
linguagens.sort()
```
>[!example] Prints:
>\['c', 'csharp', 'java', 'js', 'python'\]


Using *reverse* as parameter:
```python
...
linguagens.sort(reverse=True)
```
>[!example] Prints:
>\['python', 'js', 'java', 'csharp', 'c'\]


Using *lambda*  (anonymous function) as parameter:
Sorting by **length**
```python
...
linguagens.sort(key=lambda x: len(x))
```
>[!example] Prints:
>\['c', 'js', 'java', 'python', 'csharp'\]

Sorting by **length reversed**
```python
...
linguagens.sort(key=lambda x: len(x), reverse=True)
```
>[!example] Prints:
>\['python', 'csharp', 'java', 'js', 'c'\]





***
[[Project 1 - Bank]] | [[Data Structure - Tuple]]
#### Tags
***
#pythonlist

[^1]: [Listas](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/01%20-%20Estrutura%20de%20dados/01%20-%20Listas)

