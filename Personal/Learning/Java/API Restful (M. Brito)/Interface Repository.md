Spring Boot 3 | Curso Completo 2023[^1]
46'43"
***
#springboot3 #repository

#### Repository Interface

This interface need to ```extends JpaRepository<ProductModel, UUID>``` 
to have access to JPA implementation methods

==_JpaRepository_ requires to atributes:==
Model  (Class type que gera a table)
ID type

1. Create a new package named _repository_ in the root project

2. Create the Interface ProductRepository
	In the IDE new->Java Class->Interface 

3. Extend JpaRepository<ProductModel, UUID>
```java
public interface ProductRepository extends JpaRepository<ProductModel, UUID> {  
}
```

4. Annotate as @Repository
```java
@Repository
public interface ProductRepository extends JpaRepository<ProductModel, UUID> {  
}
```

>[!info] Btw: JpaRepository
>already implies that the class is a @Repository Bean, but you annotate anyway as a best practices






***
[[Model Class]] | [[Data Transfer Objects - DTOs]]

***
[^1]: [Spring Boot 3 | Curso Completo 2023](https://www.youtube.com/watch?v=wlYvA2b1BWI&t=1279s)