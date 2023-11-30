#### For and While

===For===
Using iterable
Used when we do know previously the repetition times.
Also, used to loop through an object. (Iteravel/finite) 

>[!example] Print vowels in upper case
```python
text = input("Digite um texto: ")
VOWELS = "AEIOU"

for letter in text:
	if letter.upper() in VOWELS:
		print(letra, end="")
print()

```

using range()

>[!example] Count 0 to 10
```python
for number in range(1,11):
	print(number, end=" ")
```


===While===
Used to repeat a loop many time based on any condition.
>[!failure] Be careful
>	You MUST to force a finite number of times to run

```python
option = -1

while option != 0:
	option = int(print("[1] Sacar \n[2] Extrato \n[0] Sair \n:"))

	if option == 1:
		print("Sacando... ")
	elif option == 2:
		print("Exibindo o extrato... ")
```


#### Break

>[!example]
```python
while true:
	option = int(print("Entre com um numero: "))

	if option == 10:
		break
	print(option)
```

#### Continue

>[!example]
```python
for number in range(101):
	if number % 3:
		continue
	print(number, end=" ")
```



***
[[Conditional Structures]] | [[Strings]]
#### Tags
***
#for #while #break #repetition