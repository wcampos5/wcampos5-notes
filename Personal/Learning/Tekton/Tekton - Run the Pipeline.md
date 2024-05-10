Run pipeline[^1]
***

#### Tekton - Run Pipeline Command
#tektonstart #start #startpipeline
```
tkn pipeline start pipeline --showlog \
-p repo-url="https://github.com/rograno/tekton-testing.git"
```

_--showlog_ : Waiting for logs to be available...
_-p_ : parameter required by the pipeline

***
[[Add Task or Pipeline - Kubectl]] | [[Tekton Triggers]]

[^1]: [Run pipeline](https://www.coursera.org/learn/continuous-integration-and-continuous-delivery-ci-cd/lecture/0Srjv/building-a-tekton-pipeline)