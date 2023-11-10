
#### Required Data files:
![[Telco-Customer-Churn.csv]]

![[Telco-Customer-Interactions.csv]]

![[Telco-Customer-Satisfaction.csv]]


##### Questions to be answered for the above files:
- What is the relationship between *customer churn* status and different types of *interactions*?
- How does the *Sentiment* score impact *Costumer Churn*
- Are there any specific *Interaction* types that have a higher correlation with the *Customer Churn*?
***
#### # Loading Data into Qlik Sense

***Add New***-->Dataset

![[Loading_dataset.png]]

Select ***Upload Data File*** button and looking for the files you want to load.

Select ***Upload and Analyze*** button

After the data be loaded select ***Go To Sheet***

***

#### Insight Advisor allows "Natural Language Questions" to analyze data.

![[Insight_advisor_analize_data.png]]
Example: *Typing "How many SeniorCitizen churn" we could get some insights


***

#### Creating Analytics App

Apps are created to developing specific analytics insights and visualizations

Creating the App the Qlik will be able to:
- load and transform data
- ***Combine Datasets***
- Design interacting visualizations
- Create Data Models
- Perform data analyzes
- App can be shared to allow collaborations

===To create a new App open a Dataset then click at ***Create Analytics App***

![[Creating_analytics_app.png]]


***

#### Combining Datasets

Select the desired ***Dataset app
![[Dataset.png]]

On the top left select Prepare ***Data Manager***
![[Qlik_data_manage_menu.png]]

On the top left select ***+ Add Data*** follow by ***Data Catalog***
![[Qlik_data_catalog_menu.png]]

Select Datasets that you want to combine then ***Next***
Select ***Load into App***

Edit or accept the tables association and then ***Apply All*** 
![[Combined_datasets.png]]

===Essential Step in the preparation data is the ***LOAD DATA*** before starting any analyze or visualization.

![[Transform_and_loading_data.png]]



***

#### Analyzing Data

Go to ***HOME***, ***Open App***.
On the top menu select *Analyze* ***Sheet*** the ***Insight Advisor***
![[Qlik_insight_advisor.png]]

On the left side select the desired ***Fields*** to analyze or generate insights.
Hold ***CTRL*** to select more than one field.
![[Dataset_fields.png]]


***

#### Practice Task

- How does customer sentiment vary across different types of interactions and tenure?





***
Tags:
#loadingdata #createapp

