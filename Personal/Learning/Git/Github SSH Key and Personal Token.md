

In order that you can exchange data between any host and the Github.com 
you need to create a SSH Key or Token and register it in the ssh-agent.

Instructions:

## Github SSH Key
##### Create a new SSH Key in your _terminal_ 

```
ssh-keygen -t ed25519 -C wcampos5@gmail.com
```

You will be prompted to type a passphrase.

Both _public_ and _private_ keys will be generated.

Save in your local machine in the desired path
The default is C:\\users\\<user_name>\\.ssh\\id_25519

##### Start SSH-Agent

```
eval $(ssh-agent -s)
```

##### Add the private key into the agent

```
ssh-add <path\private\_key_name>
```

Copy the public key value to the clipboard

##### In the Github

- Login into the [https://github.com/](https://github.com/)
- Go to your **Account Settings** on the top left in the site
- Go to **Settings** --> **SSH and GPG keys**
- On the **SSH Keys section** --> Click ===**New SSH Key**=== button

![[add_ssh_key.png]]

Provide an intuitive **Title**
Choose **Authentication Key** as type

Paste the **Public Key** value into Key textbox


## Github Personal Token

 Login into the [https://github.com/](https://github.com/)
 Go to [tokens](https://github.com/settings/tokens)
 Click **Generate new token** button

![[new_personal_access_token.png]]

- Give a description **(Note)** like what does this personal token will be for
- Select the **Expiration** date
- Check the boxes that defines this token scope then **Generate the Token** button

===YOU MUST SAVE IT IN LOCAL AND SAFETY PLACE, IT WILL BE DISPLAYED JUST ONCE===

## Using the Personal Token

So, if your are using the Personal Token may you will be prompt requesting the user and password.
User..........: Your Github User
Password: Use the password that your have saved in a local file


## Updating Github passwords in the Windows

- Got to Control Panel\User Accounts\Credential Manager
- Select Windows Credentials
- Looking for credentials beginning with **git**
- Select the desired one and then edit it
![[edit_generic_credential.png]]




## ## Developer's hack (short code if required?):

```
git remote set-url origin https://<githubtoken>@github.com/<username>/<repositoryname>.git
```




#### Tags
***
#ssh #token #gittoken #ssh-key #personal #managecredencials

