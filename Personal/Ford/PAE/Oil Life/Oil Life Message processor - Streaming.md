#oillife #messageprocessor #oillifetest #oillifemanual #ffilho8


- No BD verificar o VIN mais antigo alterado na tabela
_gdia_prog_na.oil_life_last_message_received_

```sql
select * from gdia_prog_na.oil_life_last_message_received order by last_updated desc limit 10;
```

```sql
select * from gdia_prog_na.oil_life_last_message_received where vin='XXXXXXXXXXX';
```

>[!note] Anotar o Oil Life e o Odometer

- Verificar se este VIN existe na tabela Model
_gdia_prog_na.oil_life_last_message_received_
(Precisa estar nas duas tabelas)

```sql
select * from gdia_prog_na.oil_life_model limit 10
```

```SQL
select * from gdia_prog_na.oil_life_model where vin='XXXXXXXXXXX'
```


#### Data preparation to Publish to PubSub

##### Through Pub/Sub

Update the Json fields: 
- vin
- arrivalTime 
	- get either by [currentmillis](https://currentmillis.com/)

```bash
date +%s%N | cut -b1-13
```

- derived_event_timestam
- odometerMasterValue
- engOilLife_Pc_Actl


Data to Test
#vin

|                   |             |
| ----------------- | ----------- |
| Vehicle           | Environment |
| 1FTFW1E81NKD62847 | Dev         |
| 1FTFW1ED8MFA00342 | QA          |
| WF03XXTTG3LA22330 | STAGE       |

##### Dev Example
```JSON
{
  "year": 2020,
  "vin": "1FTFW1E81NKD62847",
  "authmode": "Fleet",
  "warranty_start_date": "2021-07-21",
  "arrivalTime": 1731508907204,
  "derived_event_timestamp": "2022-10-12 09:32:01",
  "odometerMasterValue": "67000",
  "model": "FORD  ESCAPE 4-DR 4X2 SE                                    ",
  "partition_region_x": "NA",
  "engOilLife_Pc_Actl": 20,
  "rawpayloadmetadata_customer_countries": [{ "code": "USA" }],
  "authStatus": "AUTHORIZED",
  "fuelType": "G",
  "make": "F"
}
```

##### QA Example
```json
{
  "year": 2020,
  "vin": "1FTFW1ED8MFA00342",
  "authmode": "Fleet",
  "warranty_start_date": "2021-07-21",
  "arrivalTime": 1731523416250,
  "derived_event_timestamp": "2022-10-25 09:32:01",
  "odometerMasterValue": "1630000",
  "model": "FORD  ESCAPE 4-DR 4X2 SE                                    ",
  "partition_region_x": "NA",
  "engOilLife_Pc_Actl": 30,
  "rawpayloadmetadata_customer_countries": [{ "code": "USA" }],
  "authStatus": "AUTHORIZED",
  "fuelType": "G",
  "make": "F"
}
```

##### Stage Example
```JSON
{
  "year": 2020,
  "vin": "WF03XXTTG3LA22330",
  "authmode": "Fleet",
  "warranty_start_date": "2021-07-21",
  "arrivalTime": 1731603009182,
  "derived_event_timestamp": "2023-01-02 09:32:01",
  "odometerMasterValue": "83000",
  "model": "FORD  ESCAPE 4-DR 4X2 SE                                    ",
  "partition_region_x": "NA",
  "engOilLife_Pc_Actl": 70,
  "rawpayloadmetadata_customer_countries": [{ "code": "USA" }],
  "authStatus": "AUTHORIZED",
  "fuelType": "G",
  "make": "F"
}
```

##### Prod Example
```JSON
{
	"year": 2020,
	"vin": "WF03XXTTG3LA22330",
	"authmode": "Fleet",
	"warranty_start_date": "2021-07-21",
	"arrivalTime": 1731612942704,
	"derived_event_timestamp": "2023-01-15 09:32:01",
	"odometerMasterValue": "93000",
	"model": "FORD  ESCAPE 4-DR 4X2 SE                                    ",
	"partition_region_x": "NA",
	"engOilLife_Pc_Actl": 70,
	"rawpayloadmetadata_customer_countries": [{ "code": "USA" }],
	"authStatus": "AUTHORIZED",
	"fuelType": "G",
	"make": "F"
}
```


- Go to Pub/Sub 
	Topic ID: a54020-pp-oil-life-scoring-qa-na into Messages Tab

- Step1 - MESSAGES -> PUBLISH Message
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

Ref[^1]
***


***
[[Oil Life Functional Test]]