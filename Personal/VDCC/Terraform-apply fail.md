Error:
Error: resource is in failed state "Ready:False", message: Revision 'vdcc-vp-service-launch-00083-vpb' is not ready and cannot serve traffic. The user-provided container failed to start and listen on the port defined provided by the PORT=8080 environment variable. Logs for this revision might contain more information.

Root Cause:
Db Script renamed

Solution1:
Re-add the missing Db Script file if applicable
Add an incremental tag manually into Github:


