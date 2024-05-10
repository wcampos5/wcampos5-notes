#registry #deploy #image #gar 
***

Go to the corresponding folder (Where Dockerfile is placed)

#### Quay / Register Login

Go to [registry.ford.com](https://registry.ford.com/repository/)
Profile --> Account Settings --> Generated Encrypted Password
Type your regular SSO 

![[quay_generated_podman_login.png]]

Copy and paste the string login above in your terminal.

#### Creating and Tagging image to Quay
```
docker build -t registry.ford.com/gdia_prognostics/pytest:1.2 .
```
#### Pushing create image to Quay
```
docker push registry.ford.com/gdia_prognostics/pytest:1.2
```


#### GAR - Google Artifact Registry
#gar 

Push a image pro google cloud
```
gcloud auth configure-docker us-central1-docker.pkg.dev
```

docker push us-central1-docker.pkg.dev/ford-205d7c8557863b0cd61dd08a/ford-container-images/pytest:1.2

