#sm #smsequence #smprediction


common_tcu4g_ingestion_na_prognostics_lst_3_day 
(Recebe os dados do DAP)

#### Pre-processamento:
	Orchestrador: m1-aim-pae
	astro\active_dags\sm_na_prediction_main.py
		astro\resources\sm_na_pre_prediction_suppression_bq.yaml
			Repo:
			gcp-ol-prog/bq/prog_dags_sql/sm_prediction
				sm_pre_prediction_suppression.sql
				
##### Input Required
ford-d7910739734ba7b122bc0c0b.common_tcu4g_ingestion_na_prognostics.common_tcu4g_ingestion_na_prognostics_lst_3_day

##### Output
sm_na_tcu4g_valid_events_latest
sm_na_vin_ingestion_status
sm_na_predictions
sm_na_predictions_formatted (Formatado para o time de VHA)

	astro\resources\sm_na_pre_prediction_suppression_bq.yaml
		
#### Processamento:
	Orchestrador: m1-aim-pae
	astro\active_dags\sm_na_prediction_main.py
		astro\resources\sm_na_prediction_bq.yaml
			Repo:
			gcp-ol-prog/bq/prog_dags_sql/sm_prediction/na
				Query:
					prediction.sql

##### Input Required
```
ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model
```
```
ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_tcu4g_valid_events_latest
```
```
ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_schedule_interval
```

##### Output



