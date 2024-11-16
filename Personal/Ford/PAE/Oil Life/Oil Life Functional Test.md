#ol #olfunctionaltest #olfunctionaltest #functionaltest

Oil Life posted tests[^1]
***

#### Process

- Looking for an old updated  VIN  according to [[Oil Life Message processor - Streaming]], prepare a JSON file. #preparedjson

- Login into Postgres for the desired database environment
[[Postgres PAE Access|Postgres PAE Connection]]

###### Search for you VIN 
```sql
select * from gdia_prog_na.oil_life_last_message_received where vin='XXXXXXXXXXX';
```

![[oil_life_function_test_current.png]]


#### JSON

- Copy prior #preparedjson to clipboard
- Open gcloud PubSub for the specific environment
Example: dev
[Dev Pubsub](https://console.cloud.google.com/cloudpubsub/topic/list?project=ford-c58cc8c22c32e7492e8392d0)

- Select the Topic name:
  [a54020-pp-oil-life-scoring-dev-na](https://console.cloud.google.com/cloudpubsub/topic/detail/a54020-pp-oil-life-scoring-dev-na?project=ford-c58cc8c22c32e7492e8392d0)

- Go to Messages TAB -> Step 1 -> Click Publish Message
![[pubsub_subscription_messages.png]]

- Paste the JSON file into the **Message Body** Text area

- Click Publish Bottom at the bottom of the page

#### Logs

- Open the Oil Life Cloud Run desired environment instance -> Logs Tab
- Open the **Logs Explorer**
	View in Logs Explorer _icon_ at top right page side

Run Query (Update desired time range) #timerange #univeraltime #timeuniversal #logexplorerquery
```sql
resource.labels.service_name = "cldrun-oil-life-service-dev-na-run"
resource.labels.location = "us-central1"
severity>=DEFAULT
timestamp>="2024-09-05T00:00:29.283Z"
timestamp<="2024-09-05T17:27:00.000Z"
```
>[!info] Download the log if you want

#### Results

Re-Apply SQL [[Oil Life Functional Test#Search for you VIN|query]] in the Postgres and validate if you JSON changes where applied.


***
[[Oil Life Message processor - Streaming|<<Oil Life Message Processor]] |
#### Tags
***
[^1]: [Oil Life posted tests](https://azureford.sharepoint.com/sites/CSIAnalytics/Shared%20Documents/Forms/AllItems.aspx?newTargetListUrl=%2Fsites%2FCSIAnalytics%2FShared%20Documents&viewpath=%2Fsites%2FCSIAnalytics%2FShared%20Documents%2FForms%2FAllItems%2Easpx&id=%2Fsites%2FCSIAnalytics%2FShared%20Documents%2FPrognostics%2FInternal%20DEA%20Prognostics%2FPAE%20Streaming%2FOil%20Life%2FTest&viewid=ffb41298%2D138e%2D4130%2Dab52%2Dab4a9b7fd010)