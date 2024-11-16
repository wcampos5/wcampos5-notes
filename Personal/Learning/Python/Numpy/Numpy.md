#numpy
Ref[^1]
***

Q&A
*Should numpy be used ONLY for elements that have same type?*
	It have customized function that are customized to run much faster when we have the same type element, specially for numeric data.

#### Import
```python
import numpy as np
```

#### Assign
#assignnumpy #assign
- ##### Values
```python
assign_list = np.array([item1, item2...])
assign_tuple = np.array((1, 2, 3, 4, 5, 6))
```

- Values and types:
```python
assign_tuple = np.array((1, 2, 3, 4, 5, 6), dtype='i')
```
	'i' -> Integer
	'f' -> Float
#### Returning type
#type #typenumpy
```python
type(assign_list)
```
	Returns *numpy.ndarray*
	ndarray stands for n-Dimensions array

```python
assign_list.dtype
```
	Returns dtype('Int32')


#### Dimensions
#dimensions #numpydimensions

```python
c = np.array([[1,2,3],[4,5,6]])
```

Printing dimensions
```python
two_dim_array = np.array([[1,2,3],[4,5,6]])
print(two_dim_array.ndim)
```
	Will print 2

```python
three_dim_array = np.array([[[1,2,3],[4,5,6]],[[1,2,3], [4,5,6]]])
print(three_dim_array)
```
==3Dimensions array is an array of 2Dimensions arrays==

#### Shape
#shape #shapeproperties #shapenumpy

>[!code]
```python
three_dim_array = np.array([[[1,2,3],[4,5,6],[0,-1,0]],[[-1,-2,-3],[-4,-5,-6],[0,0,1]]])
```


```python
three_dim_array.shape
```
>[!example] Returns
(2, 3, 3)
1. How many 2D Arrays are there
2. How many 1D Arrays are inside the 2Ds
3. For each 1D array, how many elements are there

So, then we can use it like: (To discover the number of elements in each 1D arrays)

	three_dim_array.shape[2]


#### Size
#size #bytes #nbytes

- Elements:
Total of array element
```python
array_name.size
```

- Bytes
Total of bytes the the structure takes on the memory
```python
array_name.nbytes
```




***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)


