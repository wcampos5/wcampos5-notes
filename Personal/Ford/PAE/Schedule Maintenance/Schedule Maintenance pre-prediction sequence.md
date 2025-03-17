#sm #smsequence #smpreprediction


common_tcu4g_ingestion_na_prognostics_lst_3_day 
(Recebe os dados do DAP)

#### Pre-processamento:
	Orchestrador:
	astro\active_dags\sm_na_prediction_main.py
		astro\resources\sm_na_pre_prediction_suppression_bq.yaml
			Repo:
			gcp-ol-prog/bq/prog_dags_sql/sm_prediction
				sm_pre_prediction_suppression.sql
				
				

	astro\resources\sm_na_pre_prediction_suppression_bq.yaml
		
#### Processamento:
	astro\active_dags\sm_na_prediction_main.py
		astro\resources\sm_na_prediction_bq.yaml
			Repo:
			gcp-ol-prog/bq/prog_dags_sql/sm_prediction/na
				Query:
					prediction.sql

para alimentar as tabelas abaixo

#### Output
sm_na_tcu4g_valid_events_latest
sm_na_vin_ingestion_status
sm_na_predictions
sm_na_predictions_formatted (Formatado para o time de VHA)

