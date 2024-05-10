[DT&E Github Migration](https://videosat.ford.com/#/videos/b96883e1-b046-41d8-977b-69617f75b09a)

#github #migration


#### Requirements:
- [ ] Add at least 2 topics to the repos
	- [ ] Production / Non-production
	- [ ] Team Name
- [ ] Branch Protection for production source code
	- [ ] dev, qa, stage, main branches
- [ ] Remove critical and high secret violations before migration
	- [ ] **Due by August 20**

- [ ] Team **organization** creation (Rules)
- [ ]  Action use / creation
- [ ] Secrets / Auth
- [ ] Pipelines
- [ ] 



![[github_cloud_infrastructure.png]]

#### Organization Structure (only 4 Orgs from now one)
#organization #repo #fordinnersource #fordcollab #fordsandbox #fordrestricted

![[organization_structure.png]]
#### Github Cloud Security Groups
#githubcloud #githubfimgroups

![[github_cloud_fim_groups.png]]

#### Custom Teams INSIDE Github Pattern

![[github_cloud_custom_team_fim_groups.png]]


#### Migration Tool

>[!error] TODO: Looking for the migration Tool

#### Advanced Features

###### - Github Apps

###### - Github Actions
- Actions are available for all Orgs
- Runners are available in ford-innersource
###### - Github Codespace, Co-Pilot
- Available upon request


#### Q&A
***

_Does migration tools can migrate users?_
**No, because since userid changes (userid_ford) the personal token changes**

_How to handle old commits that is pointing to Nexus?_

_Does the tokens needs to be regenerated?_

_Does the pipelines will still running smoothly?_
**It needs to be re-aligned once the url will change.
Also, the webhook will change**






***
Acronyms

| Acronym | Definition              | Tag  |
| ------- | ----------------------- | ---- |
| EMU     | Enterprise Managed User | #emu |
| OM      | Organization Member     | #om  |
| RU      | Restricted User         | #ru  |


