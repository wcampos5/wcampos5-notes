
#### Error 401
###### Error Statement
Exception in thread "main" java.io.IOException: Server returned HTTP response code: 401 for URL: https://jfrog.ford.com/artifactory/gradle-distributions/gradle-8.7-bin.zip

###### Reason
Invalid or expired credential (Identity Token or API Key)

>[!success] Solution
>Generate a new one at [jfrog.ford.com](https://jfrog.ford.com/ui/user_profile)
>
At your profile in the right upper corner: 
**Edit profile Option**

#### Step 1:[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#step-1 "Permanent link")

Upgrade **GradleBoost Plugin** to version `5.1.0` or latest version. Check for latest versions [here](https://github.ford.com/DevEnablement/gradle-boost-plugin/releases)

|   |   |
|---|---|
|1<br>2<br>3|`plugins {     id 'gradle-boost' version '5.1.0' }`|

#### Step 2:[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#step-2 "Permanent link")

Replace the content in your `gradle-wrapper.properties` (in folder gradle/wrapper) with the below:

|   |   |
|---|---|
|1<br>2<br>3<br>4<br>5|`distributionBase=GRADLE_USER_HOME distributionPath=wrapper/dists distributionUrl=https\://jfrog.ford.com/artifactory/gradle-distributions/gradle-8.5-bin.zip zipStoreBase=GRADLE_USER_HOME zipStorePath=wrapper/dists`|

#### Step 3:[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#step-3 "Permanent link")

Update **Repository** URLs in `settings.gradle` from Nexus to JFrog.

|   |   |
|---|---|
|1<br> 2<br> 3<br> 4<br> 5<br> 6<br> 7<br> 8<br> 9<br>10<br>11<br>12<br>13<br>14<br>15<br>16<br>17|`pluginManagement {     repositories {         maven { url 'https://jfrog.ford.com/artifactory/external-proxy-group/'             credentials {                 username = "$System.env.ARTIFACTORY_USER"                 password = "$System.env.ARTIFACTORY_PASSWORD"             }         }          maven { url 'https://jfrog.ford.com/artifactory/public-maven-ford/'             credentials {                 username = "$System.env.ARTIFACTORY_USER"                 password = "$System.env.ARTIFACTORY_PASSWORD"             }         }     } }`|

#### Step 4:[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#step-4 "Permanent link")

### For local build[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#for-local-build "Permanent link")

Set the following environment variables and then use build command for local build to work.

> Note: **Set these environment variables universally in your system environment variables. It will avoid the need of setting these values at EVERY RUN and 401 error from JFrog.**

#### For Mac/Linux Users[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#for-maclinux-users "Permanent link")

```
export ARTIFACTORY_USER=<JFrog-UserId>
```

Password not the JFrog-Identity-Token
```
ARTIFACTORY_PASSWORD=<JFrog-Identity-Token>
```

```
export GRADLE_OPTS=-Dgradle.wrapperUser=$ARTIFACTORY_USER -Dgradle.wrapperPassword=$ARTIFACTORY_PASSWORD
```

```
./gradlew clean build
```

> Note: JFrog-UserId is [CDSID@ford.com](mailto:CDSID@ford.com)

#### For Windows Users[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#for-windows-users "Permanent link")

```
set ARTIFACTORY_USER=<JFrog-UserId>
```

```
ARTIFACTORY_PASSWORD=<JFrog-Identity-Token>
```

```
set GRADLE_OPTS=-Dgradle.wrapperUser=%ARTIFACTORY_USER% -Dgradle.wrapperPassword=%ARTIFACTORY_PASSWORD%
```

```
gradlew clean build
```

> Note: JFrog-UserId is [CDSID@ford.com](mailto:CDSID@ford.com)

### For Tekton Pipeline build[¶](https://centralstation.ford.com/docs/default/component/gcpdevguides/EcoBoost_JFrog_Migration/#for-tekton-pipeline-build "Permanent link")

a. Upgrade your EcoBoost Tekton App CI/CD Pipeline to version `3.2.0` using [https://devservices.ford.com/tekton-pipeline-update](https://devservices.ford.com/tekton-pipeline-update).

While upgrading, select **Yes** to the question **Do you want update Tasks?**. The current release version of the EcoBoost Tekton Pipeline and Gradle Boost plugin requires several EcoBoost Pipeline Tasks to be upgraded to work properly with JFrog.

Create a OpenShift secret (key-value pair type) with following Key/Values:

|Key|Value|
|---|---|
|ARTIFACTORY_USER|`<JFrog-UserId>`|
|ARTIFACTORY_PASSWORD|`<JFrog-Password>`|

> Note: Replace `<JFrog-UserId>` with generic [CDSID@ford.com](mailto:CDSID@ford.com), and `<JFrog-Password>` with JFrog Access Token. Refer [this doc](https://jfrog-guide.ford.com/ch0M/03-first-steps.html#creating-access-tokens) for instructions to create JFrog Access Token.

Take a note of the secret name of the above as this would be required in the next step.

b. Update your `pipeline-configuration.json` file to replace **nexus** integration with **jfrog** using the below configuration.

|   |   |
|---|---|
|1<br>2<br>3<br>4|`"jfrog": {         "enabled": true,         "secretName": "<jfrog-secret-name-from-above-step>"     }`|
***
