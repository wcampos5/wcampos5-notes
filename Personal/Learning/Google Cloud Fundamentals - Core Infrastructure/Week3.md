Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals 

#resources #hierarchy 
#### Google Cloud resource hierarchy

![[gc_resource_hierarchy.png]]

There are for Levels from bottom to up

| Level | Description | Sample                                  |
| ----- | ----------- | --------------------------------------- |
| 04    | Org node    |                                         |
| 03    | Folder      |                                         |
| 02    | Project     |                                         |
| 01    | Resources   | VM, GCS Bucktes, Tables in BQ, Cloudrun |

#policies #policiesintroduction
#### Policies
***
The resources hierarchy direct relates to how ==policies are managed and applied== on Google Cloud

Policies can be defined from level 02 -> 04

Policies by:
- Project
- Folder
- Organization

	==SOME GC Services== allow policies to be applied by individual resources.

Polices are also **inherited downward**.



#projects
#### Projects Level
***
Each project is a separated entity under the Org node.
Each Resource belongs to exactly one project
They can have different owners and users
They are billed and managed separately

###### Project Attributes:
- ID (Globally Unique Identifier assigned by Google ==immutable==)
- Name
- Number (mainly use to keep track of resources)



Projects are the basis for enabling and using GC Services like:
- Managing API
- Enable Billing
- Add/Remove Collaborators
- Enabling other Google Services

#managertool #managerAPI
#### Resource Manager Tool (API)
***
Designed to programmatically help you manage projects
==Accessed through the RPC API and Rest API==

It can:
- List all the projects associated with an account
- Create new project
- Update existent projects
- Delete Projects
- Recover deleted project


#foldergc 
#### Folders
***
Let you assign ==policies== to resources at a ==level of granularity you choose==
Used to group #projects in hierarchy

![[gc_folders.png]]



#organizationnodegc 
#### Organization Node
***
Special roles are assigned with this top-level Organization Node:
- Org. Policiy Administrator
	- Only people with this can change policies
- Project Creator
	- Control who can create projects (who can spend money ;) )
	- 

###### Creating Organization Node
==Depends on what Google Workspace you have==
If you have a:
- Workspace Domain
	- Google cloud projects will automatically belong to your Organization node.
- Otherwise
	You can use Cloud Identity, access, application, and endpoint management platform to generate the Organization Node.

>[!success] Once created, a new Organization Node will let:
> - Anyone in the domain create projects
> - Billing accounts
> - Create Folders underneath
> - Create Projects inside Folders

![[gc_organization_node.png]]




***
[[Week2]] | [[IAM]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


