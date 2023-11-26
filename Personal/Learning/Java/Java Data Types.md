It is related of different sizes and values that can be stored in the variable that is made as per convenience and circumstances to cover up all test cases.

Java is statically typed and also a strongly typed language because, in Java, each type of data (such as integer, character, hexadecimal, packed decimal, and so forth) is predefined as part of the programming language and all constants or variables defined for a given program must be described with one of the data types.

##### Primitive Data Type
*boolean, char, int, short, byte, long, float, and double*


![[java_data_type_structure.png]]

Primitive values and range reference can be find at:
[geeksforgeeks](https://www.geeksforgeeks.org/data-types-in-java/?ref=lbp)

|Type|Description|Default|Size|Example Literals|Range of values|
|---|---|---|---|---|---|
|boolean|true or false|false|1 bit|true, false|true, false|
|byte|twos-complement integer|0|8 bits|(none)|-128 to 127|
|char|Unicode character|\u0000|16 bits|‘a’, ‘\u0041’, ‘\101’, ‘\\’, ‘\’, ‘\n’, ‘?’|characters representation of ASCII values<br><br>0 to 255|
|short|twos-complement integer|0|16 bits|(none)|-32,768 to 32,767|
|int|twos-complement intger|0|32 bits|-2,-1,0,1,2|-2,147,483,648 <br><br>to <br><br>2,147,483,647|
|long|twos-complement integer|0|64 bits|-2L,-1L,0L,1L,2L|-9,223,372,036,854,775,808 <br><br>to<br><br>9,223,372,036,854,775,807|
|float|IEEE 754 floating point|0.0|32 bits|1.23e100f , -1.23e-100f , .3f ,3.14F|upto 7 decimal digits|
|double|IEEE 754 floating point|0.0|64 bits|1.23456e300d , -123456e-300d , 1e1d|upto 16 decimal digits|

##### Syntax
type varName;

like:
```
boolen booleanVarName;
```


##### Non-Primitive Data Type or (Object/Reference) Data Type

The **Reference Data Types** will contain a *memory address* of variable values because the reference types won’t store the variable value directly in memory. They are strings, objects, arrays, etc.

###### Strings
Syntax:
```
String s = "GeeksforGeeks";
```


###### Class
A class is a user-defined blueprint or prototype from which objects are created
It represents a set of properties or methods that are common to all objects of one type.
In general, class declarations can include these components, in order:
1. Modifiers
2. Class Name
3. Superclass (If any)
	_The name of the class’s parent (superclass), if any, preceded by the keyword ===**extends**===. A class can only extend (subclass) one parent._
		
4. Interfaces (If any)
	_A comma-separated list of interfaces implemented by the class, if any, preceded by the keyword ===**implements**===. A class can implement more than one interface._
	
5. Body
	_The class body is surrounded by braces, { }._

###### Object
An Object is a basic unit of Object-Oriented Programming and represents real-life entities.
An object consists of :
1. State
2. Behavior
	_It is represented by the methods of an object. It also reflects the response of an object to other objects._
3. Identity
	It gives a unique name to an object and enables one object to interact with other objects.

###### Interface
_Like a class, an [interface](https://www.geeksforgeeks.org/interfaces-in-java/) can have methods and variables, but the methods declared in an interface are by default abstract (only method signature, **no body**)._

- Interfaces specify what a class must do and not how.
- If a class implements an interface and **does not** provide method bodies for all functions specified in the interface, then the class ===must be declared abstract===.
- A Java library example is [Comparator Interface](https://www.geeksforgeeks.org/comparator-interface-java/). If a class implements this interface, then it can be used to sort a collection.

Sintaxe:
```
interface Name {
	//All are abstract methods
	void changeGear(int a);
	void speedUp(int a)
	void applyBreak(int a)
}
```

Implementation
```
class Bike implements Vehicle {
	
	int speed;
	int gear;
	
	// to change gear
	@Override
	public void changeGear(int newGear){
		
		gear = newGear;
	}
	
	// to increase speed
	@Override
	public void speedUp(int increment){
		
		speed = speed + increment;
	}
	
	// to decrease speed
	@Override
	public void applyBrakes(int decrement){
		
		speed = speed - decrement;
	}
	
	public void printStates() {
		System.out.println("speed: " + speed
			+ " gear: " + gear);
	}
	
}
```

Test Class
```
class GFG {
	
	public static void main (String[] args) {
	
		// creating an instance of Bicycle
		// doing some operations
		Bicycle bicycle = new Bicycle();
		bicycle.changeGear(2);
		bicycle.speedUp(3);
		bicycle.applyBrakes(1);
		
		System.out.println("Bicycle present state :");
		bicycle.printStates();
		
		// creating instance of the bike.
		Bike bike = new Bike();
		bike.changeGear(1);
		bike.speedUp(4);
		bike.applyBrakes(3);
		
		System.out.println("Bike present state :");
		bike.printStates();
	}
}
```

Since **JDK8** we can add ===default implementation== for interface methods

Sample:
```
interface In1
{
    final int a = 10;
    default void display()
    {
        System.out.println("hello");
    }
}
```

Also we can now define ===static methods=== in interfaces that can be called independently without an object.

```
interface In1
{
    final int a = 10;
    static void display()
    {
        System.out.println("hello");
    }
}
 
// A class that implements the interface.
class TestClass implements In1
{
    // Driver Code
    public static void main (String[] args)
    {
        In1.display();
    }
}
```

> [!info] 
>> [!tip] Interfaces contains multiple abstract methods

> [!info]
> > [!tip] Abstract Implementation
> > If the implementation is unable to provide an implementation of all abstract methods, then declare the ***implementation class*** with an ***abstract modifier***, and complete the remaining method implementation in the next created child classes.


In general, the development process is step by step:

>[!success] Level 1-  interfaces
>It contains the service details.

>[!success] Level 2 – abstract classes
>It contains partial implementation.

>[!success] Level 3 – implementation classes
>It contains all implementation.

>[!success] Level 4 – Final Code / Main Method
>It have access of all interfaces data.

>[!example] Code
![[InterfaceLevelWise.java]]

> [!note]
> ## Important Points in Java Interfaces

In the article, we learn certain important points about interfaces as mentioned below:

> - We can’t create an instance(interface can’t be instantiated) of the interface but we can make the reference of it that refers to the Object of its implementing class.
> - A class can implement more than one interface.
> - An interface can extend to another interface or interface (more than one interface).
> - A class that implements the interface must implement all the methods in the interface.
> - All the methods are public and abstract. And all the fields are public, static, and final.
> - It is used to achieve multiple inheritances.
> - It is used to achieve loose coupling.
> - Inside the Interface not possible to declare instance variables because by default variables are ****public static final.****
> - Inside the Interface, constructors are not allowed.
> - Inside the interface main method is not allowed.
> - Inside the interface, static, final, and private methods declaration are not possible.


###### Array
An [Array](https://www.geeksforgeeks.org/arrays-in-java/) is a group of like-typed variables that are referred to by a common name.
- The variables in the array are ordered and each has an **index beginning with 0**.
- Java array can also be used as a static field, a local variable, or a method parameter.
- The **size** of an array **MUST** be specified by an **int** value and not long or short.
- The direct superclass of an array type is Object.
- - Every array type implements the interfaces [Cloneable](https://www.geeksforgeeks.org/marker-interface-java/) and [java.io.Serializable](https://www.geeksforgeeks.org/serialization-in-java/).
- 


#### Tags:
***
#type #datatype #primitive #string #class #interface #array