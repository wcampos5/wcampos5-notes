#smstreamingtobatch #sm #smfunctionaltest
Principios
- Create a main dag file adding:
  - call unit_test_load
	  - Script SQL that will load the dummy data.
		[[SM - Pre Prediction - Usage cases|Candidates usage cases]]
		[ol_preprocess_unit_test_load sample](https://github.ford.com/gdia-prognostics/gcp-ol-prog/blob/dev/bq/development/prog_dags_sql_sandbox/preprocess/ol_historical_preprocess_unit_test_load.sql)
  - call streaming implementation
  - call verification

- Input
	- Create an input table mocking the data for each usage case 
	(_unit_test_load.sql_)
	- Insert values into input
- Implementation
	- Create config file .ini (ver com Rapha)
- Verification
	- Validation
	- Cleanup mock data



#### SM Streaming to Batch Pre-Prediction Sequence

##### Tables:
- sm_na_vin_ingestion_status
- sm_na_tcu4g_valid_events_latest

- sm_na_predictions
- sm_na_predictions_formatted (Formatado para o time de VHA)



