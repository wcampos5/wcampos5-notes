#find #index #argwhere #lookingfor
***

Find the indices of array elements that are non-zero, grouped by element.

```python
listA = np.arange(10)
listA[3] = -77
print(f"ListA: {listA}")  

idx = np.argwhere(listA==-77)[0][0]
print(idx)
```
>[!example] Returns
>3

