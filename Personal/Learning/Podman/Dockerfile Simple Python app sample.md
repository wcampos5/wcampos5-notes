
- [ ] Create a directory to the images 
#newitem #powershell

```PowerShell
New-Item -ItemType Directory -Path c:\Temp\Lixo\images
```

- [ ] Create a directory to your image app
```PowerShell
New-Item -ItemType Directory -Path c:\Temp\Lixo\images\ubuntu-python
```

- [ ] Change to the directory `c:\Temp\Lixo\images\ubuntu-python`

- [ ] Create the python app (_app.py_)
```python
nome = input("Qual é o seu nome?")
print (nome)
```

- [ ] Create the Dockerfile
#aptclean #clean

```Dockerfile
From ubuntu

RUN apt update && apt install -y python3 && apt clean

# Copy python application to the container into opt directory
COPY ./app.py /opt/app.py

#Execute the python app
CMD python3/opt/app.py
```
>[!info] apt clean 
>remove un-used installation files

- [ ] Build the image
```PowerShell
docker build -t ubuntu-python ./DockerfilePath
```


