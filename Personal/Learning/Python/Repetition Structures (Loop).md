Reference - For[^1]
Reference - While[^2]
Reference - Break |Continue[^3]
***
#python
#### For and While
Projetado para iterar sobre sequências como listas, tuplas, strings e intervalos.

Comumente um loop usado para iterar sobre um intervalo é conhecido como **for i**, enquanto loops usados para elementos são chamados de **for each**.

>[!loop for i]
>```Python
>for i in range(start,end):
>	print(i)
>````

>[!loop for each]
>```Python
>text = 'Hello'
>for each in text
>	print(each)
>print()
>```


==For==
#for
Using iterable
Used when we do know previously the repetition times.
Also, used to loop through an object. (Iterable/finite) 



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
#range

>[!example] Count 0 to 10
```python
for number in range(1,11):
	print(number, end=" ")
```


===While===
#while
Used to repeat a loop many times based on any condition.
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
#break
>[!example]
```python
while true:
	option = int(print("Entre com um numero: "))

	if option == 10:
		break
	print(option)
```

#### Continue
#continue
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

[^1]: [Repetition Structures - For](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/estrutura_repeticao_for.py)

[^2]: [Repetition Structure - While](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/estrutura_repeticao_while.py)
[^3]: [Repetition Structure - Break | Continue](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/estrutura_repeticao_break.py)

