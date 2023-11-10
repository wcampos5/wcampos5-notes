_Imports:_
	````
```
import java.net.*;
```

### Criando a URL:
Criando um objeto  _java.net.URL_

**Absolute URL**
```java
URL url = new URL("/a-guide-to-java-sockets");
```

**Relative URL**
assumindo que temos um objeto URL que representa nossa pagina nossa página.
```java
URL home = new URL("http://baeldung.com");
```

Então, podemos criar nosso recurso apontando para esta URL:
```java
URL url = new URL(home, "a-guide-to-java-sockets");
```



### Tags
#url