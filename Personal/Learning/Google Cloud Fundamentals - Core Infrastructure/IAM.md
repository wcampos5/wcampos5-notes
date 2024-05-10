Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals #iam

#### IAM - Identity and Access Management
Helps to manage who has access to what!

Administrator can apply policies #policiesintroduction that defines who can do what on which resources.


IAM have TWO PARTS
- Who (Also called ==principle== @who.com #principle)
	- Google Account
	- Google Group
	- Service Account
	- Cloud Identity Domain

- What (Can do **What**, Defined by a ==Role==)
	- IAM Role
		Is a collection of permissions

>[!info] Principle
>Each principal has its own identifier,
>usually an email address



#role
#### Role 
***
Is a collection of permissions.

Grating a Role to a principle, you grant all the permissions that role contains.

###### Deny
We can define ==deny rules== the prevent certain principals from using certain permissions, regardless of the roles they're granted.

Deny Policies has precedence over allow policies.

#### Role Kinds: 
***
#rolekind

![[gc_iam_role_types.png]]


##### BASIC Roles #basicrole
Quite broad in scope.
When applied in a Project, it affects all resources in that project.

![[gc_basic_role.png]]

==In additional, project owners can manage the associated roles and permissions and set up billing.==


##### Predefined Roles #predefinedrole
To restrict the  broad in scope of Basic Role.
Google Services offer sets of ==predefined roles==, and even defines where those roles can be applied.

>[!example] Example:
![[gc_predefined_role_sample.png]]
>
>Compute Engine, virtual machine as a service.
>
With computer engine we can apply specific predefined roles, like "Instance Admin Role" in a given folder.
This then allows whoever has these roles to perform the predefined actions.

##### Custom Roles #customrole
To preserve the Least Privilege Model may you want to define an "instanceOperator" role to allow some user to stop and start Compute Engine VMs, but not reconfigure them.
#customrole will allow you to define those exact permissions.

![[gc_custom_role.png]]
(In this case this principals can't reconfigure or delete the instance)

>[!warning] Least Privilege Model
#leastprivilegemodel 
>Each person in the organization is given the minimal amount of privilege needed to to their job.


#### Tips around Roles
- You need to manage the permissions that define the custom role you have created.
>[!warning] Custom roles can ONLY be applied to either:
>Project Level
>Organization Level


***
[[]] | [[Service Accounts]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


