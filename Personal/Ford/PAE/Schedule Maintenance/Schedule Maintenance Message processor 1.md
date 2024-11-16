#sm #schedulemaintenance #messageprocessor #smtest #smmanual #ffilho8


- No BD verificar o VIN mais antigo alterado na tabela
_gdia_prog_na.oil_life_last_message_received_

```sql
select * from gdia_prog_na.sm_last_message_received order by updated_on asc limit 10;
```

```sql
select * from gdia_prog_na.sm_last_message_received where vin='XXXXXXXXXXX'
```

>[!note] Anotar o Oil Life e o Odometer

- Verificar se este VIN existe na tabela Model
_gdia_prog_na.sm_schedule_detail_
(Precisa estar nas duas tabelas)

```sql
select * from gdia_prog_na.sm_schedule_detail limit 10
```

```SQL
select * from gdia_prog_na.sm_schedule_detail where vin='XXXXXXXXXXX'
```


#### Data preparation to Publish to PubSub

##### Through Pub/Sub

Update the Json fields: 
- vin
- arrivalTime 
	- get either by [currentmillis](https://currentmillis.com/)
	- date +%s%N | cut -b1-13
- derived_event_timestam
- odometerMasterValue


Data to Test
#vin

|                   |             |
| ----------------- | ----------- |
| Vehicle           | Environment |
| WF0TK3SU8MMA54542 | Dev         |
| WF0TK3SU8MMA54542 | QA          |
| 1FTFW1RG2KFA07644 | Stage       |



QA Example
```json
{
  "year": 2023,
  "vin": "WF0TK3SU8MMA54542",
  "authmode": "Retail",
  "warranty_start_date": "2019-01-01",
  "arrivalTime": 1724940431140,
  "derived_event_timestamp": "2022-05-21 01:01:01",
  "odometerMasterValue": 2700,
  "model": "Transit 2020 ",
  "partition_region_x": "NA",
  "rawpayloadmetadata_customer_countries": [
    {
      "code": "USA"
    }
  ],
  "authStatus": "AUTHORIZED",
  "fuelType": "G",
  "make": "F"
}
```

- Go to Pub/Sub 
	Topic ID: a54020-pp-scheduled-maintenance-qa-na 
	into Messages Tab

- Step1 - PUBLISH Message
	Copy the JSON into Message Body
	
Open the Cloud Run and verify the logs
	
	Also could be checked into the database


##### Through Local Running

- Run the pae-service-oil-life-gcp locally 
	(pointing to the desired environment)

After update the above JSON tempate fields
Encode to base64
	Save the file as Text, then encode using
```bash
cat /path/to/file/file.txt |base64 | tr -d '\n' |clip
```

Update the **data** field in the  below template:
```json
{
  "message": {
    "attributes": {
      "key": "value"
    },
    "data": "ewoieWVhciI6IDIwMjAsCiJ2aW4iOiAiMUZURlcxRUQ4TUZBMDAzNDIiLAoiYXV0aG1vZGUiOiAiRmxlZXQiLAoid2FycmFudHlfc3RhcnRfZGF0ZSI6ICIyMDIxLTA3LTIxIiwKImFycml2YWxUaW1lIjogMTcyMzQ4NzQyMDgwNCwKImRlcml2ZWRfZXZlbnRfdGltZXN0YW1wIjogIjIwMjItMDktMTIgMTg6NTA6MDEiLAoib2RvbWV0ZXJNYXN0ZXJWYWx1ZSI6ICIxNjA5OTQwIiwKIm1vZGVsIjogIkZPUkQgIEVTQ0FQRSA0LURSIDRYMiBTRSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIsCiJwYXJ0aXRpb25fcmVnaW9uX3giOiAiTkEiLAoiZW5nT2lsTGlmZV9QY19BY3RsIjogOTAsCiJyYXdwYXlsb2FkbWV0YWRhdGFfY3VzdG9tZXJfY291bnRyaWVzIjogW3sgImNvZGUiOiAiVVNBIiB9XSwKImF1dGhTdGF0dXMiOiAiQVVUSE9SSVpFRCIsCiJmdWVsVHlwZSI6ICJHIiwKIm1ha2UiOiAiRiIKfQo="
  },
  "subscription": "awddaw",
  "deliveryAttempt": 1
}
```

- Open the Postman
	Go to Authorization Tab
		**Bearer Token**
			Get the user gcloud token
			```gcloud auth print-identity-token |sed 's/\r\n//g'| clip```
			Copy into token text box
		**Body**
			Select raw->json
			Copy/Paste above JSON template

