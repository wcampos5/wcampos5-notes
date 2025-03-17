
|Function| Definition|
|--------|-----------|
|**dir()**|Return list of names in the **local scope** |
> [!example]
> \['__annotations__', '__builtins__', '__doc__', '__loader__', '__name__', '__package__', '__spec__'\]

|**dir(10)**|Return the valid attributes valid to the object |
|--------|-----------|
> [!example]
> \['__abs__', '__add__', '__and__', '__bool__', '__ceil__', '__class__', '__delattr__', '__dir__', '__divmod__'...\]

|help()|Invokes integrated system help  |#help|
|--------|-----------|--|
> [!example]
> \>\>\> help(100)
Help on int object:
>
class int(object)
 |  int([x]) -> integer
 |  int(x, base=10) -> integer
 >...


|range()|  |
|--------|-----------|
|start| Initial value|
|stop|last + 1|
|\[step\]|Opcional - Interval value|

**q** to exit of help

#### Reading Input Values

^315d69

|input(str)|Receive data in the defaul input (keyboard) |
|--------|-----------|
> [!example]
> `nome = input("Digite seu nome: ")`
> \>\>\> Informe o seu nome: |


#### Writing Output Values (print())

^07d976

|print()|Print the information in the console |
|--------|-----------|
> [!example]
> print(f'Meu nome é {name}')
> *Meu nome é Wilson*

|print(varargs|Recebe um objeto padrao e 4 opcionais |
|--------|-----------|
|sep|Default is space|
|end|Add the text/number to the end|
|file||
|flush)||
> [!example]
> name = "Wilson"
> surname = "Campos"
`print(name, surname)`
`print(name, surname, sep="#")`
`print(name, surname, end="...\n")`
*Will print:
Wilson Campos
Wilson#Campos
Wilson Campos...*


#### String()
#string #strings

^68eeb2

|string|Sequence of characters |Tag|
|--------|-----------|--|
|title()|Convert all first letter of the word to upper| #title|
|strip()|Remove blank spaces from BOTH side of the word | #strip|
|lstrip()|Remove blank spaces from LEFT side of the word| #lstrip|
|rstrip()|Remove blank spaces from RIGHT side of the word| #rstrip|
|center(int, "#")|Complete the spaces with # till 10| #center |
|.join(str_variable)|".".join("Wilson") results in W.i.l.s.o.n (work with any iterable)| #joing |

#### List()
#list #listmethods ^cc6a03

|list|List of any object|Tag|
|----|------------------|---|
|append()|add to the  END of a list \>*lista.append("Python")*|#listadd|
|extend()|Append a new list/Iterable to the list (keep duplicated values). >>lista.extended(Iterable)|#extend #joinlist|
|clear()|Clear the list left it empty \>*lista.clear()*|#listclear|
|copy()|Copy list generating a new object in the memory >>lista.copy()|#listcopy|
|count()|Count times the **same object/value** appears. >>lista.count("Python")|#listcount|
|index()|Return the 1st index found in the list *\>>lista.index("Java")*. Index could be combined within #listcount to loop through all duplicated values |#listindex|
|pop()|Remove from TOP of the list. Stack LIFO, could be used with an INDEX also|#pop|
|remove()|Remove the first occurrence of passed item. could be combined within #listcount to loop through all duplicated values|#listremove|
|reverse()|Reverse the list sequence.|#listreverse|
|sort()|Order the list. If passed. It is NOT related with the ===sorted() function=== | #listsort #listsortreverse|
|len()|Number the itens in the list| #listlen #listlength|

#### sorted() 
#sorted #sortedfunction
A built-in Python function to order any Iterable

```python
linguagens = ["python", "js", "c", "java", "csharp"]

#Alphabetical order
print(sorted(linguagens))

#Length order
lista_ordenada = sorted(linguagens, key=lambda x: len(x))

#length reverse order
lista_reversa = sorted(linguagens, key=lambda x: len(x), reverse=True)

print(lista_ordenada)
print(lista_reversa)
```

>[!example] Prints:
>\['c', 'js', 'java', 'python', 'csharp'\]
>\['python', 'csharp', 'java', 'js', 'c'\]

#### Range(start, end, step)
#range
In the true this function does create the list, it create a iterable reference to it. It's is a very efficiently way to avoid memory waist.

>[!example]
>	list_numbers = range(10)
>	print(list_numbers)
>>[!important] Will print
>>range(0, 10)

But if you really wanna the list you can do:
```python
print(list(range(10)))
```


#### Random(start, end)
#random #rand
Gera números randomicos entre start, end.
>[!warning] Mandatorio imoprtar a biblioteca **random**


>[!example]
>Jogar um dado até tirar o numero 6.
>
>```Python
>import random
>roll = 0
>while roll != 6:
>	roll = random.randint(1,6)
>	print(roll)


#### Tags
***
#functions #defaultfunction #dir  #inputkey #inputstring #keyboard #print #output
