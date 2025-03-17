#sqlqueries #sql #postgres

---
###### Generate Series
#sqlgenerate #generateseries #series
```sql
SELECT x,
  round(x::numeric) AS num_round,
  round(x::double precision) AS dbl_round
FROM generate_series(-3.5, 3.5, 1) as x;
```

###### Date with milleseconds utc in Bigquery
#bqdates #sqldates

```SQL
SELECT
TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 4 DAY) AS timestamp_menos_4_dias;

--Returns
--2025-02-01 20:55:53.721350 UTC
```

#bqyear  #sqlyear
```SQL
EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL 365 DAY)) AS ano

-- 2024
```

#bqyyyymmdd #sqlyyyymmdd
```SQL
FORMAT_DATE('%Y-%m-%d', DATE(DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY))) as yyyy_mm_dd;

-- Returns 2024-02-25
```

#between #betweendates
```SQL
field_x BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY) AND DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY)
```
