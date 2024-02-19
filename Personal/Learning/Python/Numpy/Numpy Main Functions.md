
#### Arange
#arrange #arange #array #arraycreate #reshape

YES, is aRange with only one R

>[!example] Examples

Create an array with 0 to 99 as elements
```python
np.arange(100)
```
>[!important] Follow rules as Range()
> You can pass start, end, step


#### Array Mask \/ Index Array
#array #mask #arraymask #boolean #arrayboolean #arrayindex
Used to access the array using another array within the desired index 
The index array could be in a boolean form.

>[!Important]
>Any Arithmetic and Logic Operator could be used as a mask
>\<, \>, \=, &, and \|\|, or, %...

```python
listA = np.random.randint(1,60,5)

print(f"ListA: {listA}")
print(f"Print by array_index: {listA[[0,1,4]]}")
print(f"Printing by array Boolean mask: {listA[[True, True, False, False, True]]}")
print(f"Printing even elements {listA[listA % 2 == 0]}")
```
>[!example] Print
>ListA: [21 52 18 27 55]
Print by array_index: [21 52 55]
Printing by array Boolean mask: [21 52 55]
Printing even elements [58 20 50]




#### Re-Shape
#reshape

```python
nd = np.arange(50).reshape(2,5,5)
print(nd)
```
>[!example] Returns
>\[\[
>\[ 0  1  2  3  4\]
>\[ 5  6  7  8  9\]
>\[10 11 12 13 14\]
>\[15 16 17 18 19\]
>\[20 21 22 23 24\]\] 
>
>\[\[25 26 27 28 29\]
>\[30 31 32 33 34\]
>\[35 36 37 38 39\]
>\[40 41 42 43 44\]
>\[45 46 47 48 49\]
>\]\]


***


#### Random
#random #permutation

- Random is a package
- Permutation is a method

Rand(10)
```python
print(np.random.rand(10))
#It could be re-shape in an array
#np.random.rand(3,2)
```
>[!example] Returns 10 samples between 0 and 1
>\[0.61000609 0.88872049 0.95269025 0.31714545 0.96902569
>0.24661658 0.22452764 0.7662886  0.66030581 0.01521178\]


Randint(start, end, size)
```python
a = np.random.randint(1,60,6)
print(a)
```
>[!example] Returns
>\[32 59 23 13  5 23\]


#### Randn
Return a sample (or samples) from the "**standard normal**" distribution.


Random array
```python
print(np.ramdom.rand())
print(np.random.rand(3,2))
```
>[!example] Returns respectively
>==randn:==
>0.2328022694754981
>
>==randn(3,2):==
>\[\[ 0.40051645 -0.43645002\]
>\[-0.58119497  1.31484518\]
>\[-0.88980855  2.51199506\]\]


#### Randint
```python
a = np.random.randint(1,60,6)
print(a)
```
>[!example] Returns
>\[32 59 23 13  5 23\]




If the param is a n-Dimension it will permute the row index
```python
b = np.random.permutation(np.array([[1,2,3,4,5,6],[7,8,9,10,11,12]]))

print(b)
```





