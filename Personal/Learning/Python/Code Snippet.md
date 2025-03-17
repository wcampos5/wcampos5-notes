#pythoncodesnippet

Formatted print()
#fprint
```python
print(f"Text {variable}")
```

#fprintjson
[[Functions#Required Params combined *args and * *kwargs|*args **kwargs reference]]
```Python
# Adiciona quebra de linha para cada item do dicionario
# Armazena o par chave: valor 
meta_data = "\n".join([f"{key.title()}: {value}" for key, value in kwargs.items()])
```


If-else
#if-else-snippet
```python
if variable < variable2:
	do
else:
	do
```

If-elif-else
#if-elif-else-snippet
```python
if variable < variable2:
	do
elif variable > variable2:
	do
else:
	do
```

Nested if-elif-else
```python
if variable < variable2:
	if variable3 < variable4:
		do
	elif variable3 > variable4:
		do
elif variable > variable2:
	do
else:
	do
```

Enumerate
#enumerate-snippet
```python
for index,custom_obj in enumerate(iterable)
	print(f"{custom_obj}:{iterable}")
```




#### Tags
***
#snippet #codesnippet #pythonsnippet
