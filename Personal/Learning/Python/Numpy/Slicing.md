#slice #slicing #substrings #sublists
***

>[!Warning] Main difference between core slice x numpy slice
>Core sub-list/string makes a copy of the instance
>Numpy refers the original list in the memory (It is by Reference NOT by value), means that any ==changes== in the sub-list ==will impact the origin list==


#### Core Slice example

```python
listA = list(range(10)) #creating listA
print(listA)

listB = listA[0:5] #Gettinh the 5 initial elements
print(listB)

listB[0] = 10 # Update the first B element doesn't update A element

print(f"Lista A: {listA}")
print(f"Lista B: {listB}")
```
>[!example] Returns
>\[0, 1, 2, 3, 4, 5, 6, 7, 8, 9\]
\[0, 1, 2, 3, 4\]
Lista A: \[0, 1, 2, 3, 4, 5, 6, 7, 8, 9\]
Lista B: \[10, 1, 2, 3, 4\]
>>[!warning] Updating the B\[0\] doesn't impact A\[0\]


#### Numpy Slice example

```python
listA = np.arange(10)
print(f"ListA created: {listA}")

listB = listA[0:5]
print(f"ListB created: {listB}")

listB[0] = 10

print(f"ListB[0) updated to 10]")
print(f"ListB updated: {listB}")

print(f"ListA after B changes: {listA}")
```
>[!example] Returns
>ListA created: \[0 1 2 3 4 5 6 7 8 9\]
ListB created: \[0 1 2 3 4\]
ListB\[0\] updated to 10
ListB updated: \[10  1  2  3  4\]
ListA after B changes: \[10  1  2  3  4  5  6  7  8  9\]
>>[!failure] Updating the B\[0\]  UPDATES  A\[0\]

To avoid this behavior we need to use the copy() function at the end
```
listB = listA[0:5].copy()
```



