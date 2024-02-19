Fundamentals of Pandas[^1]
***
#pandas 

 - Pandas is a data manipulation and analysis tool built on top of Numpy.
- Use a data structure known as a DataFrame.
- Its a very powerful and easy way to manipulate tables 
	(rows and columns)

#### Series vs DataFrame
#series 

Series is considered a single column of a DataFrame.


#### Imports
 ```python
 import pandas as pd
```

Two Dimensions DataFrame
#dataframe #2d #2d-dataframe

Assuming we wanna store client bank information in a DataFrame
 - ID
 - Name
 - Net worth (renda liquida/saldo)
 - Number of years within the bank

```python
client_df = pd.DataFrame({'Client ID':[111, 222, 333, 444],
						 'Client Name':['Wilson', 'Joao', 'Maria', 'Karla'],
						 'Net Worth [$]':[3500, 29000, 10000, 2000],
						 'Year with Bank':[3, 4, 9, 5]})
```

>[!example] Print Dataframe

   ID    Name  Net Worth  Age with Bank
0   1  Wilson      29000             20
1   2   Karla       2500                5
2   3    Joao      10000              2
3   4   Maria       5000              1


#### Verifying Type
```python
type(client_df)
```

>[!example] Outputs
>>```
>>pandas.core.frame.dataframe
>>```

#### Head
#head
Show the (n) Head lines


```python
client_df.head(2)
```

>[!example] print fist 2 top lines

   ID    Name  Net Worth  Age with Bank
0   1  Wilson      29000             20
1   2   Karla       2500              5

#### Tail
#tail
Show the (n) Tail lines
```python
client_df.tail(2)
```







***
[[]] | [[]]
#### Tags
***
[^1]: [Fundamentals of Pandas](https://projects.coursera.org/run/FCSBOA6V6IZMRK7M894U)