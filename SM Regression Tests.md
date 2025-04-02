#smregressiontests #sm #regression 

Windows time frame (6 days ago from yesterday)
#### Volume expected Old vs New (Streaming vs Batch)
(Precisa melhorar a diferença entre eles)

```SQL
-- Total Amount Streaming vs Batch
WITH old_models AS (
      SELECT
        scvtmc_vin_d AS vin,
      FROM
        `prj-dfad-31-usrda-p-31.wcampos5_pae_oil_life_img.nscvtmc_img_oil_life_model_tb_vw`
      WHERE
        scvtmc_partition_date_s >= DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH)
        AND scvtmc_cntry_x IN ('USA','CAN')
      QUALIFY
        ROW_NUMBER() OVER (PARTITION BY scvtmc_vin_d ORDER BY scvtmc_lst_updt_s DESC)=1
    ),

    old_predictions AS (
        SELECT
            scvtfu_vin_d AS vin,

        FROM
            `prj-dfad-31-usrda-p-31.wcampos5_pae_scheduled_maint_ds.nscvtfu_pae_sched_maint_tb_vw`
        WHERE
          scvtfu_partition_date_x >= DATE_SUB(CURRENT_DATE(), INTERVAL 6  DAY)
          AND scvtfu_event_s >= TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 6  DAY))
          AND scvtfu_region_c = 'NA'
          QUALIFY ROW_NUMBER() OVER (PARTITION BY scvtfu_vin_d ORDER BY scvtfu_event_s DESC) = 1
    ),

    streaming AS (
      SELECT 
        old_models.vin AS vin
      FROM old_predictions
      LEFT JOIN old_models
      ON
      old_predictions.vin = old_models.vin
    WHERE 
      old_models.vin IS NOT NULL
    ),

    new_predictions AS (
      SELECT
        v.vin
    FROM
      `ford-71123b2a23680b6f022fc287.sm_na_prognostics.sm_na_vha_alerts` v
    LEFT JOIN `ford-71123b2a23680b6f022fc287.oil_life_na_prognostics.ol_na_model` m
    on v.vin = m.vin 
    WHERE
      partition_pae_update_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY)
      AND event_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY)
    ),

    in_streaming AS (
      SELECT
        s.vin
      FROM streaming s
      LEFT JOIN new_predictions n
      ON s.vin = n.vin
      AND n.vin IS NOT NULL
    ),

    in_batch AS (
      SELECT
        n.vin
      FROM new_predictions n
      LEFT JOIN streaming s
      ON n.vin = s.vin
      AND s.vin IS NOT NULL
    ),

    summary AS (
      SELECT
        (SELECT COUNT(*) FROM streaming) as count_legacy,
        (SELECT COUNT(*) FROM in_streaming) as legacy_only,
        (SELECT COUNT(*) FROM new_predictions) as count_batch,
        (SELECT COUNT(*) FROM in_batch) as batch_only
    )

    SELECT * FROM summary
```


#### Days to time interval

```Python
-- Old x New investigation
-- Days to time interval vs distance per day

WITH old_models AS (
      SELECT
        scvtmc_vin_d as vin,
        scvtmc_lst_updt_s AS last_updated,
        scvtmc_odo_mdl_slope_r AS odo_model_slope,
        scvtmc_odo_mdl_r2_r AS odo_model_r2,
        scvtmc_odo_mdl_intercept_r AS odo_model_intercept,

        scvtmc_oil_mdl_intercept_r AS oil_model_intercept,
        scvtmc_oil_mdl_slope_r AS oil_model_slope,
        scvtmc_oil_mdl_r2_r AS oil_r2
      FROM
        `prj-dfad-31-usrda-p-31.wcampos5_pae_oil_life_img.nscvtmc_img_oil_life_model_tb_vw`
      WHERE
        scvtmc_partition_date_s >= DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH)
        AND scvtmc_cntry_x IN ('USA','CAN')
      QUALIFY
        ROW_NUMBER() OVER (PARTITION BY scvtmc_vin_d ORDER BY scvtmc_lst_updt_s DESC)=1
    ),

    old_predictions AS (
        SELECT
            scvtfu_vin_d AS vin,
            scvtfu_feat_dta_curr_odom_r AS odometer,
            scvtfu_feat_dta_num_of_samps_r AS num_of_samples,
            scvtfu_feat_dta_r2_r AS r2,
            DATE_DIFF(DATE(scvtfu_feat_dta_intvls_milg_sm_date_r), DATE(scvtfu_event_s), DAY) delta_mileage_days,
            DATE_DIFF(DATE(scvtfu_feat_dta_intvls_time_sm_date_s), DATE(scvtfu_event_s), DAY) delta_time_days,

            DATE(scvtfu_feat_dta_intvls_milg_sm_date_r) AS mileage_prediction_date, 
            DATE(scvtfu_feat_dta_intvls_time_sm_date_s) AS time_calculated_date,
            scvtfu_feat_dta_intvls_svc_time_intvl_r AS time_interval,
            scvtfu_feat_dta_intvls_milg_r AS mileage_interval,


            scvtfu_feat_dta_intvls_milg_r - scvtfu_feat_dta_curr_odom_r AS odo_to_mileage_interval, 
            -- DATE_DIFF(DATE_ADD(DATE(warranty_start_date), INTERVAL `predicted_intervals`[SAFE_OFFSET(0)].service_interval_months MONTH), event_date, DAY) AS days_to_time_interval,
        FROM
          `prj-dfad-31-usrda-p-31.wcampos5_pae_scheduled_maint_ds.nscvtfu_pae_sched_maint_tb_vw`
        WHERE
          scvtfu_partition_date_x >= DATE_SUB(CURRENT_DATE(), INTERVAL 6  DAY)
          AND scvtfu_event_s >= TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 6  DAY))
          AND scvtfu_region_c = 'NA'
          QUALIFY ROW_NUMBER() OVER (PARTITION BY scvtfu_vin_d ORDER BY scvtfu_event_s DESC) = 1
    ),

    streaming AS (
      SELECT
      m.vin
      FROM old_models m 
      LEFT JOIN old_predictions p
      ON m.vin = p.vin
    ),

    batch AS (
      SELECT
          v.vin,
          v.fuel_type,
          v.odometer,
          v.oil_life_percentage,
          v.number_of_samples AS num_of_samples,
          v.r2,
          DATE_DIFF(v.`predicted_intervals`[SAFE_OFFSET(0)].mileage_predicted_date_sm_interval, v.event_date, DAY) delta_mileage_days,
          DATE_DIFF(v.`predicted_intervals`[SAFE_OFFSET(0)].time_calculated_date_sm_interval, v.event_date, DAY) delta_time_days,

          v.`predicted_intervals`[SAFE_OFFSET(0)].mileage_predicted_date_sm_interval AS mileage_prediction_date,
          v.`predicted_intervals`[SAFE_OFFSET(0)].time_calculated_date_sm_interval AS time_calculated_date,
          v.`predicted_intervals`[SAFE_OFFSET(0)].next_interval_km AS mileage_interval, 
          v.`predicted_intervals`[SAFE_OFFSET(0)].service_interval_months AS time_interval,
          
          v.`predicted_intervals`[SAFE_OFFSET(0)].next_interval_km - v.odometer AS odo_to_mileage_interval, 
          DATE_DIFF(DATE_ADD(DATE(v.warranty_start_date), INTERVAL v.`predicted_intervals`[SAFE_OFFSET(0)].service_interval_months MONTH), v.event_date, DAY) AS days_to_time_interval,
    
          auth_mode,
          trigger_type,
          uncertainty_bin,
          dts_code,
          urgency,
          m.odo_model_slope,
          m.oil_model_slope,
          m.odo_model_intercept,
          m.oil_model_intercept

      FROM
        `ford-71123b2a23680b6f022fc287.sm_na_prognostics.sm_na_vha_alerts` v
      LEFT JOIN `ford-71123b2a23680b6f022fc287.oil_life_na_prognostics.ol_na_model` m
      on v.vin = m.vin 

      WHERE
        partition_pae_update_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY)
        AND event_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY)
    ),

    -- Batch VINs only filtered by delta_mileage_days
    -- where need to drive more then 50 miles per day to achive schedule interval vs days to time interval
    delta_mileage_days AS (
      SELECT
        b.vin,
        s.vin,
        b.fuel_type,
        b.odometer,
        --b.number_of_samples AS num_of_samples,
        b.r2,
        b.delta_mileage_days,
        b.delta_time_days,
        b.mileage_prediction_date,
        b.time_calculated_date,
        b.mileage_interval, 
        b.time_interval,
        
        b.odo_to_mileage_interval, 
        b.days_to_time_interval,
        CASE
          WHEN b.days_to_time_interval >=1 THEN (b.odo_to_mileage_interval / b.days_to_time_interval) ELSE b.odo_to_mileage_interval
        END AS miles_per_day,
        b.auth_mode,
        b.trigger_type,
        b.uncertainty_bin,
        b.dts_code,
        b.urgency,
        b.odo_model_slope,
        b.oil_model_slope,
        b.odo_model_intercept,
        b.oil_model_intercept
        
      FROM batch b
      LEFT JOIN streaming s
      ON b.vin = s.vin
      AND s.vin IS NULL
      WHERE days_to_time_interval >= 0
      
    )

    SELECT * FROM delta_mileage_days WHERE miles_per_day > 50


```


