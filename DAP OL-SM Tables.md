#dapsmtables #dapoltables #dap #daptables


| Table                  | Description  | BQ                                                                                                                                                                     |     |
| ---------------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- |
| pae-oil life ds        | OL Histórico | [link](https://console.cloud.google.com/bigquery?project=prj-dfad-31-usrda-p-31&ws=!1m4!1m3!3m2!1sprj-dfad-31-usrda-p-31!2swcampos5_pae_oil_life_ds&inv=1&invt=AbqmKQ) |     |
| pae-scheduled maint ds | SM Histórico | [link](https://console.cloud.google.com/bigquery?project=prj-dfad-31-usrda-p-31&ws=!1m4!1m3!3m2!1sprj-dfad-31-usrda-p-31!2swcampos5_pae_scheduled_maint_ds)            |     |
| pae-oil life img       | OL/SM Model  | [link](https://console.cloud.google.com/bigquery?project=prj-dfad-31-usrda-p-31&ws=!1m4!1m3!3m2!1sprj-dfad-31-usrda-p-31!2swcampos5_pae_oil_life_img)                  |     |
| cvd2x-oil life ds      | VHA OL       | [link](https://console.cloud.google.com/bigquery?project=prj-dfad-31-usrda-p-31&ws=!1m4!1m3!3m2!1sprj-dfad-31-usrda-p-31!2swcampos5_cvd2x_oil_life_ds)                 |     |
| cvd2x-sched maint ds   | VHA SM       | [link](https://console.cloud.google.com/bigquery?project=prj-dfad-31-usrda-p-31&ws=!1m4!1m3!3m2!1sprj-dfad-31-usrda-p-31!2swcampos5_cvd2x_sched_maint_ds))             |     |

***

#### pae-oil life ds - OL Histórico
```SQL
SELECT * FROM `prj-dfad-31-usrda-p-31.wcampos5_pae_oil_life_ds.ncvdpx4_pae_oil_life_tb_vw` WHERE cvdpx4_vin_d_2 IS NOT NULL AND cvdpx4_arvl_dt_x = CURRENT_DATE() LIMIT 1000;
```

#### pae-scheduled maint ds - SM Historico
```SQL
SELECT * FROM `prj-dfad-31-usrda-p-31.wcampos5_pae_scheduled_maint_ds.nscvtfu_pae_sched_maint_tb_vw`
WHERE scvtfu_partition_date_x = CURRENT_DATE() AND
scvtfu_vin_d IS NOT NULL
LIMIT 10;
```

#### pae-oil life img - OL/SM Model
```SQL
SELECT * FROM `prj-dfad-31-usrda-p-31.wcampos5_pae_oil_life_img.nscvtmc_img_oil_life_model_tb_vw` WHERE scvtmc_partition_date_s = CURRENT_DATE() LIMIT 1000
```

#### cvd2x-oil life ds - VHA
```SQL
SELECT * FROM `prj-dfad-31-usrda-p-31.wcampos5_cvd2x_oil_life_ds.ncvdpxq_cvd2x_pae_tb_vw` WHERE df_partition_date = CURRENT_DATE() LIMIT 1000
```


#### cvd2x_sched_maint_ds - VHA
```SQL
SELECT * FROM `prj-dfad-31-usrda-p-31.wcampos5_cvd2x_sched_maint_ds.nscvtga_cvd2x_sm_tb_vw` WHERE df_partition_date = CURRENT_DATE() LIMIT 1000
```

#### DAP Personal User

