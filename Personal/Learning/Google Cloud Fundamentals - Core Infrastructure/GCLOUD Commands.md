#commands #gcloud #gcloudcommands
#### Cloud Run
#cldrun #cloudrun 

##### Changing Traffic
#traffic
```
gcloud run services update-traffic <Cloud-Run-Instance> --region=us-central1 --to-revisions=<Revision-Name_to>=100  --to-revisions=p<Revision-Name_from>=0
```
>[!info] Update ecoboost-cloudrun-auth task
>Could be added into cloudrun-auth task after it gets gcloud authentication.


```
        #gcloud run services delete $serviceNameNa --quiet

        #gcloud run revisions delete cldrun-tire-slow-leak-dev-na-build-503-g9b715f3-1 --quiet

        #gcloud run revisions delete cldrun-tire-slow-leak-dev-na-build-503-g9b715f3-3 --quiet

        #change traffic on prod

        ###Telemetry

        #gcloud run services update-traffic pae-svc-telemetry-prod-na --region=us-central1 --to-revisions=pae-svc-telemetry-prod-na-build-960-gaf754bb-1=100  --to-revisions=xxxxxxx=0

        #gcloud run services update-traffic pae-svc-telemetry-prod-eu --region=us-central1 --to-revisions=pae-svc-telemetry-prod-eu-build-960-gaf754bb-1=100  --to-revisions=xxxxxxx=0

        ###Oil Life

        #gcloud run services update-traffic cldrun-oil-life-service-prod-na-run --region=us-central1 --to-revisions=cldrun-oil-life-service-prod-na-run-build-561-g6f6aa62-1=100  --to-revisions=xxxxxxx=0

        #gcloud run services update-traffic cldrun-oil-life-service-prod-eu-run --region=us-central1 --to-revisions=cldrun-oil-life-service-prod-eu-run-build-561-g6f6aa62-1=100  --to-revisions=xxxxxxx=0

        ###Schedule Maintenance

        #gcloud run services update-traffic cldrun-scheduled-maintenance-prod-na --region=us-central1 --to-revisions=cldrun-scheduled-maintenance-prod-na-build-320-ge97d971-1=100  --to-revisions=xxxxxxx=0

        #gcloud run services update-traffic cldrun-scheduled-maintenance-prod-eu --region=us-central1 --to-revisions=cldrun-scheduled-maintenance-prod-eu-build-320-ge97d971-1=100  --to-revisions=xxxxxxx=0

        #exit(0)
```




