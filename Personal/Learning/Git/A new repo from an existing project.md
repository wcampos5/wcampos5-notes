NewRepo[^1]
#gitnewrepo #newrepo #repo #brandnew
***

1. Clone desired repo

2. Remove .git folder

3. type `git init`

4. Add all the files to the stage area

5. Commit initial Changes
```bash
git commit -m "MMOTA22T-<JiraTicket> - Message"
```

#### Connect it to GitHub
***
###### Go to your account in GitHub
6. Create the repository
- [ ] Uncheck README.me, .gitignore and License

7. To add the URL for the remote repository where your local repository will be pushed, run the following command. Replace REMOTE-URL with the repository's full URL on GitHub
```Bash
git remote add origin git@github.com:OWNER/REPOSITORY.git
```

8. Push your branch to GitHub
```PowerShell
git push -u origin master
```

***
[[New local git repo]] ||


[^1]: [NewRepo](https://kbroman.org/github_tutorial/pages/init.html)
