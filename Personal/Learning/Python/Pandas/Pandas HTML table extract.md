Pandas with HTML Data[^1]
***

###### Stocks Portfolio DataFrame

```python
portifolio_df = pd.DataFrame({"Sticker Symbol":["AMZ", "GOOGL", "F"],

                              "Number of Share":[1000, 500, 10000 ],

                              "Price per Share":[154.62, 142.65, 11.46]})
```

  Sticker Symbol  Number of Share  Price per Share
0            AMZ             1000           154.62
1          GOOGL              500           142.65
2              F            10000            11.46


#### Multiply
#pandas #multiply
Calculate the overall value of Shares

```python
overall_value = portfolio_df["Price per Share"] * portfolio_df["Number of Share"]
```

0    154620.0
1     71325.0
2    114600.0
dtype: float64

#### Sum
We can sum the overall result adding *.sum* to the result
#sum 
```python
overall_value.sum()
```
>340545.0



***
[[]] | [[]]
#### Tags
***
[^1]: [Pandas with HTML Data]https://projects.coursera.org/run/FCSBOA6V6IZMRK7M894U)



