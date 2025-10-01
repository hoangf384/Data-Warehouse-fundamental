# Data Warehouse and OLAP System for Sales Analysis

## Project Overview
This project implements a comprehensive Data Warehouse solution designed to support business decision-making in the sales domain. It covers the full pipeline from data extraction from raw sources, ETL processing, to building OLAP cubes for multidimensional data analysis.

## Key Features
- Design and implementation of a star schema data warehouse with:
  - Fact Table: FactSales (stores transactional sales data)
  - Dimension Tables: DimProducts, DimCustomers, DimStores, DimTime (store product, customer, store, and time details)
- ETL processes using SQL Server Integration Services (SSIS):
  - Extract data from CSV files
  - Transform data by cleansing, key lookups, and data type conversions
  - Load data into structured data warehouse tables
- OLAP cubes development with SQL Server Analysis Services (SSAS) enabling:
  - Multi-dimensional analysis by product, time, store, and customer
  - Functions such as slice, dice, drill-down, roll-up, and pivot for detailed insights
- Integration with Excel and SSMS for interactive data analysis and reporting

## Repository Structure
~~~
data-warehouse-project/
│
├── datasets/ # Raw CSV data sources
├── etl/ # SSIS packages and ETL scripts
├── olap/ # SSAS cube definitions and configs
├── reports/ # Sample reports and analysis outputs
└── README.md # Project overview and instructions
~~~

## Technologies Used
- SQL Server (T-SQL, SSMS)
- SQL Server Integration Services (SSIS)
- SQL Server Analysis Services (SSAS)
- Microsoft Excel (for visualization and analysis)

## Getting Started
1. Import raw CSV datasets into the ETL source folder.
2. Run SSIS packages to extract, transform, and load data into the data warehouse.
3. Deploy and process OLAP cubes using SSAS to enable fast multidimensional queries.
4. Connect Excel or SSMS to the OLAP cubes for interactive analysis and reporting.


## References
- SQL Server 2017 Integration Services Cookbook, Christian Cote, Matija Lah, Dejan Sarka, Packt Publishing

---

This project demonstrates the power of data warehousing and OLAP to enable actionable insights from sales data in a competitive retail environment.
