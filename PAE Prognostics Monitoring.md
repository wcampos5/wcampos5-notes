#monitoring #prod #prodmonitoring

Prod Monitor[^1]
***

### 1. Slack Monitoring Channel
 Slack channel ([https://ford.enterprise.slack.com/archives/C072DR6M9JS](https://ford.enterprise.slack.com/archives/C072DR6M9JS))

### 2. Astro Production Environment and DAGs
- **Access:** [Astro Production DAGs](https://deployments.astro.ford.com/transparent-astronomy-7341/airflow/home?status=all)
	Verificar Falhas em _Recents Tasks_

### 3. Dataproc Batches (Production Environment
- **Project:** prj-m1-aim-pae-p
- **Visit:** [Dataproc Batches Console](https://console.cloud.google.com/dataproc/batches?invt=Abf9sw&project=ford-71123b2a23680b6f022fc287)
- **Monitoring:** Review Dataproc batches _only if indicated by failures in Astro DAGs (Step 2)_. 

### 4. BigQuery Job History

- **Project:** prj-m1-aim-pae-p
- **Visit:** [BigQuery Job History](https://console.cloud.google.com/bigquery?invt=Abf9sw&project=ford-71123b2a23680b6f022fc287)
- **Check:** Review BigQuery job history _only if indicated by failures in Astro DAGs (Step 2)_

### 5. GCP Product Resources

- **Access:** [GCP Product Resources Dashboard](https://lookerstudio.google.com/u/0/reporting/e9e1d3ce-1e36-436d-a656-e015f87b903d/page/GtlEE)
- **Review:** Monitor GCP resource usage across all environments. **Alert on resource exhaustion or unexpected spikes.** Use this dashboard to assist in investigating issues identified in BigQuery job history (Step 4).

### 6. Astro Cluster Health Check

- **Visit:** [Astro Cluster Health Page](https://app.astro.ford.com/w/cluk7dhqi11607514ccvym1t06l/d/transparent-astronomy-7341)
- **Verification:** Ensure the cluster displays a green signal, indicating a healthy status. If not green, investigate immediately and escalate if necessary. Include specific error details in any escalation.

### 7. Cloud Run Streaming Jobs

- **Project:** prj-prognostics-cr-p
- **Access:** [Cloud Run Console](https://console.cloud.google.com/run?referrer=search&invt=Abf9sw&project=ford-fefb9e2f2aff769cf6af99a4)
- **Monitoring Dashboard:** Utilize the [Cloud Run Monitoring Dashboard](https://console.cloud.google.com/monitoring/dashboards/builder/8ff219f8-cc2b-4fa0-a04f-e36c221bb889;duration=PT1H?project=ford-fefb9e2f2aff769cf6af99a4&pageState=(%22eventTypes%22:(%22selected%22:%5B%22CLOUD_ALERTING_ALERT%22,%22SERVICE_HEALTH_INCIDENT%22,%22CLOUD_RUN_DEPLOYMENT%22%5D))) for visualizing alerts and issues. **Document any anomalies observed.**

### 8. Pub/Sub Messages Dashboard

- **Project:** prj-prognostics-cr-p
- **Action:** Review the Pub/Sub messages dashboard for anomalies or unexpected message volume/latency. **Document any significant deviations from the baseline**


***
[[]] | [[]]
#### Tags
***
[^1]: [Prod Monitor](https://github.ford.com/gdia-prognostics/m1-aim-pae/blob/dev/docs/prod_monitoring.md)