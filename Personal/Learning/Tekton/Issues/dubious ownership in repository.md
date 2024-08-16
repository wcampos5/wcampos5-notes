#issues #troubleshoot

Issues:
detected dubious ownership in repository at

Caused by:
Incorrect gradle-boost version

Solution:
Update gradle-boost version

***

>[!error] Error State
>#space #storage #vpc #tar

Tar can't be created due to out of space

`tar: c5f53e8f78c95e662d44c685231efda5ae20be50.tar: Wrote only 4096 of 10240 bytes
`tar: Error is not recoverable: exiting now

>[!warning] Reason

Tar can't be created due to out of space

`tar: c5f53e8f78c95e662d44c685231efda5ae20be50.tar: Wrote only 4096 of 10240 bytes
`tar: Error is not recoverable: exiting now

>[!success] Solution

Increase VPC (Shared Workspace Storage size)

```yaml
.
.
.
pipelineRef:
    name: managed-terraform-cd-pipeline
  taskRunTemplate:
    podTemplate:
      securityContext:
        fsGroupChangePolicy: OnRootMismatch
    serviceAccountName: pipeline
  timeouts:
    pipeline: 1h0m0s
  workspaces:
    - name: clone-workspace
      volumeClaimTemplate:
        metadata:
          creationTimestamp: null
        spec:
          accessModes:
            - ReadWriteOnce
          resources:
            requests:
#             storage: 1Gi            
              storage: 2Gi
          storageClassName: px-repl2-block
        status: {}
```




