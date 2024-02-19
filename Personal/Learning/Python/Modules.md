#python #modules

Ref[^1]
***
#### Modules
It is a python file that contains a bunch of re-usable functions that you can import to use.

D:/mymodules/myfunctions.py
>[!example]
```python
def printMe(msg="Deafault message value"):
	print(msg)
```
```python
def printList(L[]):
	for x in L:
		print(x)
```

My project python file
>[!code]
```python
import sys
sys.path.append('D:/mymodules/')
import myfunctions as f
f.printMe('¿Hola como estas?')
```



***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)