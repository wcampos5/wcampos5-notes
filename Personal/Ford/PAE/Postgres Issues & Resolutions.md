Ref[^1]
***

##Errors & Fix
#postgresfixes #postgreserrors

>[!error] Error State: Mistake when made copying the Access Token
![[Postgres_copy_paste_error.png]]


>[!success] Solution
>Make sure to copy the Identity Token without any "invisible char or break lines like \r or \r". Copy to notepad before copy/paste just in case.


>[!error] Error State: Users name created with UPPER CASE
![[Postgres_case_sensitive_error.PNG]]]

>[!success] Solution
>Use same case type to stablish the connection.
>Sample: USER@ford.com instead of user@ford.com




***
[^1]: [Ref](#)