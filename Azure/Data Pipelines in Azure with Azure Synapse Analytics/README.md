# Data Pipelines in Azure with Azure Synapse Analytics
In this initiative, we aim to construct a workflow within the Azure environment, leveraging Azure Synapse Analytics, Azure Storage, and Power BI. The objective is to conduct comprehensive data analysis on the dataset pertaining to the 2021 Olympics.

## Architecture
The following diagram illustrates data pipeline for analyzing the 2021 Olympics dataset with Azure Synapse Analytics.

![Architecture](img/Data%20Pipelines%20in%20Azure%20with%20Azure%20Synapse%20Analytics.drawio.png)

It utilizes several key components:

- Azure Storage Account: Serves as the initial data repository, storing the raw CSV files of the dataset.
- Azure Synapse Analytics Workspace: The central environment for managing and orchestrating data processing logic.
- Azure Synapse SQL Pool: A dedicated warehouse for storing and querying the transformed data.
- Power BI: Business intelligence tool used to visualize and analyze the processed data, creating insightful dashboards.

## Components
- Azure Storage Account Offers:
    - Scalable and secure storage for diverse data types, including CSV files.
    - Cost-effective solution for data ingestion and staging.
    - Integration with Azure Data Factory for seamless data movement.
- Azure Synapse Analytics Workspace Provides:
    - Unified workspace for data integration, analytics, and AI.
    - Management of Synapse SQL pools, notebooks, and data pipelines.
    - Collaborative environment for data engineers and analysts.
- Azure Data Factory Enables:
    - Visual design and orchestration of data pipelines.
    - Data transfer across diverse sources and sinks, including Azure Storage.
    - Scheduling and monitoring of pipeline execution.
- Power BI Offers:
    - Interactive data visualization with rich charting and reporting capabilities.
    - Creation of insightful dashboards for data exploration and communication.
    - Integration with Azure Synapse Analytics for direct data access.

## Project details
The project focuses on the 2021 Olympics dataset, encompassing details of over 11,000 athletes in 47 sports, representing 743 teams at the Tokyo Olympics. The dataset comprises information on teams, athletes, coaches, entries by gender, and includes attributes such as names, nationalities, sports, and coach names. The dataset is divided into five files: Athletes, Coaches, EntriesGender, Medals, and Teams.

### Approach

1. Create an Azure Storage account and upload data files to a container.
2. Establish an Azure Synapse Analytics workspace.
3. Create a SQL pool in the Azure Synapse workspace.
4. Design table structures within the SQL pool.
5. Develop a data pipeline for ingesting data from Azure Storage into SQL pool tables.
6. Load data from SQL pool tables into Power BI.
7. Prepare a comprehensive dashboard in Power BI.
8. Publish the Power BI dashboard in the Azure Synapse workspace.

## Related resources
- Azure Synapse Analytics: https://docs.microsoft.com/en-us/azure/synapse-analytics/
- Azure Data Factory: https://docs.microsoft.com/en-us/azure/data-factory/
- Azure Storage: https://docs.microsoft.com/en-us/azure/storage/
- Power BI: https://docs.microsoft.com/en-us/power-bi/