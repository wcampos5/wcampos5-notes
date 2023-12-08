Reference[^1]
***
Used with comparison operators to mount logic expressions

|Operator|Description |
|--------|-----------|
|and| All boolean must be True|
|or| At least one boolean comparison must be True|
|not|Denial of condition evaluated|
|()|Provide precedence to the evaluation|

> [!code]
> `saldo = 1000`
> `saque = 200`
> `limite = 100`
> `conta_especial = True`

> [!example] Examples
> `saldo >= saque and saque <= limite`
> False
> `saldo >= saque or saque <= limite`
> True
> `not 1000 > 1500`
> True


> [!code]
> `emergency_contact = []`
> >[!warning] Empty **Sequence** (List, Tuple, Range) in Python returns False

> [!example] Examples
> not emergency_list
> True
> 


>[!code]
>`not ""`
>>[!warning] Comparing an **empty string** will return **False** because
>>A String is a **Sequence** of chars
> 
> 

> [!example] Examples
> > `not ""`
> True

#### Precedency with parenthesis

> [!example]
> `(saldo >= saque and saque <= limit) or `
> `(conta_especial and saldo >= saque)`
> True

***
[[Attribution Operators]] | [[Identity Operators]]





#### Tags
***
#operators #logic #logicoperator #and #or #not #precedence

[^1]: [Logic Operators](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/operadores_logicos.py)