Centralise[^1]
***

So we can place our own plugins #ownplugins on top of the gradle plugins like:
replacing `java-library` by `my-java-library`.
Doing this we can customize things like Java Version, Framework Test...

#### Create our own plugins 

- [ ] Create a new folder `plugins` inside of  a  :obs_folder: gradle directory
- [ ] Create a project structure here
	- [ ] settings.gradle.kts
		`include("java-plugins")` because we are using java
	- [ ] Define a repository where Gradle can locally other plugins we might want to depend on as a libraries or plugins```
	```gradle
	dependencyResolutionManagement {  
	    repositories.gradlePluginPortal()  
	}
	```

	- [ ] Create a :obs_folder: `java-plugins` 
		- [ ] Add a `build.gradle.kts` into
```gradle
//Tell Gradle we write plugins using Kotlin DSL  
  
plugins {  
    `kotlin-dsl` //id("kotlin-dsl") `sintaxe` only for Kotlin
}
```
>[!warning] SYNC Out Of VPN

- [ ]  NOW IntelliJ recognizes a Kotlin structure folder. Lets create a structure to developer our Kotlin plugins inside of:
	:obs_folder: gradle/plugins/java-plugins
![[kotlin_structure.png]]


#### Add custom plugins

- [ ] my-application.gradle.kts
```gradle
plugins {  
    id("application")  
    id("my-java-base")  
}
```

- [ ] my-java-base.gradle.kts
```gradle
plugins {  
    id("java")  
}  
  
java {  
    toolchain.languageVersion.set(JavaLanguageVersion.of(17))  
}
```

- [ ] my-java-library
```gradle
plugins {  
    id("java-library")  
    id("my-java-base")  
}
```

>[!info] Explanation
>`my-java-base` will compose `java & java version` to the others `my-application` and `my-java-library` plugins to be used in my projecs

#### Dependency
#dependency #externalplugin

In order to use on external plugin in our `my-java-base` we need to add a id into our my-java-base and the dependency annotation into the build.gradle.kts

Example: to use a Spotless for ode quality:
```my-java-base.gradle.kts
plugins {  
    id("java")
    id("com.diffplug.spotless")
}  
  
java {  
    toolchain.languageVersion.set(JavaLanguageVersion.of(17))  
}
```

```build.gradle.kts
plugins {  
    `kotlin-dsl` //id("kotlin-dsl")  
}

dependencies {
	implementation("com.diffplug.spotless:spotless-plugin-gradle:6.8.0")
}
```

#gradleplugin #gradleportal #searhplugin

Looking for Gradle Plugins at:
[Gradle Plugins](https://plugins.gradle.org/)





***
[[]] | [[]]
***
[^1]: [Centralise](https://ford.udemy.com/course/modern-gradle-fundamentals/learn/lecture/33030682#overview)
