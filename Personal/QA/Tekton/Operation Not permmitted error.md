Error: error writing "0 0 4294967295\n" to /proc/33/uid_map: write /proc/33/uid_map: operation not permitted  
level=error msg="error writing \"0 0 4294967295\\n\" to /proc/33/uid_map: write /proc/33/uid_map: operation not permitted"  
level=error msg="(unable to determine exit status)"

### Resolution:

In the Task name: image-build 
taskRef name: ***sdt-sdt-buildah***  replaced by ===vdcc-buildah-task=== that contains the Security Context:

```
spec:
  description: >-
    Buildah...
    .
    .
    .
  params:
	.
	.
	. 
&nbsp;&nbsp;results:
	- description: Digest of the image just built.
	  name: IMAGE_DIGEST
	  type: string
  stepTemplate:
	name: ''
	resources: {}
	securityContext:
	  capabilities:
		add:
		  - SETFCAP
```

AND 

In the Task name: quay-to-gar 
taskRef name: ***sdt-sdt-quay-to-gar*** replaced by ===vdcc-quay-to-gar-task=== that contains the Security Context:
