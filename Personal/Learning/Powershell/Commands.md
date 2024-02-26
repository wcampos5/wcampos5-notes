PowerShell Reference[^1]
***
#powershell #commands

#### Create a file in the current directory
```powershell
New-Item -Path . -Name "testfile1.txt" -ItemType "file" -Value "This is a text string."
```

#### Remove New Line at the end of a variable
###### Get gcloud access token
#removenewline #EOF #interpolation 
$auth = gcloud auth print-identity-token
$auth = $auth.TrimEnd("`n")  # Remove new line if it exists

#### Send to Clipboard
#clipboard
```powershell
$text="Text"
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Clipboard]::SetText($text)
```

#### Add to Path
#path #environment #variable #systemvariable
```powershell
$env:Path += ";C:\Scripts"  # Replace "C:\Scripts" with the actual path to your script directory
```


#### Assign return to a variable
#variable #assing #return

Send gcloud command to $auth variable

```powershell
gcloud auth print-access-token | tee-object -variable auth
```




***
[[]] | [[]]
#### Tags
***
[^1]: [PowerShell Reference](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item?view=powershell-7.4)