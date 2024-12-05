Dictionaries[^1]
***
#python #dictionary #dictionaries

 - NOT ORDERED Set of key:value
 - **Key** MUST be IMMUTABLE
 - Could be declared with ***curly braces {}*** or its constructor
 - support nested dictionaries

>[!example] Examples
```python
pessoa = {"nome": "Wilson", "idade": 46}
pessoa = dict(nome="Wilson", idade=46)
pessoa["telefone"] = "NN-NNNN-NNN" #add a new key telefone
```


#### Looping through dictionaries

>[!example] Data
```python
#Nested Dictionary
contatos = {
  "wcampos5@gmail.com": {"nome":"Wilson","sobrenome":"Campos"},
  "karlakatarine@gmail.com": {"nome":"Karla","sobrenome":"Katarine", "document": {
    "rg": "123"                        
    }
 }

}
```

#loopdictionary
>[!code] Code
```python
for key in contatos:
  print(key, contatos[key])
```
> [!example] Output
> wcampos5@gmail.com {'nome': 'Wilson', 'sobrenome': 'Campos'}
>karlakatarine@gmail.com {'nome': 'Karla', 'sobrenome': 'Katarine', 'document': {'rg': '123'}}


>[!code] Code
>>[!warning] Recommended Loop Through
```python
for key, value in contatos.items():
  print(key, value)
```
> [!example] Output
> wcampos5@gmail.com {'nome': 'Wilson', 'sobrenome': 'Campos'}
>karlakatarine@gmail.com {'nome': 'Karla', 'sobrenome': 'Katarine', 'document': {'rg': '123'}}

#### Methods

|Method|Description|Tag|
|----|------------------|---|
|add()|Add new element/Iterable| #dictadd|
|clear()|Left it empty| #dictclear|
|copy()|Create a new instance id| #dictcopy|
|{}.fromkeys()|Create dict with customized keys| #dictfromkeys|
|get()|Return the key. Return a tuple, None or default value for invalid keys| #get|
|items()|Return a list os tuples|#items| #items()|
|values()|Return all values of the dictionary| #values|
|keys()|Return a Iterable with all keys| #keys|
|pop()|Remove and Return deleted key. Accept a default value to return|#pop|
|popitem()|Remove item a item. Throws KeyError when be empty | #popitem|
|{}.setdefault|Adiciona new pair key:value or return the existent one | #setdefault|
|{}.update()|Act like a DML. Update Dictionary structure and content. If key param exits then it will be updated, else will be created/added | #dictupdate #update|
|in|"item_key" in dict_name["key_name"]. Returns bool| #dictin #in|
|del()|Remove key from dicty| #dictdel #del|

#### {}.fromkeys()

>[!code] fromkeys -> receiving a list of keys
```python
new dict = dict.fromkeys(["nome", "telefone"])
```
> [!success] Creates a dictionary within ***keys = None***


>[!code] fromkeys -> Receiving key and a default value
```python
new_dict = dict.fromkeys(["nome", "telefone"], "vazio")
```
> [!success] Creates a dictionary within ***keys = Default*** value


#### get()
- Looking for the keys, if it it doesn't exist returns None.
	- A default return value could be passed.


>[!example] Data
```python
#Nested Dictionary
contatos = {
  "wcampos5@gmail.com": {"nome":"Wilson","sobrenome":"Campos"},
  "karlakatarine@gmail.com": {"nome":"Karla","sobrenome":"Katarine", "document": {
    "rg": "123"                        
    }
 }
}
```

>[!code] get(key)
```python
print(contatos.get("invalid_key"))
print(contatos.get("wcampos5@gmail.com"))
```
> [!example] Outputs
> None
> {'nome': 'Wilson', 'sobrenome': 'Campos'}

>[!code] get(key, defaul_value)
```python
print(contatos.get("invalid_key", {})) #Returns an epty dict
```


#### {}.setdefault()


>[!example] Data
```python
#Nested Dictionary
contatos = {
  "wcampos5@gmail.com": {"nome":"Wilson","sobrenome":"Campos"},
  "karlakatarine@gmail.com": {"nome":"Karla","sobrenome":"Katarine", "document": {
    "rg": "123"                        
    }
 }
}

contatos
```

>[!code] {}.setdefault()
>>[!warning] Very useful to DATA PATTERN
>> #normalizacaodados #datapattern #pattern #formanormal
```python
contatos.setdefault("wcampos5@outlook.com", {"nome": "Wilson", "sobrenome": "Campos"})

for key, value in contatos.items():
  print(key, value)
```
> [!example] Output
> wcampos5@gmail.com {'nome': 'Wilson', 'sobrenome': 'Campos'}
karlakatarine@gmail.com {'nome': 'Karla', 'sobrenome': 'Katarine', 'document': {'rg': '123'}}
wcampos5@outlook.com {'nome': 'Wilson', 'sobrenome': 'Campos'}



#### {}.update()

>[!example] Data
```python
contatos = {
  "wcampos5@gmail.com": {"nome":"Wilson","sobrenome":"Campos"}
}
```

>[!code] {}.update()
```python
contatos.update({"wcampos5@gmail.com": {"nome":"Wilson"}})
contatos.update({"karlakatarine@gmail.com": {"nome":"Karla","sobrenome":"Katarine"}})

print(contatos)
```
> [!example] Output
> {'wcampos5@gmail.com': {'nome': 'Wilson'}, 'karlakatarine@gmail.com': {'nome': 'Karla', 'sobrenome': 'Katarine'}}



#### del()


>[!example] Data
```python
contatos = {
"wcampos5@gmail.com": {"nome":"Wilson","sobrenome":"Campos"},
"karla@hotmail.com": {"nome": "Karla", "sobrenome":"Katarine"},
"joao_gabriel@gmail.com": 
{"nome": "Joao","sobrenome":"Gabriel","telefone": "XXX"}

}
```

>[!code] {}.del()
>>[!warning] Delete the Dictionary
>>`contatos.del()`
```python
del contatos["joao_gabriel@gmail.com"]["telefone"]
del contatos["karla@hotmail.com"]
print(contatos)
```
> [!example] Output
> {
> 'wcampos5@gmail.com': {'nome': 'Wilson', 'sobrenome': 'Campos'}, 'joao_gabriel@gmail.com': {'nome': 'Joao', 'sobrenome': 'Gabriel'}
> }




***
[[Data Structure - Set]] | [[Functions]]
#### Tags
***
[^1]: [Dictionaries](https://github.com/digitalinnovationone/trilha-python-dio/tree/main/01%20-%20Estrutura%20de%20dados/04%20-%20Dicion%C3%A1rios)
