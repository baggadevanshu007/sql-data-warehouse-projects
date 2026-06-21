## 🏗️ Data Warehouse Environment Setup

This project follows a multi-layered data warehouse architecture using **MySQL Workbench**. The database environment is organized into separate schemas to support different stages of the data transformation pipeline.

### Architecture Overview

The data warehouse is divided into three layers:

- **Bronze Layer** – Stores raw data ingested from source systems.
- **Silver Layer** – Contains cleaned, standardized, and transformed data.
- **Gold Layer** – Holds business-ready datasets optimized for reporting and analytics.

### Technologies Used

- MySQL Server 8.0
- MySQL Workbench
- SQL

### Step 1: Create the Main Database

A dedicated database named `DATAWAREHOUSE` was created to serve as the parent container for all warehouse schemas.

```sql
CREATE DATABASE DATAWAREHOUSE;
USE DATAWAREHOUSE;
CREATE SCHEMA BRONZE;
CREATE SCHEMA SILVER;
CREATE SCHEMA GOLD;
CREATE DATABASE DATAWAREHOUSE;

USE DATAWAREHOUSE;

CREATE SCHEMA BRONZE;
CREATE SCHEMA SILVER;
CREATE SCHEMA GOLD;

Execution Process
Open MySQL Workbench and connect to the local MySQL instance.
Create a new SQL query tab.
Execute the setup script.
Refresh the Schemas panel to verify the creation of:
DATAWAREHOUSE
BRONZE
SILVER
GOLD

DATAWAREHOUSE
├── BRONZE
│   └── Raw source data
├── SILVER
│   └── Cleaned and transformed data
└── GOLD
    └── Analytics-ready data marts

To prevent errors when rerunning the script, use the IF NOT EXISTS clause:

CREATE DATABASE IF NOT EXISTS DATAWAREHOUSE;

CREATE SCHEMA IF NOT EXISTS BRONZE;
CREATE SCHEMA IF NOT EXISTS SILVER;
CREATE SCHEMA IF NOT EXISTS GOLD;
