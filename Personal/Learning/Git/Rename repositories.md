reference[^1]

***

1. On GitHub.com, navigate to the main page of the repository.
2. Under your repository name, click  **Settings**. If you cannot see the "Settings" tab, select the  dropdown menu, then click **Settings**.
3. 1. In the **Repository Name** field, type the new name of your repository.
4. 1. Click **Rename**.

#### Update repo locally

In addition to redirecting web traffic, all `git clone`, `git fetch`, or `git push` operations targeting the previous location will continue to function as if made on the new location. However, to reduce confusion, we strongly recommend updating any existing local clones to point to the new repository URL. You can do this by using `git remote` on the command line:


```
git remote set-url origin NEW_URL
```

Sample:
*git remote set-url origin https://github.ford.com/wcampos5/new-name.git

***
#### The default branch has been renamed!

master is now named main

If you have a local clone, you can update it by running the following commands.

git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a

***

[^1]:[renaming-a-repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/renaming-a-repository)


