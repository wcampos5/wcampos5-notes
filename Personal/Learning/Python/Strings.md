#python  #string
Built in String Functions[^1]
Format Strings[^2]
Slice String[^3]
Multi Line String[^4]
***
Main use is to manipulate characters sequence
Rich in methods.

#defaulfunctions #functions
[[Default Functions#^68eeb2 |Refer to Default Functions]] for usage details




#### Variables Interpolation/Concatenation
#interpolation #concatenate

### ===%===
>[!warning] Raramente usada em Python

***
```python
nome = "Wilson"
idade = 46

print("Olá, me chamo %s, tenho %d de idade". % (nome, idade))
```

===format()===
***
Use {} as a placeholder
```python
nome = "Wilson"
idade = 46

print("Olá, me chamo {}, tenho {} de idade.".format(nome, idade))
```

Or using the positional ***indexed placeholders***
```python
nome = "Wilson"
idade = 46

print("Olá, me chamo {0}, tenho {1} de idade.".format(nome, idade))
```

Or using the positional ***Named placeholders***
```python
name = "Wilson"
age = 46

print("Olá, me chamo {nome}, tenho {idade} de idade.".format(nome=name, idade=age))
```

Or using a Dictionary object.
```python
pessoa = {"nome": "Wilson", "idade": 46}

print("Olá, me chamo {nome}, tenho {idade} de idade.".format(**pessoa))
```


===f-string=== (***Recommended***)
#f-string #decimalplace
***
Printing with f-string
```python
nome = "Wilson"
ideade = 46

print(f"Olá, me chamo {nome}, tenho {idade} de idade.")
```

Formatting with f-string #floatformat #decimalplace
>[!note]
>Sintaxe
>{variable:lengh,decimal_places+unit}

```python
PI = 3.1415.9

print(f"O valor de PI: {PI:.2f}")
print(f"O valor de PI: {PI:10.2f}") \# Will add 10 blank spaces before the value
```

***
***

#### Substrings
#substrings

>[!code] nome = "Wilson Rocha de Campos"

```python
nome[0]
>>>W

nome[:5]
>>>Wilson

nome[7:]
>>>Rocha de Campos

nome[6:11]
>>>Rocha

nome[6:16:2]
>>>Roc

nome[:]
>>>Wilson Rocha de Campos

nome[::-1]
>>>Mirror the string
>>>sopmaC ed ahcoR nosliW


```

>[!info] We can use negative values to get from right to left
>nome[-6:]
>*Will print Campos*


***
***

#### Multi-line Strings / Triple Strings
#multilinestring #triple #triplestrings

Use ===triple double quotes=== or ===triple single quotes===

```python
nome = "Wilson"

msg = f"""
	Olá meu nome é {nome},
Eu estou aprendendo Python.
		Esta mensagem tem diferentes recuos.
"""

print(msg)
```



***
[[Repetition Structures (Loop)]] | [[Project 1 - Bank]]
#### Tags
***
#strings 

[^1]: [Built in String Functions](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/string_1.py)
[^2]: [Format Strings](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/string_2.py)
[^3]: [Slice String](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/string_3.py)
[^4]: [Multi Line String](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/string_4.py)
