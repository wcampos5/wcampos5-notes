Git Flow[^1]
#gitflow #gitworkflow
***

#### Trunk / Master Workflow
#master #trunk

![[Pasted image 20240604140455.png]]

Every body :luc_users: commits directly into the master.
Every one is responsible to fix their own problem.

**This is no t a good approach**

***

#### Branch Workflow / Git Flow
#gitflow #branchflow

![[Pasted image 20240604141036.png]]

For each feature we **==MUST==** create a new feature branch.
- [ ] Create a feature from main
- [ ] Apply changes in the feature branch
- [ ] Merge it to main branch

***

#### Fork Workflow
#fork #forkworkflow

![[git_fork_workflow.png]]

Common used for the Open Source Projects

The teams clones the repo, work and send the PR to the repo owner ,then the Official team do the merges.

***
 
 #### Git TAG for Workflow
 #gittag #tagworkflow #release

- Generates a snapshot state (i.e. release v1.0)
- Code equivalence with the Docker version

###### Semantics:
MAJOR.: Incompatibility impact
MINOR.: New functionalities without broken
PATCH...: Issues fixes, keeping compatibility

###### Sample:
V1.0.0 -> Initial Release
V1.1.0 -> New Functionality
V1.1.1 -> Bug Fix
V2.0.0 -> New release, broken compatibility

###### Tag Usage:
#gittag
- [ ] Generate a Tag in the repository
```
git tag -a v1.0.0 -m "New componet release"
```

- [ ] Send it to remote
```
git push origin v1.0.0
```

- [ ] Github Release Validation

	




***
[[]] | [[]]
#### Tags
***
[^1]: [Git Flow](https://www.atlassian.com/git/tutorials/comparing-workflows)