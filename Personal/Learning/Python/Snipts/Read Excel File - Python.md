
Best way to process line by line file executing some action

#### read excel file line by line
#readfile #linebyline #pythonreadfile

>[!info] Make sure to install `openpyxl`
>`pip -m install openpyxl`



```Python
import pandas as pd

def process_row(row):
  print(row.iloc[0])
  print(row.iloc[1])

read_xl_file = pd.read_excel("C:/path/to/file/file_name.xlsx", sheet_name="vin_test", engine="openpyxl")

print("Print Excel File")
print(read_xl_file.columns)

read_xl_file.apply(process_row, axis=1)
# print(result)
```
