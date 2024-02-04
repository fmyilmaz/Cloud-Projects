# Data Pipelines in Azure with Azure Synapse Analytics


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

## Related resources