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
```
git log <source_branch>
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

