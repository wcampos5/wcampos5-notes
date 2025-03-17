installing-using-pip-and-virtual-environments[^1]
***
#virtualenvironment #virtualenv #env


#### Default Python Virtual Environment

- Create a project folder

- Create a virtual environment:

Inside the project folder, type:
>[!code]
```python
py -m venv .venv
```
where **.venv** is the name of Virtual Environment


- Activate the Virtual Environment
##### cmd
```python
.venv\Script\Activate.bat
```

##### Bash
```Bash
source .venv/Script/activate
```

Use *==deactivate==* to disable the Virtual Environment
```Bash
deactivate
```


#### Update Python Package Manager (pip)
#pip

>[!error] ##### Proxy Error
>If proxy error disable the proxy (PowerShell and Chrome)
>Re-start the bash session and try again


```python
py -m pip install --upgrade pip
py -m pip --version
```

#### Install Packages using PIP

```python
py -m pip install package_name
```


#### Installing a specific version

```python
py -m pip install "package_name==2.18.4"
```

#### Installing the latest 2.x version

```python
py -m pip install "package_name>=2.0.0,<3.0.0"
```


#### Install from version control systems

```
google-auth @ git+https://github.com/GoogleCloudPlatform/google-auth-library-python.git
```

#### Install from local archives (zip, tar, wheels)
```
py -m pip install requests-2.18.4.tar.gz
```

If you have a directory containing archives of multiple packages, you can tell pip to look for packages there and not to use the [Python Package Index (PyPI)](https://packaging.python.org/en/latest/glossary/#term-Python-Package-Index-PyPI) at all:

```
py -m pip install --no-index --find-links=/local/dir/ requests
```

#### Install from other package indexes

If you want to download packages from a different index than the [Python Package Index (PyPI)](https://packaging.python.org/en/latest/glossary/#term-Python-Package-Index-PyPI), you can use the `--index-url` flag:
#indexurl #index

```python
py -m pip install --index-url http://index.example.com/simple/ SomeProject
```

#### Upgrading packages
#upgrade #upgrading

```python
py -m pip install --upgrade requests
```



#### Using a requirements file
#requirement #requirements
Instead of installing packages individually, pip allows you to declare all dependencies in a [Requirements File](https://pip.pypa.io/en/latest/user_guide/#requirements-files "(in pip v24.0)"). For example you could create a `requirements.txt` file containing:

>[!example] requirements.txt
>requests\=\=2.18.4
>google-auth\=\=1.1.0

And tell pip to install all of the packages in this file using the `-r` flag:
```python
py -m pip install -r requirements.txt
```


#### Freezing dependencies
#freeze #export #version
Pip can export a list of all installed packages and their versions using the `freeze` command:

```python
py -m pip freeze
```

Which will output a list of package specifiers such as:
#requirements 
```
cachetools==2.0.1
certifi==2017.7.27.1
chardet==3.0.4
google-auth==1.1.1
idna==2.6
pyasn1==0.3.6
pyasn1-modules==0.1.4
requests==2.18.4
rsa==3.4.2
six==1.11.0
urllib3==1.22
```

>[!important]
>The `pip freeze` command is useful for creating [Requirements Files](https://pip.pypa.io/en/latest/user_guide/#requirements-files "(in pip v24.0)") that can re-create the exact versions of all packages installed in an environment.




***
[^1]: [installing-using-pip-and-virtual-environments](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/)
