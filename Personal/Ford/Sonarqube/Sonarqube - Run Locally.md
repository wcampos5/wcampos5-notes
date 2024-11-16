#sonarqube #sonarquberun #sonarqubelocally

#### Rodar Sonarqube manually:

#### Generate a Token

Go to Sonarqube
User Profile
Generate user Token
Copy the token to a file and save

#### Build.gradle updates

Go to build.gradle in the desired project...
    gradleBoost {
        sonarqube {
            properties = [
                    'sonar.host.url': 'https://www.sonarqube.ford.com',
                    'sonar.projectKey': 'com.ford.pae:PaeServiceOilLifeGCP',
                    'sonar.branch.name': 'develop',
					'sonar.login': '<token>'
            ]
        }
    }
	
Update gradle (elephant icon)

Run gradle task Verification-->sonar