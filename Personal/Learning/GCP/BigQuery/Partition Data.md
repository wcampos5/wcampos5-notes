Ref[^1]
***
#bq #bqpartition #partitiontime #partitiondata #partitioncolumn

#### Get Partitioned Data (Partition Column)
#partitiontime

```SQL
SELECT \* FROM `<project.dataset.table_name>`
WHERE 
DATE(<partition_field>) between '1900-01-01' AND '1980-01-01'
-- partition_field is birth_date for this example
```


#### Get Partitioned Data (Partition Time)

```SQL
SELECT _PARTITIONTIME AS pt, \* FROM `<project.dataset.table_name>`
```


***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)