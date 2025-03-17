#smusagecases #smfunctionaltests #functionaltest


>[!info] Reference tables and sequence to apply these tests
>[[Functional test - Streaming to Batch#SM Streaming to Batch Prediction Sequence| Tables and Sequence]]
>[[Schedule Maintenance pre-prediction sequence| Pre-Prediction Sequence]]

#### Usage Case : Region
- REGION: NA > COUNTRIES: "USA", "CAN"
- REGION: EU > COUNTRIES: "DEU", "ITA", "GBR", "ESP", "FRA"


#### Usage Case : Taxonomy Events
_Column name: cvdc62_msg_metadata_msg_n_
	The events utilized in the prediction pipeline are related to vehicle end of trip, when customer perform vehicle key off. List of events:
##### Positive
		- MOTIVE_MODE_END
		- MotiveModeEnd
		- XEVMotiveModeEnd
		- MotiveModeEndAlert
		- XEVMotiveModeEndAlert
##### Negative
		-Null
		-Other than above ones


#### Usage Case: General Validations
##### Positive
- VIN not null
- Warranty_start_date columns must be different of: '0001-01-01'
##### Negative
- Vin Null
- Warranty_start_date columns must be equals to: '0001-01-01'


#### Usage Case: Storage elegible events for SM
##### Positive
- Verify if the VIN send for first time is storaged:
  Fields:
		- Odometer
		- Oil Life Percentage
		- Event Time Stamp
		- Country
		- Created On
		- Updated On

#### Usage Case: Common Validation for eligible or prediction

##### Positive
Odometer
	odo >= 0
	last received odo = current odo (timestamp is update in last received events table)
	last received odo > received odo (Must be supressed)
	trip_limit: last odo vs current >= 1200 (Should be persited, but supressed)
Event Timestamp
	First time event
	New event should occur after 24h
	
	
##### Negative
Odometer
	odo < 0
	trip_limit: last odo vs current >= 1199 (Should be persisted and predicted)
Event Timestamp
	New event occurred prior to 24h




 