Reference[^1]
***

#cdsid #ldapdocumentation #ldap

>[!warning] Ambas tem que renovar anualmente


conexão com ldap na pratica [https://github.ford.com/softwareteam/PFApi/tree/master/src/main/java/com/ford/peopleflow/pfapi/resource/ldap](https://github.ford.com/softwareteam/PFApi/tree/master/src/main/java/com/ford/peopleflow/pfapi/resource/ldap)

//ldap implementation (provavelmente as duas libs que precisam pra fazer a conexão)

'org.springframework.boot:spring-boot-starter-data-ldap' implementation 'com.unboundid:unboundid-ldapsdk'

########################################################
LDAP
########################################################

Configuration to access Ford Federation Service (FDS) in environment PROD

spring.ldap.urls=ldaps://fds.ford.com:636

spring.ldap.username=fordGID=${LDAP_TEST_FORD_GID},OU=Employee,OU=People,O=ford,C=US

spring.ldap.password=${LDAP_TEST_PASSWORD}

[https://azureford.sharepoint.com/sites/Identity/silas/silaspublic/Request%20Forms/EIDM%20User%20Guide/EIDM%20User%20Guide.pdf](https://azureford.sharepoint.com/sites/Identity/silas/silaspublic/Request%20Forms/EIDM%20User%20Guide/EIDM%20User%20Guide.pdf)

SOLITAÇÃO DE CDSID GENERICO TIPO E OU TIPO G (Nao sei qual seria o melhor ainda, mas o pessoal do ppf usa E para pre-prod e G para prod)

[https://azureford.sharepoint.com/sites/DSEng/SitePages/Ford-Directory-Service-](https://azureford.sharepoint.com/sites/DSEng/SitePages/Ford-Directory-Service-)(FDS).aspx?csf=1&web=1&e=R2qCdA

***
***

HOW TO GET ACCESS TO Ford Directory Service( LDAP)

  

1. You need to create a generic CDSID to be able to request access to ldap without need to bond the service with your own cdsid. For this step you gonna need a LL6 to request a new generic cdsid.

  

 1.1 Here you will see the difference beetween the type of CDSID ([https://azureford.sharepoint.com/sites/DirectoryServices/DirInfoStd/DirInfoStd_Lib/DirSrvStd_MasterValues_EMPTYPE.pdf](https://azureford.sharepoint.com/sites/DirectoryServices/DirInfoStd/DirInfoStd_Lib/DirSrvStd_MasterValues_EMPTYPE.pdf)). For now what is in my knowlegde is that we need 2 different CDSID one for pre-prod enviroment and one for prod enviroment and both can be type G. ~~(and the type is E for pre-prod (a non-person ID and typically used for Shared Workstation, Proxy, Batch, or FTP.) and G for prod (This is a non-person ID and typically used to support application, infrastructure, etc.). If is really the correct type for the enviroments I dont know yet.)~~

  

 1.2 Now you know which type will be the employee you will have to ask for LL6's help to create a new generic cdsid for now I recommend to create first to pre-prod and after do all again to prod, just to be sure and do not make rework on this. ([https://azureford.sharepoint.com/sites/Identity/silas/silaspublic/Request%20Forms/EIDM%20User%20Guide/EIDM%20User%20Guide.pdf](https://azureford.sharepoint.com/sites/Identity/silas/silaspublic/Request%20Forms/EIDM%20User%20Guide/EIDM%20User%20Guide.pdf))

  

 1.3 You will have in your hands after the creation of the new cdsid the username and the password of the user, go to [https://iam.ford.com/IdentityManagement/aspx/users/AllPersons.aspx](https://iam.ford.com/IdentityManagement/aspx/users/AllPersons.aspx) or [https://www.sdcds.ford.com/](https://www.sdcds.ford.com/) and search for that user to get more information about it.

  

 2 Now that you have the cdsid created, you have to request access for your generic cdsid to LDAP[  
https://azureford.sharepoint.com/sites/DSEng/Lists/Access_Request/Normal.aspx](https://azureford.sharepoint.com/sites/DSEng/Lists/Access_Request/Normal.aspx) After approved you will have everything to make the connection thought java api.

~~(The End User Access is for users that want to use their personal CDSID for FDS~~ [~~https://azureford.sharepoint.com/sites/DSEng/Lists/EndUser_Access_Request/AllItems.aspx)~~](https://azureford.sharepoint.com/sites/DSEng/Lists/Access_Request/Normal.aspx)

  

 3 Here are some examples of java implemantion in people flow

Maybe try to fetch some data from the postman to test it **(ask for tiago a postman colletion to make the connection)**

[https://github.ford.com/softwareteam/PFApi/tree/master/src/main/java/com/ford/peopleflow/pfapi/resource/ldap](https://github.ford.com/softwareteam/PFApi/tree/master/src/main/java/com/ford/peopleflow/pfapi/resource/ldap)

  

here some info

  

//ldap implementation (provavelmente as duas libs que precisam pra fazer a conexão)

  

'org.springframework.boot:spring-boot-starter-data-ldap' implementation 'com.unboundid:unboundid-ldapsdk'

  

####################################################################################

LDAP

####################################################################################

Configuration to access Ford Federation Service (FDS) in environment PROD

spring.ldap.urls=ldaps://fds.ford.com:636

spring.ldap.username=fordGID=${LDAP_TEST_FORD_GID},OU=Employee,OU=People,O=ford,C=US

spring.ldap.password=${LDAP_TEST_PASSWORD}

  

# Test Ford LDAP

spring.ldap.base=o=Ford,c=US

spring.ldap.urls=ldaps://fdsamd.ford.com:636

spring.ldap.username=fordGID=${LDAP_TEST_FORD_GID},OU=Employee,OU=People,O=ford,C=US

spring.ldap.password=${LDAP_TEST_PASSWORD}

  

GID can be found in the [https://iam.ford.com/IdentityManagement/aspx/users/AllPersons.aspx](https://iam.ford.com/IdentityManagement/aspx/users/AllPersons.aspx)


#### Tags
***


[^1]: [PLEIRO - Miro](https://miro.com/app/board/uXjVPUnSgxs=/?moveToWidget=3458764572181949321&cot=14)
