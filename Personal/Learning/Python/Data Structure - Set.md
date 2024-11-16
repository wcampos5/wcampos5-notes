Set[^1]
***
#set

 - Collection of ***UNIQUE*** elements.
 - DO NOT keep order
 - DO NOT support indexing (It could be achieved converting it to list)
 - Could be use ENUMERATE
 - Receives an Iterable in its constructor
 - Could be use curly braces or brackets to be cleared.


>[!code] 
```python
linguagens = {"python", "java", "python"} #using curly braces
print(linguagens)

numeros = set([1,2,3,1,4,2,5])
print(numeros)

letras = set("abacaxi")
print(letras)

carros = set(("palio", "gol", "celta", "palio",)) #tuple
print(carros)
```
>[!example] Output
>{'python', 'java'}
>{1, 2, 3, 4, 5}
>{'b', 'a', 'c', 'i', 'x'}
>{'gol', 'palio', 'celta'}


#### Methods

|Method|Description|Tag|
|----|------------------|---|
|add()|Add new element/Iterable| #setadd|
|clear()|Left it empty| #setclear|
|copy()|Create a new instance id| #setcopy|
|discard()|Remove an element| #setdiscard #discard|
|remove()|As opposed to #discard it throws error if element doesn't exit| #setremove|
|pop()|Remove using FIFO (opposite of list that uses LIFO)| #pop|
|union()|Receive an Iterable. Merge 2 set into one| #setunion #union|
|intersection()|Grab only the COMMOM elements| #setintersection #intersection|
|difference()|Grab only the left side of the evaluation| #setdifference #difference|
|symmetric_difference()|Revese of #intersection . What isn't Equal between sets| #symmetric_difference|
|{}.issuperset|Is left side set evaluated inside of the right side set?| #issuperset #in #contained|
|{}.isdisjoint|Does left side set has some right side element?| #isdisjoint #notin #notcontains|


>[!code] Union
```python
conjunto_a = {1,2}
conjunto_b = {2,3,4}

print(conjunto_a.union(conjunto_b))
```
>[!example] Output
>{1, 2, 3, 4}


>[!code] Intersection
```python
conjunto_a = {1,2,3}
conjunto_b = {2,3,4}
print(conjunto_a.intersection(conjunto_b))
```
>[!example] Output
>{2, 3}


>[!code] Symmetric Difference (oposite of Intersection)
```python
conjunto_a = {1,2,3}
conjunto_b = {2,3,4}
print(conjunto_a.symmetric_difference(conjunto_b))
```
> [!example] Output
> {1, 4}


>[!code] Difference
```python
conjunto_a = {1,2,3}
conjunto_b = {2,3,4}

print(conjunto_a.difference(conjunto_b))
print(conjunto_b.difference(conjunto_a))
```
> [!example] Output
> {1}
> {4}


>[!code] Is Super Set
> Left side "Has all of" right side.
```python
conjunto_a = {1,2,3}
conjunto_b = {4,1,2,5,6,3}
print(conjunto_a.issuperset(conjunto_b))
print(conjunto_b.issuperset(conjunto_a))
```
> [!example] Output
> False
> True


>[!code] Is Disjoint
```python
conjunto_a = {1,2,3,4,5}
conjunto_b = {6,7,8,9}
conjunto_c = {1,0}
print(conjunto_a.isdisjoint(conjunto_b))
print(conjunto_a.isdisjoint(conjunto_c))
```
> [!example] Output
> True
>False



***
[[Data Structure - Tuple]] | [[Data Structure - Dictionaries]]
#### Tags
***
#set #pythoset

[^1]: [Set](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/01%20-%20Estrutura%20de%20dados/03%20-%20Conjuntos)
