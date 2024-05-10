#annotations 

Ref[^1]
***

@SpringBootApplication
#springbootapplication
Indica que esta é a classe principal da aplicaçao onde podemos inicia-la.

```Java
@SpringBootApplication
public class SpringBootApplication{
	public static void main(String[] args){
	SpringApplication.run(SpringbootApplication.class, args);
	}
}
```

***

#### Database
***
#annotationsdatabase

@Entity
#entity 
Faz com que a classe seja uma entidade da base de dados.
Usada em conjunto com a @table

@Table
#table 
Defini a classe como uma tabela no Banco de Dados
```
@Table(name= "tb_products")
```

@Id
#identity 
Define a property as an Id/Primary Key

@GeneratedValue
#generatevalue
Automate Id creations
```Java
@GeneratedValue(strategy= GenerationType.AUTO)
```

>[!info] UUID property type
>Defining the id property name as an UUID type will help to avoid collision once it will generate a distributed id kind.


#### Spring Beans Stereotypes (Class annotations)
#spring #copybetweenbranches 
***

This kind of annotation inform the Spring that this is a bean to be managed by him (Spring).

@Component
#component
Use to more generic classes. It inform the spring the the class will be a managing bean.

@Service
#service
Usado em classes de serviço que envolvem regras de negócios por exemplo.

@Repository
#repository
Inform to spring that is a managing bean and it is a transaction class.


@Controller
#controller
Have endpoints

@RestController
#restcontroller
Denotes that is a Rest Controller

***


@Autowired
#autowired #injection
Used to inject another Object/Class and it's methods inside another class.


#### Methods Annotations
***

@PostMapping("/products")
#postmapping
Used to send data via POST
Help to compose the URI _"/products"_


@ResquestBody
#requestbody
Spring automatically deserializes the JSON into a Java type, 
assuming an appropriate one is specified.
By default, **the type we annotate with the _@RequestBody_ annotation must correspond to the JSON sent from our client-side controller**
[baeldung RequestBody definition](https://www.baeldung.com/spring-request-response-body)









***
[[]] | [[]]
#### Tags
***
[^1]: [Ref](#)