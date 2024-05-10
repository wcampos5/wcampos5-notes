Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals #serviceaccount

#### Service Accounts
- Use to grant permission to a person / API.
- Normally an user or proxy user email
- ==Instead of password they use Cryptographic Keys== to access resources
- Need to be managed by one owner
- Service account is an Identify
- Service account is also a resource
- Can have IAM polices attached to it

![[Pasted image 20240401153300.png]]

>[!info] Context
>Let's say, an app running in a virtual machine that needs store data in Cloud Storage, but you don't wanna anyone on the internet to have access to that data - just to a particular virtual machine.
>
You can create a Service Account to authenticate that VM to Cloud Storage


***
[[IAM]] | [[Cloud Identity]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


