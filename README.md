# End-to-End E-Commerce Operational & Customer Analytics

## 📌 Project Overview
This project showcases a complete data engineering and analytics lifecycle applied to a retail e-commerce transactional dataset containing over 540,000 rows. The objective was to construct a direct pipelines database connection, extract production tables using SQL Server, run advanced data cleansing filters in Python, and engineer cross-platform executive interfaces in Power BI and Tableau.

* **Interactive Tableau Workspace:** [(https://public.tableau.com/views/E-CommerceOperationalCustomerAnalytics/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)]
* **Power BI Raw Project Model (.pbix):** [👉 Available within this project folder]

---

## 🛠️ Technical Pipeline & Tools

### 1. Database Extraction (SQL Server Express)
To simulate modern analytics team workflows, the raw transactional data was staged in a relational database engine to run structural diagnostic queries:
* **Relational Structuring:** Configured a local database instance (`EcommerceDB`) and handled schema text anomalies by reading customer variables as flexible float markers to prevent import failures.
* **Portfolio Scripts (`ecommerce_queries.sql`):** Authored performance optimization queries tracking global retail transactions and isolating return behaviors across multi-thousand row parameters.

### 2. Pipeline Integration & Engineering (Python / Pandas / PyODBC)
Connected directly to local Windows database pipes to securely ingest records straight into runtime dataframes:
* **PyODBC Handshake:** Established a local authentication gateway using a Python-to-SQL execution string.
* **Tilde Logic Filtration:** Applied logical inversion operators (`~df[...]`) to quickly purge canceled orders and bad debt ledger accounts.
* **Feature Engineering:** Calculated overall transaction spending balances (`Quantity` * `UnitPrice`) and isolated calendar components to lock in specific time-trending attributes.

### 3. Analytics Visualizations (Power BI & Tableau)
* **Power BI Executive Layout:** Built a dedicated retail operations tracker featuring high-level cards tracking Revenue, Order Invoices (Distinct Count), and Average Order Values (AOV) alongside weekly purchase distributions.
* **Tableau Customer Matrices:** Designed a detailed scatter plot tracking thousands of individual buyer footprint clusters, layered with responsive dashboard funnel filters to isolate historical wholesale shifts on the fly.

---

## 📈 Key Retail Insights Discovered
* **Seasonal Sales Surge:** Cross-filtering across chronological trends reveals an intense holiday revenue concentration peaking explicitly in November 2011, driven primarily by automated seasonal bulk-purchasing footprints.
* **Weekly Consumer Patterns:** Transaction metrics show distinct operational volume drops on weekends, revealing that the core consumer audience engages predominantly during mid-week business hours.
* **Market Share Concentration:** International sales distribution maps expose an overwhelming corporate dependency on the United Kingdom marketplace, indicating a major opportunity for expansion into adjacent European territorial networks.
