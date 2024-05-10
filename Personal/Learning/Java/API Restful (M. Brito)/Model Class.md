Spring Boot 3 | Curso Completo 2023[^1]
36' - xx'
***
#springboot3 #packages #structure #model #annotations


#### Add to the root package structure:
- models

### Product Model Class

Add a **new class** into the previous created package: models
Class name: _ProductModel_

Once this class will be an entity of the database, it needs to be annotated within:
@Entity (Requires a PK) #entity
@Table (requires table name) #table
>[!warning] The class will require the serializable implementation
>```java
>public class ClassName implements Serializable{
>	private static final long serialVersionUID = 1L;
>}
>```

Add 3 new attributes:
idProduct
name
value

>[!information] idProduct annotation
>These annotation inform the application that this property is a key.
>@id
>@GeneratedValue(strategy = GenerationType.AUTO) #generated

```java
@Entity  
@Table(name= "TB_PRODUCTS")  
public class ProductModel implements Serializable {  
    private static final long serialVersionUID = 1L;  
  
    @Id  
    @GeneratedValue(strategy = GenerationType.AUTO)  
    private UUID idProduct;  
    private String name;  
    private BigDecimal value;  
}
```

===UUID=== type are Universal IDs, very common in distributed applications or micro-services.





***
[[Database Configuration]] | [[Interface Repository]]

***
[^1]: [Spring Boot 3 | Curso Completo 2023](https://www.youtube.com/watch?v=wlYvA2b1BWI&t=1279s)