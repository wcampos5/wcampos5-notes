#performancereview #performance

###### 1o e 2o Semesters 


#### How Work Was Done


The beginning of this year presented both exciting opportunities and challenges as Global Total Cost team member. I **owned** my role, **delivering** on the following key assignments:
- **Led** the weekly FSA Total Cost team meetings, **seeking to understand** the needs of each participant, prioritize the subjects and time and driving productive discussions.
- **Led** the tasks and meetings supporting the Fuel System team, **solving together** with the Global Total Cost and QlikSense teams to **deliver** a robust System Quality Dashboard in QlikSense.
- - I have worked together a team member to deliver a Python web-scraping software for the GTC team, **doing only what matters** by programmatically interacting with the CRID (Cost Reduction Idea Database) system. This automated rejections based on provided lists, **eliminating** manual errors and saving valuable time.
- - **Delivered** direct support for the onboarding of a new team member (LREIS24), **seeking to understand** their needs and ensuring a smooth transition.

In late February, I transitioned to the Prognostics team, a period of significant change as services previously managed in India were transferred to Brazil. I **embraced** this transition, **demonstrating a bias for action** by:
- **Actively participating** in Knowledge Transfer meetings, **seeking to understand** the intricacies of pipeline deployments.
- **Collaborating** with the Prognostics team on the following key initiatives:
    - **Delivered** support for Jenkins during the transition to Tekton.
    - **Owned** the development and deployment of Tekton pipelines for critical services, including Oil Life, Schedule Maintenance, Tire Slow Leak, Metrics, and Telemetry.
    - **Delivered** a streamlined maintenance process by consolidating all service pipelines into a single, optimized system and reducing the code maintenance.
    - **Led** the development and implementation of the new Tekton pipeline as Code for Batch Pipelines, supporting the new ML architecture.
	- **Delivered** ongoing maintenance, deployment, and error resolution for Tekton pipelines within the 12VBHM and TSL new architecture.
	- **Led** the design of a robust branching strategy and the prognostics deployment process.
	- **Owned** the maintenance of Github prognostics repositories.
	- **Seek to Understand** Postgres max connection issue that was happened for a long time (~3months), wasn´t enabling to connect into DEV environment forcing new deployments to be tested in QA. The solution have avoided the use of 29 Cloud Run instances.
	- **Solve Together** successfully migration from Nexus to JFrog Artifact Repository, ensuring a smooth transition and no disruption to the deployment workflow.
	- **Solve Together** massive application upgrade, acted and collaborated with a team member to deliver a comprehensive set of changes across Telemetry, Oil Life, and Schedule Maintenance features. This included migrating from Java 11 to Java 17, upgrading Spring Boot from 2.7.16 to 3.2.6, and refactoring the pipeline structure due to the deprecation of the Tekton Tasks namespace. This upgrade involved resolving all quality gate issues identified by SonarQube, FOSSA, and Checkmarx, ensuring code quality and security.
	- **Delivered** Oil Life uunctional test for new batch architecture

In the 2nd half of the year, I have a significant new challenge within the Prognostics: transitioning from a DevOps role to Data Engineering. This involved a steep learning curve, requiring me to quickly acquire proficiency in new technologies such as Python, PySpark, BigQuery, Astronomer, Airflow, and Terraform. I am actively pursuing this development through self-study and on-the-job learning.

This transition coincided with a major architectural shift for our core applications – moving from a Java/Postgres streaming architecture to a Python/PySpark batch processing system leveraging BigQuery for storage and Astronomer for orchestration.

During this crucial migration period, I also played a key role in leading the team's response to emerging current architecture production issues, releasing the team to keep focusing in the new architecture.

Act and Support to decommission of Tire Slow Leak Cloud Run for all environments and its infrastructure.

**Significant current architecture production Issue:**  Telemetry unexpectedly began producing messages to Kafka at a dramatically increased rate—surging from 70,000 requests per second (req/s) to 250,000 req/s. This massive surge directly impacted other applications sharing the Kafka cluster, creating a critical system-wide performance bottleneck.
Through meticulous analysis of logs, metrics, and application behavior, cross-team collaboration and strategic mitigation, I identified the specific code changes within the Telemetry application that triggered the surge in Kafka requests. The outcome of these efforts was a dramatic reduction in the Kafka request rate from 250,000 req/s to a stable 1,300 req/s.







#### Backup --begin
_**Postgres connection issue:** Identification of issues that wasn´t enabling to connect into DEV environment exceeding  max connection since a long time (around 3 months). The resolution resulted in a _

_**Package Manager Migration:** Successfully migration from Nexus to JFrog as our package manager, ensuring a smooth transition and no disruption to the deployment workflow._

_- **Massive Application Upgrade:** Collaborated with a team member to deliver a comprehensive set of changes across Telemetry, Oil Life, and Schedule Maintenance features. This included migrating from Java 11 to Java 17, upgrading Spring Boot from 2.7.16 to 3.2.6, and refactoring the pipeline structure due to the deprecation of the Tekton Tasks namespace. This upgrade involved resolving all quality gate issues identified by SonarQube, FOSSA, and Checkmarx, ensuring code quality and security._

_In the second half of the year, I embraced a significant new challenge within the Prognostics team: transitioning from a DevOps role to Data Engineering. This involved a steep learning curve, requiring me to quickly acquire proficiency in new technologies such as Python, PySpark, BigQuery, Astronomer, Airflow, and Terraform. I am actively pursuing this development through self-study and on-the-job learning.

_This transition coincided with a major architectural shift for our core applications – Telemetry, Oil Life, and Schedule Maintenance – moving from a Java/Postgres streaming architecture to a Python/PySpark batch processing system leveraging BigQuery for storage and Astronomer for orchestration. This involved a substantial undertaking._

_During this crucial migration period, I also played a key role in leading the team's response to emerging current architecture production issues, releasing the team to keep focusing in the new architecture_

_Act and Support to decommission of Tire Slow Leak Cloud Run for all environments and its infrastructure._

_**Significant current architecture production Issue:** One of the most significant challenges I faced during the application transition involved a critical production issue affecting the Telemetry application. The application unexpectedly began producing messages to Kafka at a dramatically increased rate—surging from 70,000 requests per second (req/s) to 250,000 req/s. This massive surge directly impacted other applications sharing the Kafka cluster, creating a critical system-wide performance bottleneck.
Through meticulous analysis of logs, metrics, and application behavior, cross-team collaboration and strategic mitigation, I identified the specific code changes within the Telemetry application that triggered the surge in Kafka requests. The outcome of these efforts was a dramatic reduction in the Kafka request rate from 250,000 req/s to a stable 1,300 req/s._

__









**Beyond my core responsibilities, I also:**

- **Delivered** all mandatory Integrity trainings on time, demonstrating my commitment to ethical conduct and company values.
- **Engaged** in the Mentoring Software Team program, **mentoring** new employee Lucas Guimarães (LGUIMA15), sharing my knowledge and experience to support his growth.
- **Delivered** and revised the People Flow assessment with my people leader, demonstrating my commitment to continuous improvement and process enhancement.


#### What Work was Done

Global Total Cost (Jan to Feb, 2024)
Led the weekly FSA Total Cost team meetings
- Lead the tasks and meetings supporting Fuel System team to work with Global Total Cost and QlikSense team to developer the System Quality Dashboard in the QlikSense. 
- Work with the team in a development of a Python web scrapping software to GTC team that deals programmatically with the CRID (Cost Reduction Idea Database) web-based system to automatically perform rejections based on a provided list as input. This helps the team avoid any manual deletion errors and wasting time consumption.
- Directly support the onboard of a new team member (LREIS24)

Prognostics Team (End of Feb to Jun)
Core Responsabilities:
- Jenkins support in the meanwhile transition to Tekton
- Act and support the Tekton pipeline development and deployments for the Services:
	Oil Life, Schedule Maintenance, Tire Slow Leak, Metrics, Telemetry
- I have communized all the services pipelines into only one, optimizing the maintenance.
- Act and support the new Tekton pipeline as Code for Batch Pipelines for the new ML architecture
- Support the team with the Tekton pipelines maintenance, deployments and fixing errors for 12VBHM and TSL new architecture.
- Leading branching strategy design and prognostics deployment process
- Github prognostics repositories maintenance
Others:
I have completed all the mandatory Integrity trainings on time
- Engaged on the Mentoring Software Team program, mentoring the new employee Lucas Guimarães (LGUIMA15) 
- Delivery and revised the People Flow assessment with my people leader

#### How was Done

The beginning of this year presented both exciting opportunities and challenges as I joined end of last year the Global Total Cost team. I owned my role, delivering on the following key assignments:
- Led the weekly FSA Total Cost team meetings, seeking to understand the needs of each participant, prioritize the subjects and time and driving productive discussions.
- Led the tasks and meetings supporting the Fuel System team, solving together with the Global Total Cost and QlikSense teams to deliver a robust System Quality Dashboard in QlikSense.
- As a programmer I have worked together a team member to deliver a Python web-scraping software for the GTC team, doing only what matters by programmatically interacting with the CRID (Cost Reduction Idea Database) system. This automated rejections based on provided lists, eliminating manual errors and saving valuable time.
- Delivered direct support for the onboarding of a new team member (LREIS24), seeking to understand their needs and ensuring a smooth transition.

In late February, I transitioned to the Prognostics team, a period of significant change as services previously managed in India were transferred to Brazil. I embraced this transition, demonstrating a bias for action by:

- Actively participating in Knowledge Transfer meetings, seeking to understand the intricacies of pipeline deployments.
- Collaborating with the Prognostics team on the following key initiatives:
    - Delivered support for Jenkins during the transition to Tekton.
    - Owned the development and deployment of Tekton pipelines for critical services, including Oil Life, Schedule Maintenance, Tire Slow Leak, Metrics, and Telemetry.
    - Delivered a streamlined maintenance process by consolidating all service pipelines into a single, optimized system and reducing the code 1/5 maintenance.
    - Led the development and implementation of the new Tekton pipeline as Code for Batch Pipelines, supporting the new ML architecture.
	- Delivered ongoing maintenance, deployment, and error resolution for Tekton pipelines within the 12VBHM and TSL new architecture.
	- Led the design of a robust branching strategy and the prognostics deployment process.
	- Owned the maintenance of Github prognostics repositories.

Beyond my core responsibilities, I also:

- Delivered all mandatory Integrity trainings on time, demonstrating my commitment to ethical conduct and company values.
- Engaged in the Mentoring Software Team program, mentoring new employee Lucas Guimarães (LGUIMA15), sharing my knowledge and experience to support his growth.
- Delivered and revised the People Flow assessment with my people leader, demonstrating my commitment to continuous improvement and process enhancement.
