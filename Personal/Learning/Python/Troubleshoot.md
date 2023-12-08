#qa #troubleshoot #issues 

#### Error State
#pipissues #pipconfig

*Looking in indexes: https://www.nexus.ford.com/repository/Mach1MLTools_Gold_private_pypi_repository/simple
WARNING: Retrying (Retry(total=4, connect=None, read=None, redirect=None, status=None)) after connection broken by 'ConnectTimeoutError(<pip._vendor.urllib3.connection.HTTPSConnection object at 0x00000145651F3500>, 'Connection to www.nexus.ford.com timed out. (connect timeout=60.0)')': /repository/Mach1MLTools_Gold_private_pypi_repository/simple/pipenv/*

##### Reason
~/pip/pip.ini index-url value pointing to:
https://www.nexus.ford.com/repository/Mach1MLTools_Gold_private_pypi_repository/simple

##### Solution
Comment it out
***

