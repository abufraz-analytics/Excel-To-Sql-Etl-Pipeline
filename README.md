#  excel-to-sql-etl-pipeline

##  Project Description

### 🔹 Project Introduction
This repository showcases an end-to-end data engineering pipeline designed to bridge spreadsheet operations with enterprise-level relational databases and business intelligence platforms. It demonstrates how traditional finance workflows can be fully automated using macro engines to construct highly reliable ETL pipelines.

### 🔹 Core Data Architecture & Ledger Maintenance
The underlying workbook serves as a comprehensive operational ledger, structurally maintaining granular transaction logs across multiple core financial vectors. Every record is explicitly tied to unique customer profiles, systematically cataloging:
* **Core Operations:** Sales, Purchase, and Sales Return metrics.
* **Settlements:** Realized financial receipts and physical metal payment flows.
* **Taxation:** Strict isolation of VAT/Tax matrices to ensure clean regulatory compliance.

### 🔹 Automated VBA ETL Engine
To resolve structural vulnerabilities caused by manual entry—such as trailing text anomalies, duplicate spaces, or formatting inconsistencies—the system integrates an advanced programmatic core. Activated via a macro-button interface, this programmatic layer executes complex string manipulations and array-cleansing routines within seconds.

Upon execution, the pipeline drives a synchronized dual-action layout:
1. **Local Backup:** It instantly transforms and exports the optimized dataset as a clean, standardized `.csv` asset to local storage.
2. **Server Ingestion:** The runtime engine establishes a direct, secure backend server connection to push and load the structured data streams directly into a centralized SQL database—completely bypassing the need to open SQL Server interfaces.

---

##  One-Time Initialization Workflow (Cold-Start Setup)

To establish a seamless runtime environment and avoid baseline connection or ingestion errors, the pipeline follows a structured, two-phase deployment strategy:

1. **First-Time Cold Start (SQL Execution):** On the initial deployment, running the VBA script alone will generate the clean local `.csv` file but will not immediately load into SQL because the target schema/table does not yet exist. To resolve this, the user must execute the provided `IMPORT CSV TO SQL.sql` script once directly inside the SQL database engine. This seeds the initial schema, creates the structured database tables, and maps the baseline `.csv` dataset into position.
2. **Automated Continuous Runtime (Hands-Free Mode):** Once the initial SQL script execution is complete, the SQL Server interface can be closed permanently. From this point forward, every single click of the Excel macro button triggers a fully autonomous loop: the VBA engine cleans the dataset, overwrites/saves the local `.csv`, and programmatically pushes the live rows straight to the SQL repository without requiring any manual SQL intervention.

---

### 🔹 Downstream BI Consumption
Once the automated pipeline securely deposits the records into the SQL repository, data synchronization across the enterprise requires zero manual overhead. Users simply trigger a one-click refresh on the downstream Power BI dashboard to instantly visualize real-time macro-level trends, automated billing summaries, and key performance indicators.

---

##  Repository File Directory

* 📄 **Workbook Asset:** [DUMMY DATA WITH ADVANCE VBA FOR SQL AND BI.xlsm](./DUMMY%20DATA%20WITH%20ADVANCE%20VBA%20FOR%20SQL%20AND%20BI.xlsm)
  > *This is the main structural workbook containing master financial ledgers and the macro-button interface.*
* 📜 **Automation Code:** [VBA CODE FOR CLEAN EXCEL SHEET & EXPORT TO SQL SERVER.txt](./VBA%20CODE%20FOR%20CLEAN%20EXCEL%20SHEET%20&%20EXPORT%20TO%20SQL%20SERVER.txt)
  > *This is the VBA code that automatically cleans the Excel sheet data, exports the `.csv` file, and handles ongoing automated loads directly into the SQL server.*
* 🗄️ **Database Schema Script:** [IMPORT CSV TO SQL.sql](./IMPORT%20CSV%20TO%20SQL.sql)
  > *This is the one-time initialization SQL script required to build the target database structure and seed the primary `.csv` dataset during the initial setup.*
