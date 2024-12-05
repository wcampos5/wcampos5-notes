#gitcommands


**_Copy files between branches_**
#gitcopy #gitcopyfiles

>[!warning] Make sure that the file is fetched to your local for source branch

```bash
git checkout target_branch
```

```
git checkout source_branch source_file_name
```


**_Copy COMMITS between branches_**
#gitcopycommit #copybetweenbranches #cherrypick

![[cherry-pick.png]]

Steps:
- List and copy the commit(s) hash from the desired source_branch
#gitlog
```
git log <source_branch>
```

#gitlogauthor
```
git log --author="wcampos5" --format="%H" --reverse
```

#gitlogfilehash

```
git log --follow 
```

Make sure you are in the ==target branch==
```
git cherry-pick commit_hash1 commit_hash2...
```
where ... refer to more commit_hashs

>[!warning] Use -n option if you DO NOT wanna merge directly
>	```
>	git cherry-pick -n ...
>	```


****_Copy FILES between repositories_**
#gitcopyfiles #copybetweenrepositories #cherrypick 

```
cd source_repo
```

```
git format-patch <sha1^..sha1 or HEAD^1 for last commit>
```

```
cd target_repo
```

git-am - Apply a series of patches from a mailbox

>[!info] --3way or -3
>When the patch does not apply cleanly, fall back on 3-way merge if the
> patch records the identity of blobs it is supposed to apply to and we 
> have those blobs available locally. `--no-3way` can be used to override
>  am.threeWay configuration variable. For more information, see 
>  am.threeWay in [git-config[1]](https://git-scm.com/docs/git-config).

```
git am -3 /path/to/sourcerepo/0001-…-….patch
```


#### Compare
#gitcomparebranches #branches #compare #gitdiff

**_Working directory x Staging area_**
#gitcompareworkingdirectory #workingdirxstaged
```
git diff
```

**_Staging area_**
```
git diff --staged
```

**_Comparing branches like PR (Pull Request)_**

dev <-- main (Example)

```
git diff dev...main
```



**_Files between branches
#gitcomparefiles #gitcomparefiles 

cd /path/to/sourcerepo
```
git format-patch <sha1^..sha1 or HEAD^1 for last commit>
```

cd /path/to/targetrepo
```
git am -3 /path/to/sourcerepo/0001-…-….patch
```


***

#### Rename

##### Branches
#branch #rename 
###### Local

```
git branch -m <old_name> <new_name>
```

###### Remote

Delete the old branch on remote - where \<remote\> is, for example, _origin_

```Bash
git push <remote> --delete <old_name>
```

>[!warning] Prevent git from using the old name when pushing
>```Bash
>git branch --unset-upstream <new_name>


Push the new branch to remote

```Bash
git push <remote> <new_name>
```

Reset the upstream branch for the new_name local branch

```Bash
git push <remote> -u <new_name>
```


#### Co-Author
#gitcoauthor #coauthor

```bash
Co-authored-by: João Silva <joao@exemplo.com>
```

#### Git log
#gitlog

```Bash
git log --follow <path/file>
```


#### Git Update Index
#gitupdateindex #gituntrack

Arquivos trackeados pelo git antes de se adicionar o gitignore

Não indexar arquivos que não se deseja trackear:

```Bash
# Untrack files
git rm --cached <file>
```

Make sure to add the file in the .gitignore
```bash
git add -A
```

Commit changes


##### Update permission

###### Alterar modo de execução
```Bash
git update-index --chmod=+x gradlew
```

###### Ignorar Alterações em Arquivos Rastreáveis
```Bash
git update-index --assume-unchanged <arquivo>
```

Se você usou `--assume-unchanged` e quer reverter isso:
```Bash
git update-index --no-assume-unchanged <arquivo>
```



