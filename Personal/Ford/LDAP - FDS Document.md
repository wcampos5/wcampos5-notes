Reference[^1] 
***
#ldap #ldapaccess #fds

How to get access to Ford Directory Service (FDS) to use LDAP

  

1. You need to create a generic CDSID to be able to request access to ldap without need to bond the service with your own cdsid. (Because if you get fired or just leave the company someone will have to do it again) For this step is recommended a LL6 or + to create a new generic cdsid with you.

  

 1.1 [Here](https://azureford.sharepoint.com/sites/DirectoryServices/DirInfoStd/DirInfoStd_Lib/DirSrvStd_MasterValues_EMPTYPE.pdf) you will see the difference beetween the types of CDSID. You will we need 2 different CDSID one for pre-prod enviroment and one for prod enviroment and both can be type G. (Take a look in the link and make sure if any other type of can fit in your need)

  

 1.2 Now you know which type will be the generic employee you will have to ask for LL6's help to create a new generic cdsid for now. I recommend to create to pre-prod first and after test it in pre-prod enviroment do all it again to prod, just to be sure to not do any rework on this. (If you want to create a generic cdsid type G it is on the page 30 in the documentation below, but there are all kinds of types)([https://azureford.sharepoint.com/sites/Identity/silas/silaspublic/Request%20Forms/EIDM%20User%20Guide/EIDM%20User%20Guide.pdf](https://azureford.sharepoint.com/sites/Identity/silas/silaspublic/Request%20Forms/EIDM%20User%20Guide/EIDM%20User%20Guide.pdf))

  

 1.3 After a while your sponsor/LL6 will have in they hands after the creation the username and the password of the new cdsid, go to [https://iam.ford.com/IdentityManagement/aspx/users/AllPersons.aspx](https://iam.ford.com/IdentityManagement/aspx/users/AllPersons.aspx) or [https://www.sdcds.ford.com/](https://www.sdcds.ford.com/) and search for the newly created user for make sure that he exists.

  

 2. Now that you have the cdsid created, you have to [request access](https://azureford.sharepoint.com/sites/DSEng/Lists/Access_Request/Normal.aspx) for your generic cdsid to FDS to be able to use LDAP. After approved you will have everything to make the connection thought any api. **Note: In this step your sponsor/LL6 will recive an email to approve this access when is to pre-prod enviroment just an email saying approved is sufficient, but if its prod enviroment probably will be needed the print of the GRC assessment screen.**

  

 3. Here are some examples of java implementation

 //ldap (libs)

 implementation 'org.springframework.boot:spring-boot-starter-data-ldap'

 implementation 'com.unboundid:unboundid-ldapsdk'

  

####################################################################################

LDAP

####################################################################################

Configuration to access Ford Federation Service (FDS) in environment PROD

spring.ldap.urls=ldaps://fds.ford.com:636

spring.ldap.username=fordGID=${LDAP_TEST_FORD_GID},OU=Employee,OU=People,O=ford,C=US

spring.ldap.password=${LDAP_TEST_PASSWORD}

  

# Test Ford LDAP

Configuration to access Ford Federation Service (FDS) in environment PRE-PROD

spring.ldap.base=o=Ford,c=US

spring.ldap.urls=ldaps://fdsamd.ford.com:636

spring.ldap.username=fordGID=${LDAP_TEST_FORD_GID},OU=Employee,OU=People,O=ford,C=US

spring.ldap.password=${LDAP_TEST_PASSWORD}

  

There are some examples in peopleflow and insights catalog

Tags
***


***
[^1]: [VDCC Miro by PLEIRO](https://miro.com/app/board/uXjVPUnSgxs=/?moveToWidget=3458764572181949321&cot=14)

