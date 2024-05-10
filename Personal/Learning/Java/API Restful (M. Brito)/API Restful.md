#restful 
***

#### Leonard Richardson Maturity Model
#api #levels #maturity

![[richardson_maturity_model.png]]

##### 4 Levels

>[!success] Level 3 - Everything till Level 2 + HATEOAS
> ###### HATEOAS
> Have link to previous response or request (hipermedia)

![[api_level_3_sample.png]]


>[!info] Level 2 - URI's + HTTP Methods
> 1. Makes use of multiple URI's
> 2. Appropriate HTTP Verbs - GET, POST, PUT, DELETE
> 3. Makes right use of the response codes

>[!warning] Level 1
>1. Makes use of multiple URI's
>2. Single HTTP Verb - POST

>[!error] Level 0
>Not Restful at all
>Soap Request or XML
>Used to have only 1 single endpoint and all the end  points will have a single verb which will be a post request
>
>1. One URI
>2. Single HTTP Verb - POST
>3. Request body has all the details (Actions)

![[api_level_0_xml_sample.png]]




Lookin for in the web

***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)