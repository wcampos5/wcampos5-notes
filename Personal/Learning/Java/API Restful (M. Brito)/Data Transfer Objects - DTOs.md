Spring Boot 3 | Curso Completo 2023[^1]
56'29"
***
#springboot3 #records #dtos


To receive the model values thru JSON we need to map the fields.
For Java earlier to 16 we could use the ProductModel to receive the data in JSON and convert it.

#### Records
It is a ==new Java16 feature== to initiate the objects to transfer.
They are ==immutable== once initialized.
They are _final_ and _private_.

1. Create  a new _package_ dtos

Use Record to create the Data Transfer Object to receive the Product Data, initial data validation and conversion to model and save into the database.

2. Creating record _ProductRecordDto_
	_New->Java Class->Recording_

3. Add the required DTO fields with their types
```java
public record ProductRecordDto(String name, BigDecimal value) {  
}
```

	1. Add initial validation annotations to the fields
```java
public record ProductRecordDto(  
        @NotBlank String name,  
        @NotNull BigDecimal value) {  
}
```



***
[[Interface Repository]] | [[Controller Class]]

***
[^1]: [Spring Boot 3 | Curso Completo 2023](https://www.youtube.com/watch?v=wlYvA2b1BWI&t=1279s)