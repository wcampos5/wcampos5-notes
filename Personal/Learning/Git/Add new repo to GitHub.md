Add to GitHub[^1]
***
#github #newrepo 

1. Create a new repository on GitHub
	- Do not add README.md or LICENSE files
2. Copy the new repo url

3. Go to your source local repo code...

To add the URL for the remote repository where your local repository will be pushed, run the following command. Replace REMOTE-URL with the repository's full URL on GitHub
```bash
git remote add origin REMOTE-URL
```

4. To verify that you set the remote URL correctly, run the following command.
```bash
git remote -v
```

5. To push the changes in your local repository to GitHub.com, run the following command.
```bash
git push origin man
```

***
[[New local git repo]] |
#### Tags
***
[^1]: [Add to GitHub](https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github#adding-a-local-repository-to-github-using-git)