#### Class
Blueprint (plan)
Has Properties and Methods

#### Object
Instance of the class
It have a behavior and it own state

#### Method
The behavior of the object

#### Instance Variables
Each object has its own unique set if instance variables.
The state of the object refers to the current values assigned to that object variables

#### Compile and run java program in a console

Code

```
import java.util.*;

public class Message{
	public static void main(String[] args)
	{
		System.out.println("Java message program!!!");
	}
}
```
===When the class is **public**, the name of the file has to be the class name===

Compile
```
	javac File_Class_Name.java
	java File_Class_Name
```

*javac*  will generate the ===.class=== based on the ===.java===
*java* will execute the .class

#### Comments in Java
1. Single line
```
// System.out.println("This is an comment.");
```
1. Multi-line
```
/*
    System.out.println("This is the first line comment.");
    System.out.println("This is the second line comment.");
*/
```
3. Documentation
```
/** documentation */
```


#### Class Names
1. The ===first letter=== of the class ===SHOULD be Uppercase===
2. If several words are used to form the name of the class, each inner word’s first letter should be in Uppercase.
3. Underscore are discouraged even it is allowed as far as special chars that can  be used to inner  and anonymous classes.

#### public static void main(String[] args)

The method main() is the entry point into a Java program.
Also allowed is the signature **public static void main(String… args)**


#### Method Name
1. All the method names SHOULD start with a lower case letter.
2. Should use Camel case pattern.


#### Identifiers in Java

Identifiers are the names of:
- Local variables
- Instances and Class variables
- Labels
- Classes
- Methods
- Modules
- Packages
===All Unicode characters are valid, not just the ASCII subset.===

1. All identifier can begin with a letter, a currency symbol or underscore, acc. convention it should be lower case.
2. ***Constants*** (static final attributes and enums) should be in UPPERCASE.
3. Reserved words cannot be used as an identifier

#### Reserved Words

|   |   |   |   |
|---|---|---|---|
|abstract|assert|boolean|break|
|byte|case|catch|char|
|class|const|continue|default|
|do|double|else|enum|
|extends|final|finally|float|
|for|goto|if|implements|
|import|instanceof|int|interface|
|long|native|new|package|
|private|protected|public|return|
|short|static|strictfp|super|
|switch|synchronized|this|throw|
|throws|transient|try|void|
|volatile|while|||


#### Access Modifiers

Modifiers control the scope of the class and methods.
- ##### Access Modifiers
*default, public, protected, private*

- public 
	JVM can execute the method from anywhere


|Access Modifier|Within Class|Within Package|Outside Package by subclass only|Outside Package|
|---|---|---|---|---|
|Private|Yes|No|No|No|
|Default|Yes|Yes|No|No|
|Protected|Yes|Yes|Yes|No|
|Public|Yes|Yes|Yes|Yes|



- ##### Non-Access modifiers
*final, abstract, static, transient, synchronized, volatile, native*

- static
	The class/method can be called without an instance of the object
	



#### Tags:
***
#class #object #method #variables #javac #compiling #compile #comments #classname #methodname #identifier #reservedwords #modifier #modifiers