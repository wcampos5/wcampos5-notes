#metrics #paemetrics
Ref[^1]
***
Login to [[Postgres PAE Access|Postgres]] desired environment

#### Query for Metrics

##### Oil Life Metrics
#metricsoillife #olmetricsquery #olsql #functionaltestsql
###### Pre Prod
Oil Life Scoring Metrics | (Update _begin_time_) #olscoringmetricssql
```sql
SELECT
begin_date, 
begin_hour, 
sum(number_received) as sum_number_received, 
sum(number_published) as sum_number_published, 
sum(number_invalid) as sum_number_invalid 
FROM (SELECT id, begin_time, end_time, number_received, number_published, number_invalid, auth_mode, EXTRACT(HOUR FROM begin_time) as begin_hour, DATE(begin_time) AS begin_date 
FROM gdia_prog_na.oil_life_scoring_metrics 
where begin_time >= '2024-09-05' 
order by begin_time desc, id) tb1 
group by begin_date, 
     begin_hour 
order by begin_date desc, 
     begin_hour desc
```

Oil Life Training Metrics | (Update _job_begin_time_)
```SQL
SELECT * FROM gdia_prog_na.oil_life_training_metrics ORDER BY id DESC LIMIT 100;
```

```sql
SELECT
begin_date, 
begin_hour, 
sum(num_of_vins_received) as sum_number_received, 
sum(num_of_vins_processed) as sum_number_processed, 
sum(total_records_processed) as sum_total_records_processed 
FROM (SELECT id, job_begining_time, job_end_time, num_of_vins_received, num_of_vins_processed, total_records_processed, EXTRACT(HOUR FROM job_begining_time) as begin_hour, DATE(job_begining_time) AS begin_date 
FROM gdia_prog_na.oil_life_training_metrics 
where job_begining_time >= '2024-09-02' 
order by job_begining_time desc, id) tb1 
group by begin_date, 
     begin_hour 
order by begin_date desc, 
     begin_hour desc
```
###### Stage
(Update _begin_time_)
```sql
SELECT
begin_date, 
begin_hour, 
sum(number_received) as sum_number_received, 
sum(number_published) as sum_number_published, 
sum(number_invalid) as sum_number_invalid 
FROM (SELECT id, begin_time, end_time, number_received, number_published, number_invalid, auth_mode, EXTRACT(HOUR FROM begin_time) as begin_hour, DATE(begin_time) AS begin_date 
FROM gdia_prod_validation_na.oil_life_scoring_metrics 
where begin_time >= '2024-09-05' 
order by begin_time desc, id) tb1 
group by begin_date, 
     begin_hour 
order by begin_date desc, 
     begin_hour desc
```


***
[[]] | [[]]



##### Schedule Maintenance Metrics
#metricsm #smmetricsquery #smsql
###### Pre Prod
(Update _begin_time_)
```sql
SELECT
begin_date, 
begin_hour, 
sum(number_received) as sum_number_received, 
sum(number_published) as sum_number_published, 
sum(number_invalid) as sum_number_invalid 
FROM (SELECT id, begin_time, end_time, number_received, number_published, number_invalid, auth_mode, EXTRACT(HOUR FROM begin_time) as begin_hour, DATE(begin_time) AS begin_date 
FROM gdia_prog_na.sm_scoring_metrics 
where begin_time >= '2024-09-05' 
order by begin_time desc, id) tb1 
group by begin_date, 
     begin_hour 
order by begin_date desc, 
     begin_hour desc
```

SM Daily query
```SQL
SELECT  begin_date,
sum(number_received)         as sum_number_received,
sum(number_published)         as sum_number_published,
sum(number_invalid)                as sum_number_invalid
FROM (SELECT id, begin_time, end_time, number_received, number_published, number_invalid, auth_mode, EXTRACT(HOUR FROM begin_time) as begin_hour, DATE(begin_time) AS begin_date
FROM gdia_prog_na.sm_scoring_metrics
where begin_time >= '%2024-03-19 12:00'
order by begin_time desc, id
limit 100000) tb1
group by begin_date
order by begin_date desc
limit 100000
```
###### Stage
(Update _begin_time_)
```sql
SELECT
begin_date, 
begin_hour, 
sum(number_received) as sum_number_received, 
sum(number_published) as sum_number_published, 
sum(number_invalid) as sum_number_invalid 
FROM (SELECT id, begin_time, end_time, number_received, number_published, number_invalid, auth_mode, EXTRACT(HOUR FROM begin_time) as begin_hour, DATE(begin_time) AS begin_date 
FROM gdia_prod_validation_na.sm_life_scoring_metrics 
where begin_time >= '2024-09-05' 
order by begin_time desc, id) tb1 
group by begin_date, 
     begin_hour 
order by begin_date desc, 
     begin_hour desc
```


***
[[]] | [[]]

#### Tags
***
[^1]: [Ref](#)