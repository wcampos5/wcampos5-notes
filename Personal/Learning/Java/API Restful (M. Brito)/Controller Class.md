Spring Boot 3 | Curso Completo 2023[^1]
52'46"
***
#springboot3 #controller 


1. Create _controllers_ package in the root project
2. Create the _ProductController_ class
3. Annotate it as a _@RestControler_ or _@Controller_
```java
@RestController  
public class ProductController {  
      
}
```

4. Inject the Repository inside our Controller to have access to it's methods when required.
   
	Injection could be through:
		Constructors
		@Autowired of Spring boot
```java
@RestController  
public class ProductController {  
  
    @Autowired
    ProductRepository productRepository;  
}
```

>[!warning] ProductRepository interface injection
>Once this interface extends JpaRepository, it give us access to all JPA repository methods


5. Add Controller Methods (Methods to our CRUD)
	1. saveProduct
	2. 


##### saveProduct
```java
@RestController  
public class ProductController {  
  
    ...  
    //POST  
    @PostMapping("/products")  
    public ResponseEntity<ProductModel> saveProduct(@RequestBody @Valid ProductRecordDto productRecordDto){  
        var productModel = new ProductModel();  
        BeanUtils.copyProperties(productRecordDto, productModel);  
  
        return ResponseEntity.status(HttpStatus.CREATED).body(productRepository.save(productModel));  
    }  
  
}
```

==Summary==
saveProduct method will receive a ProductRecordDto, deserializes it, validate  and map to a ProductModel to be send to a ProductRepository to save it in the database.

###### Details:

@PostMapping
Map the api_url/products

**ResponseEntity**
Represents the whole ==HTTP response==: status code, headers, and body.

**@ResquestBody**
Maps the _HttpRequest_ body to a transfer or domain object, enabling automatic deserialization

**@Validation**
Works in conjunction with the ProductRecordDto validations, if missed here, the ProductRecordDto will not take effect.

When Spring Boot finds an argument annotated with _@Valid_, it automatically bootstraps the default JSR 380 implementation — Hibernate Validator — and validates the argument.
If fails, Spring Boot throws a [_MethodArgumentNotValidException_](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/web/bind/MethodArgumentNotValidException.html) exception.


```java
BeanUtils.copyProperties(productRecordDto, productModel);
```
Convert from ProductRecordDto to ProductModel

***
##### getAllProducts
```java
@RestController  
public class ProductController {  
  
    ...  
    //GET
    @GetMapping("/products")  
public ResponseEntity<List<ProductModel>> getAllProducts(){  
    return ResponseEntity.status(HttpStatus.OK).body(productRepository.findAll());  
} 
  
}
```

==Summary==
getAllProducts uses the productRepository.findAll() method to return all products from database.

###### Details:

@GetMapping
Map the api_url/products

**ResponseEntity**
Represents the whole ==HTTP response==: status code, headers, and body.

***

##### getOneProduct
```java
@RestController  
public class ProductController {  
  
    ...  
    //GET 
    @GetMapping("/products/{id}")  
public ResponseEntity<Object> getOneProduct(  
        @PathVariable(value="id") UUID id  
        ){  
    Optional<ProductModel> product0 = productRepository.findById(id);  
  
    if (product0.isEmpty()){  
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Produto não encontrado :(");  
    }  
  
    return ResponseEntity.status(HttpStatus.OK).body(product0.get());  
  
} 
  
}
```

==Summary==
getOneProduct pass the id to productRepository.findById(id) to return the specific product.

###### Details:

@GetMapping
Map the api_url/products/{id}

**ResponseEntity**
Represents the whole ==HTTP response==: status code, headers, and body.
==In this case it is returning an Object== due to the conditional some times will return a text message(when empty), some times will return product.




		
	2. GET
 


***
[[]] | [[]]

***
[^1]: [Spring Boot 3 | Curso Completo 2023](https://www.youtube.com/watch?v=wlYvA2b1BWI&t=1279s)