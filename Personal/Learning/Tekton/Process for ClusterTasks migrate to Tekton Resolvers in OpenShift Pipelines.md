
ClusterTasks to Resolver Migration[^1]
ClusterTasks to Resolver Migration RedHat[^2]
IaC Tekton Catalog - Shared tasks[^3]
***
#Clustertasks #Resolvers #migration

See link documentation.

## Clustertask migration process:[](https://docs.cicd.ford.com/docs/resolvers/migration-process/#clustertask-migration-process)

- Tekton Clustertask are deprecated and it will removed by `04/01/2024` so we are requesting users to use resolvers.
    
- Reasons why the ClusterTask getting deprecated
    
    - First, cluster tasks can be difficult to manage. They are not namespaced, so they can be overwritten by other cluster tasks. Additionally there is no built-in versioning, hence if someone updates a ClusterTask in a non-backward compatible way, it will break any usage of it that didn’t take this change into account.
        
    - Second, they are not necessary for most use cases. Tekton Pipelines are run in a single namespace, so there is no need for a cluster-scoped Task.
        
    - Third, cluster tasks are not as secure as namespaced tasks. They can be accessed by any user in the cluster, even if they do not have access to the namespace where the TaskRun is running.
        
    - The clustertask will be referred to pipelines like below this should be changed to resolvers instead of clustertask.
        
    - The pipelines use clustertask will get referenced by
        
        ```yaml
        taskRef:
          kind: ClusterTask
          name: <task name>
        ```



***
[[]] | [[]]
#### Tags
***
[^1]: [ClusterTasks to Resolver Migration](https://docs.cicd.ford.com/docs/resolvers/migration-process/)

[^2]: [ClusterTasks to Resolver Migration RedHat](https://www.redhat.com/en/blog/migration-from-clustertasks-to-tekton-resolvers-in-openshift-pipelines)

[^3]: [IaC Tekton Catalog - Shared tasks](https://github.ford.com/IaC/tekton-catalog)

