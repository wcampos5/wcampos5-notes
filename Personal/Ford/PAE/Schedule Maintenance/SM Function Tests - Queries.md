#smqueries #smftqueries

>[!info] Created using the Jypter Notebook: 
>[sm_batch_prediction_batch_ft.ipynb](https://github.ford.com/gdia-prognostics/gcp-ol-prog/functional_tests/sm_prediction/sm_batch_prediction_batch_ft.ipynb)
>#smftpreprediction #smnotebook

### PRE-PREDICTION
#### Select

##### Common

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _common_tcu4g_ingestion_na_prognostics_
│   ├── _common_tcu4g_ingestion_na_prognostics_lst_3_day_
```SQL
-- Select mocked, empty and null vin of SM Functional Test
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.common_tcu4g_ingestion_na_prognostics.common_tcu4g_ingestion_na_prognostics_lst_3_day` WHERE (vin is NULL OR vin like 'SMBCMEF%' or vin = '') AND cvdc62_sha_k = 'sha256_sm_example'
ORDER BY vin;

-- Select mocked by VIN
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.common_tcu4g_ingestion_na_prognostics.common_tcu4g_ingestion_na_prognostics_lst_3_day` WHERE  vin like 'SMBCMEF%%%(1.1.1)';
```

##### SM

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── sm_na_vin_ingestion_status

```SQL
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_vin_ingestion_status` WHERE vin is NULL OR vin like 'SMBCMEF%' or vin = '' ORDER BY vin;

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_vin_ingestion_status` WHERE vin LIKE 'SMBCMEF%%%(1.1.1)';
```

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_tcu4g_valid_events_latest_

```SQL
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_tcu4g_valid_events_latest` WHERE vin is NULL OR vin like 'SMBCMEF%' or vin = '' ORDER BY vin;  

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_tcu4g_valid_events_latest` WHERE vin LIKE 'SMBCMEF%__(1.1.3)';


SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_tcu4g_valid_events_latest`WHERE vin = 'SMBCMEF7_(1.2.12)';
```

#### Insert
##### Common
 ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _common_tcu4g_ingestion_na_prognostics_
│   ├── _common_tcu4g_ingestion_na_prognostics_lst_3_day_
```SQL
--Insert common
INSERT INTO `ford-d7910739734ba7b122bc0c0b.common_tcu4g_ingestion_na_prognostics.common_tcu4g_ingestion_na_prognostics_lst_3_day` (
  vin, partition_date, cvdc62_sha_k, region, partition_country, msg, system_status, p_rf, s_rf, p_lf, s_lf, p_orr, s_orr, p_olr, s_olr, p_irr, s_irr, p_ilr, s_ilr, p_f_p, p_r_p, odometer, ftcp_version, from_table, df_bq_write_time, pae_db_write_ts, auth_mode, fuel_type, model_year, warranty_start_date, event_ts, model, oil_life_percentage, auth_status, make, pae_insert_ts
) VALUES
  --If there is a change in the odometer or oil_life value, send the signal.
  ('SMBCMEF7__(1.1.1)', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)), 'sha256_sm_example', 'NA', 'USA', 'MOTIVE_MODE_END', 'Active', 2.0,  'rf_string', 2.84, 'lf_string', 3.0, 'orr_string', 4.56, 'olr_string', null, 'Not_Supported', null, 'Not_Supported', 7.89, 8.90, 123500, 1.01, 'ft_table_name', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 3 DAY), 'UTC'), SECOND), DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)), 'Retail', 'G', 2023, FORMAT_DATE('%Y-%m-%d', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 365 DAY))), TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 3 DAY), 'UTC'), SECOND), 'Model', 10, 'Authorized', 'F', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 0 DAY), 'UTC'), SECOND))
```

###### TODO - Missing Functional Test
When we have more the one record with different event_ts and odometer
Should return only the hidhest odometer

```SQL
INSERT INTO `ford-d7910739734ba7b122bc0c0b.common_tcu4g_ingestion_na_prognostics.common_tcu4g_ingestion_na_prognostics_lst_3_day` (

  vin, partition_date, cvdc62_sha_k, region, partition_country, msg, system_status, p_rf, s_rf, p_lf, s_lf, p_orr, s_orr, p_olr, s_olr, p_irr, s_irr, p_ilr, s_ilr, p_f_p, p_r_p, odometer, ftcp_version, from_table, df_bq_write_time, pae_db_write_ts, auth_mode, fuel_type, model_year, warranty_start_date, event_ts, model, oil_life_percentage, auth_status, make, pae_insert_ts

) VALUES

  --If there is a change in the odometer or oil_life value, send the signal.

('SMBCMEF7__(1.2.4)', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)), 'sha256_sm_example', '{region}', 'USA', 'MOTIVE_MODE_END', 'Active', 2.0,  'rf_string', 2.84, 'lf_string', 3.0, 'orr_string', 4.56, 'olr_string', null, 'Not_Supported', null, 'Not_Supported', 7.89, 8.90, 10000, 1.01, 'ft_table_name', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 3 DAY), 'UTC'), SECOND), DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)), 'Retail', 'G', 2023, FORMAT_DATE('%Y-%m-%d', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 365 DAY))), TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 3 DAY), 'UTC'), SECOND), 'Model', 10, 'Authorized', 'F', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 0 DAY), 'UTC'), SECOND)),

  ('SMBCMEF7__(1.2.4)', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)), 'sha256_sm_example', '{region}', 'USA', 'MOTIVE_MODE_END', 'Active', 2.0,  'rf_string', 2.84, 'lf_string', 3.0, 'orr_string', 4.56, 'olr_string', null, 'Not_Supported', null, 'Not_Supported', 7.89, 8.90, 10500, 1.01, 'ft_table_name', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 3 DAY), 'UTC'), SECOND), DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY)), 'Retail', 'G', 2023, FORMAT_DATE('%Y-%m-%d', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 365 DAY))), TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 3 DAY), 'UTC'), SECOND), 'Model', 10, 'Authorized', 'F', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 0 DAY), 'UTC'), SECOND));
```

##### SM
 ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_vin_ingestion_status_
```SQL
INSERT INTO `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_vin_ingestion_status` (
  vin, event_ts, pae_insert_ts, pae_update_ts, odometer, oil_life_percentage
) VALUES
  --Initial pre-condition: ODO 123400
  ('SMBCMEF7__(1.1.2)', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 5 DAY), 'UTC'), SECOND), TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 4 DAY), TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 4 DAY), 123000, 10),
```


#### Delete

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_tcu4g_valid_events_latest_
```SQL
DELETE FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_tcu4g_valid_events_latest` WHERE vin is NULL OR vin like 'SMBCMEF%' or vin = '';
```


_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _common_tcu4g_ingestion_na_prognostics_
│   ├── _common_tcu4g_ingestion_na_prognostics_lst_3_day_
 ```SQL
DELETE FROM `ford-d7910739734ba7b122bc0c0b.common_tcu4g_ingestion_na_prognostics.common_tcu4g_ingestion_na_prognostics_lst_3_day` WHERE (vin is NULL OR vin like '%SMBCMEF%' or vin = '') AND cvdc62_sha_k = 'sha256_sm_example';
```


### PREDICTION
#smftprediction #smpredictionft
#### Select

##### Model

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _oil_life_na_prognostics_
│   ├── ol_na_model
```SQL
-- Select mocked, empty and null vin of SM Functional Test
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model` WHERE vin is NULL OR vin like 'SMMFUNT%';
```

##### SM XX Prognostics
Event_latest (Join) 

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_tcu4g_valid_events_latest_
```SQL
-- Select mocked, empty and null vin of SM Functional Test
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_tcu4g_valid_events_latest` WHERE vin is NULL OR vin like 'SMMFUNT%';
```


Schedule Interval 

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_schedule_interval_
```SQL
-- Select mocked, empty and null vin of SM Functional Test
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_schedule_interval` WHERE vin is NULL OR vin like 'SMMFUNT%';
```


SM xx Prediction 

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_predictions_
```SQL
-- Select mocked, empty and null vin of SM Functional Test
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_predictions` WHERE vin is NULL OR vin like 'SMMFUNT%';
```


###### SM na Prediction Run

```SQL
--Prediction

CREATE TEMP FUNCTION CONVERT_MILES_TO_KM(miles INT64)

RETURNS INT64

AS (

  CAST(miles * 1.60934 AS INT64)

);

  CREATE TEMP TABLE pred_result AS (

  WITH

    models AS (

      SELECT

        vin,

        odo_model_slope,

        odo_model_intercept,

        num_samples,

        odo_model_r2

      FROM

        `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model`

      QUALIFY ROW_NUMBER() OVER (PARTITION BY vin ORDER BY odo_model_slope DESC ) = 1

  

    ),

    reg_coefficients AS (

  

    SELECT

      e.vin AS vin,

      e.event_ts AS event_ts,

      e.event_date AS event_date,

      e.odometer AS odo,

      e.warranty_start_date AS warranty_start_date,

      e.country,

      e.built_country,

      m.odo_model_slope AS slope,

      m.odo_model_intercept AS intercept,

      m.num_samples AS num_samples,

      m.odo_model_r2 AS r2,

      CONVERT_MILES_TO_KM(i.mileage_km) AS next_interval_km,

      i.service_time_interval_months AS service_interval_months,

      i.operation_codes AS operation_codes,

    FROM

      `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_tcu4g_valid_events_latest` e

    INNER JOIN

     models m

    ON

      e.vin = m.vin

    INNER JOIN

      `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_schedule_interval` i

    ON

      e.vin = i.vin

      AND CONVERT_MILES_TO_KM(i.mileage_km) > e.odometer -- We need to check the units for mileage from both sources (miles or KM)

      WHERE

        e.warranty_start_date != '0001-01-01'

    QUALIFY

      ROW_NUMBER() OVER (PARTITION BY e.vin ORDER BY i.mileage_km ASC) <= 2 ),

    prediction AS (

    SELECT

      vin,

      event_ts,

      event_date,

      odo,

      warranty_start_date,

      country,

      built_country,

      slope,

      intercept,

      num_samples,

      r2,

      next_interval_km,

      service_interval_months,

      operation_codes,

      (slope * odo + intercept) AS predicted_odo,

      (slope * next_interval_km + intercept) AS predicted_interval,

      CASE

        WHEN  (slope * odo + intercept) - (slope * next_interval_km + intercept) > 18262 THEN 18262.0

        WHEN  (slope * odo + intercept) - (slope * next_interval_km + intercept) < -18262 THEN -18262.0

        ELSE (slope * odo + intercept) - (slope * next_interval_km + intercept)

      END AS days_to_adjust,

  

    FROM

      reg_coefficients )

  SELECT

    vin,

    event_ts,

    event_date,

    odo,

    warranty_start_date,

    country,

    built_country,

    slope,

    intercept,

    num_samples,

    r2,

    next_interval_km,

    service_interval_months,

    operation_codes,

    predicted_odo,

    predicted_interval,

    CAST(days_to_adjust AS INT64) AS days_to_adjust,

    DATE(DATE_ADD(event_ts, INTERVAL CAST(days_to_adjust AS INT64) DAY)) AS mileage_predicted_date_sm_interval,

    DATE_ADD(DATE(warranty_start_date), INTERVAL service_interval_months MONTH) AS time_calculated_date_sm_interval

  FROM

    prediction);

  

TRUNCATE TABLE `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_predictions`;

  

INSERT INTO

  `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_predictions` (

    vin,

    event_ts,

    event_date,

    odometer,

    warranty_start_date,

    slope,

    intercept,

    num_samples,

    r2,

    next_interval_km,

    service_interval_months,

    operation_codes,

    predicted_odo,

    predicted_interval,

    days_to_adjust,

    mileage_predicted_date_sm_interval,

    time_calculated_date_sm_interval,

    pae_insert_ts,

    country,

    built_country

    )

SELECT

  vin,

  event_ts,

  event_date,

  odo AS odometer,

  warranty_start_date,

  slope,

  intercept,

  num_samples,

  r2,

  next_interval_km,

  service_interval_months,

  operation_codes,

  predicted_odo,

  predicted_interval,

  days_to_adjust,

  mileage_predicted_date_sm_interval,

  time_calculated_date_sm_interval,

  CURRENT_TIMESTAMP() AS pae_insert_ts,

  country,

  built_country

FROM

  pred_result
```






### POS-PREDICTION
#smftposprediction #smpospredictionft
#### Select
##### SM XX Predictions Formatted

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_predicted_formatted
```SQL
-- Select mocked, empty and null vin of SM Functional Test
-- Formatted

SELECT * FROM `ford-5f59d47f36e5fd01f6764c96.sm_na_prognostics.sm_na_predictions_formatted` WHERE vin = '1FA6P8CF2R5406713';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_predictions_formatted` LIMIT 100;

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_predictions_formatted` WHERE vin is NULL OR vin like 'SMMFUNT%';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_predictions_formatted` WHERE vin is NULL OR vin like 'SMMFUNT3__(3.1.1%%)';
```

##### SM XX VHA Alerts

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_vha_alerts

```SQL
-- QA

SELECT * FROM `ford-5f59d47f36e5fd01f6764c96.sm_na_prognostics.sm_na_vha_alerts` WHERE vin = '1FA6P8CF2R5406713';

-- DEV

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_vha_alerts` WHERE vin is NULL OR vin like 'SMMFUNT%';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_vha_alerts` WHERE vin is NULL OR vin like 'SMMFUNT3__(3.1.1%%)';
```


#### Insert
##### SM XX Predictions Formatted

```SQL
INSERT INTO `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_predictions_formatted` (

  vin,
  event_ts,
  event_date,
  pae_insert_ts,
  pae_update_ts,
  model_year,
  warranty_start_date,
  region,
  country_code,
  country,
  built_country,
  auth_mode,
  fuel_type,
  odometer,
  oil_life_percentage,
  auth_status,
  model,
  from_table,
  feature_code,
  number_of_samples,
  r2,
  predicted_intervals,
  partition_pae_update_date
) VALUES
  ('SMMFUNT3__(3.1.1)', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 4 DAY), 'UTC'), SECOND), DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 3 DAY), TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 3 DAY), EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL 365 DAY)), FORMAT_DATE('%Y-%m-%d', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 365 DAY))), 'NA', 'USA', null, null, 'Retail', 'G', 19204, 65, 'AUTHORIZED', 'FORD  MUSTANG 2-DR COUPE GT', 'ncvdc62_fnv2_motivemode_vw', 'SM', 318, 0.959,

  ARRAY<STRUCT<next_interval_km INTEGER, mileage_predicted_date_sm_interval DATE, time_calculated_date_sm_interval DATE, service_intervals_months INTEGER, operation_codes STRING>>[STRUCT(48000 AS next_interval_km, DATE '2027-02-25' as mileage_predicted_date_sm_interval,null as time_calculated_date_sm_interval,0 as service_intervals_months,'640P,640P,641P,641P,645P,645P,649P,649P,650P,650P,651P,651P,654P,654P,656P,656P,660P,674P,674P' as operation_codes), STRUCT(32000 AS next_interval_km, DATE '2026-01-04' as mileage_predicted_date_sm_interval,null as time_calculated_date_sm_interval,0 as service_intervals_months,'640P,640P,641P,641P,645P,645P,649P,649P,650P,650P,651P,651P,654P,654P,656P,656P,660P,674P,674P' as operation_codes)],

  DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY));
```


### REGRESSION TESTS
#smregression #regressiontests
#### DTS Codes
#dtscode
##### SM XX VHA Alerts

_:fas_database: ford-d7910739734ba7b122bc0c0b_
├─:fas_folder_open:  _sm_na_prognostics_
│   ├── _sm_na_vha_alerts

```SQL
-- QA NA

SELECT dts_code, COUNT(dts_code) as count FROM `ford-5f59d47f36e5fd01f6764c96.sm_na_prognostics.sm_na_vha_alerts` GROUP BY dts_code ORDER BY count DESC;

-- DEV

SELECT dts_code, COUNT(dts_code) as count FROM `ford-d7910739734ba7b122bc0c0b.sm_na_prognostics.sm_na_vha_alerts` GROUP BY dts_code ORDER BY count DESC;
```


#### Ingestion Data vs Prediction vs VHA

```SQL
SELECT count(vin) FROM `ford-5f59d47f36e5fd01f6764c96.sm_eu_prognostics.sm_eu_vha_alerts`;
SELECT count(vin) FROM `ford-5f59d47f36e5fd01f6764c96.sm_eu_prognostics.sm_eu_predictions_formatted`;
SELECT count(vin) FROM `ford-5f59d47f36e5fd01f6764c96.sm_eu_prognostics.sm_eu_vin_ingestion_status`;

# SM EU VHA ALERTS count = 1300772
# SM EU PREDICTION FORMATTED count = 1300772
# SM EU INGESTION STATUS count = 2232844
## VHA Alerts has only 58.25% of the data available in Ingestion status

SELECT count(vin) FROM `ford-5f59d47f36e5fd01f6764c96.sm_na_prognostics.sm_na_vha_alerts`;
SELECT count(vin) FROM `ford-5f59d47f36e5fd01f6764c96.sm_na_prognostics.sm_na_predictions_formatted`;
SELECT count(vin) FROM `ford-5f59d47f36e5fd01f6764c96.sm_na_prognostics.sm_na_vin_ingestion_status`;

# SM EU VHA ALERTS count = 8523074
# SM EU PREDICTION FORMATTED count = 8523074
# SM EU INGESTION STATUS count = 8820200
## VHA Alerts has only 96.63% of the data available in Ingestion status

-- SELECT (8523074/8820200)*100
```


#### X

```SQL
WITH missig AS (
-- Verify VINS in model without Schedule Interval
SELECT DISTINCT
    tb_m.vin as model_vin,
    tb_i.vin as interval_vin,
    tb_m.country
FROM
    `ford-5f59d47f36e5fd01f6764c96.oil_life_eu_prognostics.ol_eu_model` tb_m
LEFT JOIN
    `ford-5f59d47f36e5fd01f6764c96.sm_eu_prognostics.sm_eu_schedule_interval` tb_i
ON
    tb_m.vin = tb_i.vin
WHERE
     tb_i.vin IS NULL    
)

-- Select VHA missing vins related within missing Schedule Interval
SELECT vha.* from `ford-d7910739734ba7b122bc0c0b.temp.vha_missing_fleet_vins` vins
  JOIN missig vha
  ON vha.model_vin = vins.vin;

-- Verify total of missing_vha in
```