Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals #cloudstorage

#### Cloud Storage
- Durable and high available object storage

###### Object Storage #objectstorage
It is a computer data storage architecture that manage data as Objects
and not as a file and folder hierarchy or block storage.

![[gc_object_storage_package.png]]
- binary
- metadata
- GUID
This unique keys are in the form of a URL


Cloud Storage Files are organized in a Buckets
- Requires a globally unique name
- Specific geographic location
- Ideal local region to minimized latency
- They are immutable
- New versions are created with changes made
- Admins decide by replace or versioning
![[gc_buckets.png]]


#acl #iam
#### Access Control List
Can be controlled using a combination of IAM + Access Control List (ACL)

![[gc_acl.png]]

==ACL== provides a ==finer control==

###### Access Control List has two pieces:
- Scope
	- Defines ==who can access== and perform an action, can be user or groups of users.
- Permissions
	- Defines ==what action can be== performed (like read or right)


#storagepolicies
#### Life Cycle Manage Policies

![[gc_storage_policies_examples.png]]

>[!warning] Helps to avoid waist money $



#storageclasses
#### Cloud Storage Primary Classes

##### Standard Storage
Best for frequently accessed or HOT data or brief period of time

##### Nearline Storage
Used for infrequently accessed data ONCE a month or less
Backups or Archive

#### Coldline Storage
Read or modify once every 90 days

##### Archive Storage
Once a year
High Cost for data access and operations
Minimum Storage 365 days duration

![[gc_storage_primary_classes.png]]




***
[[Connecting networks to Google VPC]] | [[Data Transfer]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


