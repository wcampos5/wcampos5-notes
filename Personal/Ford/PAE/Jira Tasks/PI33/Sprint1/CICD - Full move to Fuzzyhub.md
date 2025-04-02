***
4460[^1]
***
#jira #taks

>[!warning] Requirements
>All repos TBD migration completed

#### Reference PRs to do that
[m1-aim-pae](https://github.ford.com/gdia-prognostics/m1-aim-pae/pull/1486)
[bhm](https://github.ford.com/gdia-prognostics/gcp-bhm-prog/pull/420/files)



Make sure that all of the repos are pointing to the fuzzyhub pipelines/tasks
- Repos:
	- gcp-tsl-prog
	https://github.ford.com/gdia-prognostics/gcp-tsl-prog/pull/280
>[!error] Unit-Tests failed
>ERROR tests/unit/components/transformers/test_leak_detection.py
ERROR tests/unit/components/transformers/test_leak_training.py
!!!!!!!!!!!!!!!!!!! Interrupted: 2 errors during collection !!!!!!!!!!!!!!!!!!!!
============================== 2 errors in 10.82s ==============================
ERROR: Unit tests or coverage report generation failed.

- 
	- gcp-common-prog
https://github.ford.com/gdia-prognostics/gcp-common-prog/pull/146

>[!warning]  Missing README content information

- 
	- gcp-test-repo-prog
>[!error] ERROR: Unit tests or coverage report generation failed.
- 
	https://github.ford.com/gdia-prognostics/gcp-test-repo-prog/pull/341
>[!warning] Sonarqube disabled

- 
	- astro-unit-test-image
	https://github.ford.com/gdia-prognostics/astro-unit-test-image/pull/18
>[!warning] Missing README.md

>[!warning] Sonarqube disabled



- 
	- unit-testing-image
	https://github.ford.com/gdia-prognostics/unit-testing-image/pull/32
>[!warning] Empty README.md

>[!warning] Missing RUN_UNIT_TEST property
>in the .tekton/<dev, qa and prod>/ci.yaml

- 
	- spark-dataproc-base-image
	https://github.ford.com/gdia-prognostics/spark-dataproc-base-image/pull/44
	
>[!warning] Missing RUN_UNIT_TEST property
>in the .tekton/<dev, qa and prod>/ci.yaml

- 
	- gcp-privacy-pae
	https://github.ford.com/gdia-prognostics/gcp-privacy-pae/pull/68
	
>[!warning] RUN_UNIT_TEST =False

>[!warning]  Missing README

- 
	- gcp-eds-prog
		https://github.ford.com/gdia-prognostics/gcp-eds-prog/pull/25


	- gcp-wam-prog
		https://github.ford.com/gdia-prognostics/gcp-wam-prog/pull/25
	- 
:luc_check: - sonar-project.properties
	_- sonar.coverage.exclusions = **/**_
	_# sonar.qualitygate.wait=true_
	_# sonar.qualitygate.timeout=1000_
:luc_check: - README.md
	Pipelinerun
		name
			"gcp-<feature_name>-prog-dev-cd"

:luc_check:   - codeowner
.tekton/dev/
	:luc_check:    - cd.yaml
	:luc_check:    - ci.yaml
.tekton/dev/
	:luc_check:    - cd.yaml
	:luc_check:    - ci.yaml
.tekton/qa/
	:luc_check:    - cd.yaml
	:luc_check:    - ci.yaml
.tekton/prod/
	:luc_check:    - cd.yaml
	:luc_check:    - ci.yaml	


#### Subtasks
:luc_check_square:   Create cicd bucket in Prod [4461](https://ford.atlassian.net/browse/MMOTA22T-4461) 


***
[[]] | [[]]
#### Tags
***
[^1]: [4460](https://ford.atlassian.net/browse/MMOTA22T-4460)