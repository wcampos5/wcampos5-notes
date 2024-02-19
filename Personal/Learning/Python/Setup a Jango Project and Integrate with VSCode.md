Coursera reference: [Criação de um projeto Django (etapas e código)](https://www.coursera.org/learn/apis/supplement/oQrdH/optional-creating-a-django-project-steps-and-code)
***
#django #djangosetup

- Create a project folder
	- Activate the new created project environment using:
```
py -m venv projectFolder
```

- Go the that folder project
- type:
```
pipenv shell
```
This will open a new shell session in the virtual environment

Run:
```
./script/activate
```
...and *deactivate* to exit.

Install the Django framework
```
pipenv install jango
```

- Use django-admin to create a new django project setup in this directory.
 ```
 django-admin startproject ProjectName .
```

Go to django project folder created
```
cd ProjectName
```

- Create a new project django app
```
python manage.py startapp ProjectNameAPI
```
This will create a project within the necessary migration and configurations

- Run the django server
```
python manage.py runserver
```
>[!note] Server will be running in the default 8000 port
>To change the port add the port number to the above command.

***
#### Integrating the Virtual Environment in the VSCode
This helps to apply command in the terminal
#djangovscode #vscodeintegration

> [!warning] Important | Never skepp it!
>In the Settings (CTRL+SHIFT+p)
>Select *Python Interpreter*
>Select your project virtual environment

Open the VSCode terminal (CTRL+SHIFT+')
*Now you can run commands directly from VSCode*



