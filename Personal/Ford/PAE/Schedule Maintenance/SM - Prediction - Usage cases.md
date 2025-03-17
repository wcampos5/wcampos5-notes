#smusagecases #smfunctionaltests #functionaltest #smpredictionusagecase 


>[!info] Reference tables and sequence to apply these tests
>[[Functional test - Streaming to Batch#SM Streaming to Batch Prediction Sequence| Tables and Sequence]]
>[[Schedule Maintenance pre-prediction sequence| Pre-Prediction Sequence]]

#### Usage Case : Miles to KM Conversion
_Column name: next_interval_km_
_Input Table: sm_\<region\>_schedule_interval_
	Insert a vin with a known miles value to convert to  km to validate SQL Function: _CONVERT_MILES_TO_KM_
##### Positive
		- 100 miles
		- 0 miles
##### Negative
		- Null
		- Negative miles value



#### Usage Case : Get Grather Slope
_Column name: odo_model_slope 
Input Table: _ol_na_model_
##### Positive
		- '0.5'
		- '0.6'
##### Negative
		- -0.5
		- '-0.6'


#### Usage Case : Warrant Date
_Column name: warranty_start_date_ 
Input Table: _sm_na_tcu4g_valid_events_latest_
##### Positive
		- '2024-01-01'
##### Negative
		- Null
		- '0001-01-01'


#### Usage Case : Get highest odometer value
_Column name: warranty_start_date_ 
Input Table: _sm_na_tcu4g_valid_events_latest_
##### Positive
		- '2024-01-01'
##### Negative
		- Null
		- '0001-01-01'


#### Usage Case : Next interval KM
_Column name: warranty_start_date_ 
Input Tables: _sm_na_tcu4g_valid_events_latest, sm_na_schedule_interval_

Insert a VIN in _sm_na_schedule_interval_ with miles greather than prior one and set the  _warranty_start_date_ != '0001-01-01' in _sm_na_tcu4g_valid_events_latest_

>[!warning] We need to check for miles for both sources
##### Positive
		- 'i.mileage_km = 96875'
		- 'e.warranty_start_date = 2024-01-01'
Should return the last 2 highest __next_interval_km_
##### Negative 1
		- 'i.mileage_km = null'
		- 'e.warranty_start_date = null'
##### Negative 2
		- 'i.mileage_km = equals to prior one'
		- 'e.warranty_start_date = 2024-01-01'
##### Negative 3
		- 'i.mileage_km = equals to prior one'
		- 'e.warranty_start_date = 0001-01-01'
##### Negative 4
		- 'i.mileage_km = less than prior'
		- 'e.warranty_start_date = 2024-01-01'
##### Negative 5
		- 'i.mileage_km = less than prior'
		- 'e.warranty_start_date = 0001-01-01'



#### Usage Case : Limits Interval
_Column name: i.mileage_km_ 
Input Table: _sm_na_schedule_interval_

Insert at least 3 Limit intervals for a given VIN.

##### Positive
		- 'i.mileage_km = 10000'
		- 'i.mileage_km = 2000'
		- 'i.mileage_km = 30000'
##### Negative
		- Null




Infos:
para cada valor único de [`vin`](vscode-file://vscode-app/c:/Users/wcampos5/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html), apenas a linha com o maior valor de [`odo_model_slope`](vscode-file://vscode-app/c:/Users/wcampos5/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) é incluída no conjunto de resultados final.








 