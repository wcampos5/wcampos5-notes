VS Software Engineer 2023 | Connected Vehicle Data Awareness[^0] 
xx'
***
#connectedvehicle #dataawareness #dap


Starting with... data...

| Elements         | Definition                                                                               | Tag  |
| ---------------- | ---------------------------------------------------------------------------------------- | ---- |
| PID              | Parameter Identifier for Federally mandated Diagnostic Data (Standards across OEMs #oem) | #pid |
| DID              | Data Identifier for Ford internally defined diagnostic data #did                         |      |
| CAN signal       | Transmitted to communicate between various modules for vehicle operation                 | #can |
| DTC              | Designed to indicate a test failure as per certain criteria #dtc                         |      |
| DTC Failure Byte | Used to indicate a possible cause for the test failure #dtc                              |      |
| DTC Status Byte  | Used to indicate number of the test failure (pending / confirmed) etc.                   |      |


#### Connected Vehicles Timeline @FORD

![[connected_vehicle_timeline.png]]

#### PARSED
#parsed
Module software that "pushes" parameters data from ECU #ecu to the cloud, then on to Ford SCA-V server.
 - Data can include histograms on parameter values that preceded trigger event, e.g. vehicle fault.
 PARSED must be programmed into module software.



>[!success] Connected Vehicle Data - Type
>There are three types of CV Data Colection
> - Vehicle Health Alerts
> 	- DTC information from customers vehicles
> - Contextual Data
> 	- Trip Alert
> - Agile Vehicle Data
> 	- RDR
> 		- DID INformation
> 	- PARSED
> 		- Pre-programmed histograms in certains modules
> 	- CARMon
> 		- Trigger based CAN Signal collection every 10"


#### FNV & Lua Scripting

![[connected_vehicle_fnv_lua_scripting.png]]




#### CV Data Analytics - System V Engineering Approach

![[data_analytics_system_v_approach.png]]





***
[[]] | [[]]

***
[^0]: [VS Software Engineer 2023 | Connected Vehicle Data Awareness](https://efds.fa.em5.oraclecloud.com/fscmUI/redwood/learner/learn/learn-enrollment-details?launchedFrom=catalog-details&learnerRecordId=300003653700925&persona=ORA_LEARNER)


