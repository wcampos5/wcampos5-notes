
# Parse encoded base64 key
$encoded_key=Get-Content "~/vault_key.json" | jq -r '.data.private_key_data'

# Get GCP SA Key in JSON by Decoding the above encoded key and write it to a local file
#base64 #json #powershell
```
# Parse encoded base64 key
$encoded_key=Get-Content "~/vault_key.json" | jq -r '.data.private_key_data'

# Get GCP SA Key in JSON by Decoding the above encoded key and write it to a local file
[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encoded_key)) | Out-File -Encoding ascii ~/gcp_key.json
```


Reference:
***
[Creating GCP Service Account Keys using Vault](https://github.ford.com/Secrets-Management/ford_habitat_vault_policies/blob/dev/OpenSource_GCP_ServiceAccounts.md)
