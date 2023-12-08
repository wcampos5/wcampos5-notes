Reference[^1]
***

> [!example] Integer to Float
Using the built in method
`preco = 10`
`preco = float(preco)`
*Will print 10.0*
>
I will get the same float if divide it.
`preco = 10 / 2`
*Will print 5.0*

> [!example] Float to Integer
Using the built in method
`preco = 10.0`
`preco = int(preco)`
*Will print 10*
If we divide in integer using double slash ==//== forces to return an integer
`print(preco // 2)`
*Will print 5*
> > [!important] int() Constructor will consider only the LEFT side of the  period (.) NOT ROUND to floor or ceil


> [!example] Number to String
`preco = 10.50`
`idade = 46`
`print(str(preco))`
10.5
`print(str(idade))`
46
`texto = f"idade {idade} preco {preco}"`
`print(texto)`
idade 46 preco 10.5

> [!example] String to Number
`preco = "10.50"` The ==double quotes== denotates string
`print(float(preco))`
10.50

***
[[Variables and Constantes]] | [[Input and Output Functions]]

#### Tags
***
#typesconversion #conversiontype #intotofloat #floattoint #numbertostring #stringtonumber


[^1]: [Convertendo Tipos](https://github.com/digitalinnovationone/trilha-python-dio/blob/main/00%20-%20Fundamentos/convertendo_tipos.py)
