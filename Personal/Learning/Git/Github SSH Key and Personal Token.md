

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
ssh-add <\path\private_key_name>
```

Copy the public key value to the clipboard

```bash
cat /path/key.pub |sed -z "s/\n//g" |clip
```

##### In the Github

- Login into the [https://github.com/](https://github.com/)
- Go to your **Account Settings** on the top left in the site
- Go to **Settings** --> **SSH and GPG keys**
- On the **SSH Keys section** --> Click ===**New SSH Key**=== button

![[add_ssh_key.png]]

Provide an intuitive **Title**
Choose **Authentication Key** as type

Paste the **Public Key** value into Key textbox


***

## More than one Github account?

Repeat the above steps for each Github account.
*When creating ssh-key you will be prompt to choose the path and key file name (provide a different one for each account)*

##### Configure your SSH client to use the appropriate key for each GitHub account:

Create or edit the SSH configuration file (`~/.ssh/config` on Unix-like systems).

For each GitHub account, add a configuration block specifying the host and the location of the corresponding private SSH key. For example:

>[!example] config file example
```bash
Host github.com
    HostName github.com
    User wcampos5
    IdentityFile /<path>/private_key #id_ed25519_person
	
Host github-enterprise
    HostName github.ford.com
    User corporate-proxy-user #gdia-prognostics
    IdentityFile /<path>/private_key #id_ed25519_work
```

With this configuration in place, you can now use the alias `github-enterprise` to refer to your enterprise GitHub host in Git commands. For example, if you want to clone a repository from your enterprise GitHub host, you can use the following command:

```bash
git clone git@github-enterprise:your-username/your-repository.git
```

>[!error] Must be out of VPN to use [Github.com](https://github.com)
***



***

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

