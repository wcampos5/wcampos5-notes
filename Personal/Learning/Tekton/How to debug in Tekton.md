#tekton #debug #tektondebug
***

Go to the desired task before the failure point then add a sleep
```
sleep infinity
```

Run the pipeline again until that point and it will get in sleep

![[Pasted image 20231025142803.png]]

In Tekton go to ***TaskRuns*** 
	Looking for your task in ***Pod*** columns
	![[Pasted image 20231025143020.png]]

Select the Pod and then ***Terminal***

![[Pasted image 20231025143208.png]]

In the Pod it show that you are in the workspace folder.
Here is were we will start off when you log in the task task container

List the scripts:
```
ls /tekton/scripts
```

The listed script have all the parameters their actual values.
You get one script for each steps in your tasks.

You can edit the script or you can copy it and then edit the copy.

Let's copy it to our current directory and edit the copy
```
cp /tekton/scripts/<script_name> .
```

First we need to ===remove the *sleep infinity*=== that we put into it.
```
vim <script_name>
```

Re-run it
```
./<script_name>
```

If any code changes will be required it can be found at ===***source/***=== folder




References:
***

[Tekton-task-debug-video](https://azureford.sharepoint.com/sites/SDE/_layouts/15/stream.aspx?id=%2Fsites%2FSDE%2FVideos%2FTekton%2DTask%2DDebug%2Ftekton%2Dtask%2Ddebug%2Emp4&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview)












