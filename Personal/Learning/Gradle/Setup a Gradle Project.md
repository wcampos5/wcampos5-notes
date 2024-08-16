Setting File and Gradle[^1]
***
#gradle #gradlesetup #settings

#### Add a new settings file
`settings.gradle` or `settings.gradle.kts` for Kotlin script
#### Entry Point - #settingsgradle
Settings file is the **entry point** for gradle projects

_settings.gradle_ describe our projects to gradle

Import the Gradle Project when suggested by the IntelliJ as soon as you create the settings.gradle

![[load_gradle_intelliJ.png]]

Load will charge extra files (called gradle wrapper).

There are 2 Starter Scripts to start the Gradle Wrapper

| Starter file | Operational Sustem |
| ------------ | ------------------ |
| gradlew      | Linux              |
| gradlew.bat  | Windows            |

`gradle-wrapper.jar` is the Gradle implementation itself

`gradle-wrapper.properties` to *Config the wrapper*
Content:
	_distributionUrl_: Contains the version of the wrapper
		Here is where can change the wrapper version #version #wrapperversion


#### Gradle View - IntelliJ
IntelliJ offers the gradle view at left side
We can use it to:
_execute gradle tasks_
_Sync_


#### Settings.gradle
#settingsgradle 
Describing our software project structure to gradle
In Gradle a project is split up in Subprojects, it is a separate software components.

###### _include statement_
Set the components a subprojects, this will create a folder to the correspondent name:
	`include("app") 
	`include("business-logic")  
	`include("data-model")
will generate:
![[gradle_folder_create.png]]
>[!warning] These folders needs to match with project folders

###### _Dependency Resolutions_
#dependency #dependencyresolution #dependencies
Other external Java project dependencies required can by include using this statement: _dependencyResolutionManagement_
```gradle
dependencyResolutionManagement {  
    repositories.mavenCentral()  
    //Local Enterprise mirror of Central Maven  
    repositories.maven("https://my.location/repo"){  
        credentials.username = "..."  
        credentials.password = "..."  
    }  
    repositories.google()  
  
}
```

The above ones are _Binary_ components, if we want to use _source code_ to build the components?

###### _Build from Source Code_
#build #buildfromsource

###### _includeBuild Statement_
#includeBuild #customplugin
Tells Gradle that it is another Gradle build somewhere to potentially build a component we need. This support multiple gradle build to the project. Or, if you depend of some library that is available in the central repo, but which you need to patch, you can clone the repository if it's Gradle build, patch it there and include it here. And then the Gradle will use the corresponding component if needed.

```gradle
dependencyResolutionManagement {  
    .
    .
    .  
	//Tells Gradle where potentially find components
	includeBuild("gradle/plugins")  
}
```
>[!warning] It target another Gradle Build in other place

***

###### Plugin Management
#plugins #management #pluginmanagement

This is the mechanism to extend Gradle itself

```gradle
pluginManagement {  
	//**Plugins discover**
    repositories.gradlePluginPortal()  
//     repositories.mavenCentral()  
//  
//     For Android  
//     repositories.google()  
//  
//     For Local Enterprise mirror of Central Maven  
//     repositories.maven("https://my.location/repo"){  
//         credentials.username = "..."  
//         credentials.password = "..."  
//     }  
//  
//     Locally developed gradle plugins  
//     includeBuild("gradle/plugins")  
  
}
```
- Can add repositories for Gradle to discover additional plugins



###### Build Name
#plugins #management #pluginmanagement

>[!info] Set the Name
>It is recommended because sometimes it turns up in the reports
>If NOT set the name will be the same as the root project folder name







 

***
-> [[Components-Subprojects - Build Files]]

***
[^1]: [Setting File and Gradle](https://ford.udemy.com/course/modern-gradle-fundamentals/learn/lecture/33030632#overview)
