Used to flow control deviation based on the specific conditions

#### If
>[!example]
```python
saldo = 2000.0
saque = float(input("Qual é o valor a sacar? "))

if saldo >= saque:
	print("Saque realizado com sucesso!")
if saldo < saque:
	print("Saldo insulficiente")
```


#### If-Else
Used when we have 2 possible conditions
```python
saldo = 2000.0
saque = float(input("Qual é o valor a sacar? "))

if saldo >= saque:
	print("Saque realizado com sucesso!")
else:
	print("Saldo insulficiente")
```

#### If-elif-else
Used when we have more than 2 possible conditions
```python
option = int(input("Informe uma opcao: [1] - Sacar \n[2] - Extrato: "))

if option == 1:
	valor = float(input("Digite o valor a sacar: "))
	#...
elif option ==2
	print("Exibindo o extrato... ")
else:
	sys.exit("Invalid Option")
```


#### Ternary operator
#ternary

>[!example]

```python
status = "Sucesso" if saldo >= saque else "Falha"
print(f"{status} ao realizar o saque!")
```


***
[[Indentation and Blocks]] | [[Repetition Structures (Loop)]]

#### Tags
***
#conditional #structure #if #if-else #if-else-if #if-elif-else #nested 