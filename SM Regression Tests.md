#smregressiontests #sm #regression 

Windows time frame (6 days ago from yesterday)
#### Volume expected Old vs New (Streaming vs Batch)

```SQL
--Volume expected OLD vs NEW

WITH old_pred AS (
  SELECT 
    DISTINCT scvtfu_vin_d as vin
  FROM `prj-dfad-31-usrda-p-31.wcampos5_pae_scheduled_maint_ds.nscvtfu_pae_sched_maint_tb_vw`
  WHERE
    scvtfu_partition_date_x BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY) AND DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY)
    AND scvtfu_arvl_s BETWEEN TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY)) AND TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY))
    AND scvtfu_event_s BETWEEN TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY)) AND TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY))
    AND scvtfu_region_c = 'NA'
    AND scvtfu_raw_payload_x IS NOT NULL
    AND scvtfu_vin_d IS NOT NULL     
)
, new_pred AS(
  SELECT 
    DISTINCT vin
  FROM `ford-71123b2a23680b6f022fc287.sm_na_prognostics.sm_na_predictions_formatted`
  --FROM `ford-71123b2a23680b6f022fc287.oil_life_na_prognostics.ol_na_vha_alerts`
  WHERE
    -- DATE(pae_update_ts) BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY) AND DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY)
    partition_pae_update_date BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY) AND DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY)
)
, in_old_pred_not_in_new_pred AS (
  SELECT 
    t1.vin
  FROM old_pred t1
  LEFT JOIN new_pred t2 
  ON t1.vin = t2.vin
  WHERE t2.vin IS NULL
)
, in_new_pred_not_in_old_pred AS (
  SELECT 
    t1.vin
  FROM new_pred t1
  LEFT JOIN old_pred t2 
  ON t1.vin = t2.vin
  WHERE t2.vin IS NULL
)
, new_model AS (
  SELECT 
    DISTINCT VIN
  FROM `ford-71123b2a23680b6f022fc287.oil_life_na_prognostics.ol_na_model`
)
, in_old_pred_in_new_model AS(
  SELECT t1.vin
  FROM new_model t1
  JOIN in_old_pred_not_in_new_pred t2 ON t1.vin = t2.vin
)
, counts AS (
  SELECT 
  (SELECT COUNT(*) FROM old_pred) as count_d_vin_old_pred,
  (SELECT COUNT(*) FROM new_pred) as count_d_vin_new_pred,
  (SELECT COUNT(*) FROM in_old_pred_not_in_new_pred) as count_d_vin_in_old_pred_not_in_new_pred,
  (SELECT COUNT(*) FROM in_old_pred_not_in_new_pred) as count_d_vin_in_old_pred_in_new_model,
  (SELECT COUNT(*) FROM in_new_pred_not_in_old_pred) as count_d_vin_in_new_pred_not_in_old_pred
) SELECT * FROM counts;
```



