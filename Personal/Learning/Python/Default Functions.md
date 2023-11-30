
```
|x|y |
|--------|-----------|
> [!example]
> 
```

|Function| Definition|
|--------|-----------|
|**dir()**|Return list of names in the **local scope** |
> [!example]
> \['__annotations__', '__builtins__', '__doc__', '__loader__', '__name__', '__package__', '__spec__'\]

|**dir(10)**|Return the valid attributes valid to the object |
|--------|-----------|
> [!example]
> \['__abs__', '__add__', '__and__', '__bool__', '__ceil__', '__class__', '__delattr__', '__dir__', '__divmod__'...\]

|help()|Invokes integrated system help  |
|--------|-----------|
> [!example]
> \>\>\> help(100)
Help on int object:
>
class int(object)
 |  int([x]) -> integer
 |  int(x, base=10) -> integer
 >...


|range()|Invokes integrated system help  |
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


#### String() #string #strings

^68eeb2

|string|Sequence of characters |
|--------|-----------|
|title()|Convert all first letter of the word to upper|
|strip()|Remove blank spaces from BOTHH side of the word|
|lstrip()|Remove blank spaces from LEFT side of the word|
|rstrip()|Remove blank spaces from RIGHT side of the word|
|center(int, "#")|Complete the spaces with # till 10|
|.join(str_variable)|".".join("Wilson") results in W.i.l.s.o.n (work with any iterable)|




#### Tags
***
#functions #defaultfunction #dir #help #inputkey #inputstring #keyboard #print #output
