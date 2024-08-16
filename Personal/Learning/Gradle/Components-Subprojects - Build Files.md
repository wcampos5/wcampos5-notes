Components-Subprojects[^1]
***
#buildfiles #subprojects #folders #tasks 

#### Build.gradle
#buildgradle

>[!info] Purpose
>- Inform the project that it is a Java | Android project
>- Applied by project/subprojects


Create a :luc_file_text: _gradle.build_ or _gradle.build.kts_ file in the same level of the ==project or subproject **src** folder== 

A clean build file always have a `plugins{}` block at the TOP.

Gradle Core offers the `java-library` #java-library plugin

###### Plugins
#plugins
Plugins are applied by `id`
They are applied just once time
>[!warning] Means that if we apply `java` that has the Core and `java-library` that sit on top of the `java` it will be applied just once


```gradle
plugin {
	id("java-library")
}
```

Some useful plugins

| Plugin         | Description                                                                        |
| -------------- | ---------------------------------------------------------------------------------- |
| `java`         | Add all the Java Core functionality like: compiling, test and packaging jar files. |
| `java-library` | Adds a little bit on top of  `java` (which is added implicit)                      |
| `application`  | Adds functionalitty for package and running Java applications                      |


***

###### Java Version
#version #javaversion

``
`java` | `java-library` | `application` adds an extension to hold the Java version.

```gradle
// Java Version  
java {  
    toolchain.languageVersion.set(JavaLanguageVersion.of(17))  
}
```

>[!info] Default Java Version
>By convention if you don't specify Java Version, gradle will use the one that you are running










***
[[Setup a Gradle Project]] | [[Centralised Build Configuration]]

[^1]: [Components-Subprojects](https://ford.udemy.com/course/modern-gradle-fundamentals/learn/lecture/33030642#overview)