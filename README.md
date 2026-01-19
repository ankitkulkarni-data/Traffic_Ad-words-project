** End-to-End SEO Traffic & Keyword Strategy Analysis **

📌 Project Overview

This project executes a comprehensive data analytics pipeline to optimize Search Engine Optimization (SEO) strategies. The goal was to transform raw, unstructured traffic data into actionable business intelligence.

By analyzing search volume, competition, and ad costs, I identified high-value keyword opportunities and inefficient spending areas.

The project demonstrates a dual-approach workflow:

Building a robust BI Reporting Pipeline (Excel → SQL → Power BI) for daily tracking

Performing a separate Statistical Cluster Analysis (Python) to uncover hidden segmentation patterns in the raw data


## 📁 Project Structure

Dashboard/
- Power BI dashboard screenshots for SEO traffic and keyword analysis

Diagrams/
- ER Diagram (Star Schema)
- Keyword clustering workflow diagram

Python/
- Jupyter Notebook for statistical cluster analysis and exploratory data analysis

Sql/
- SQL scripts for database schema design and analysis

Powerbi/
- Interactive Power BI dashboard file


🔄 The Workflows
Workflow 1: Data Engineering & BI Pipeline

This phase focused on data structuring, storage, and live reporting.

1️⃣ Excel (Data Preparation & Logic)

Unique Identification: Generated unique Keyword IDs to normalize the raw dataset

Data Modeling: Created separate Lookup Tables for dimension attributes (Keywords) versus fact data (Traffic Logs)

Validation: Utilized Pivot Tables to verify data consistency before migration

2️⃣ MySQL (Database Architecture)

Migration: Imported Excel lookup tables into a SQL environment

Schema Design: Designed and implemented a Star Schema (ER Diagram) with Primary and Foreign Keys to ensure data integrity

Optimization: Normalized the database to improve query performance and scalability

3️⃣ Power BI (Dashboarding)

Integration: Connected Power BI directly to the MySQL database

Visualization: Built an interactive dashboard to track KPIs such as Search Volume, Ranking Position, and Cost-Per-Click (CPC)

Workflow 2: Advanced Statistical Analysis (Python)

This phase was a separate task to perform deep-dive pattern recognition on the raw data.

Process: Used the original raw dataset directly in Python for independent analysis

Method: Applied K-Means Clustering to segment keywords based on mathematical proximity

Goal: Group keywords by Traffic vs. Ad Cost, revealing segments (e.g., High Volume / Low Competition) that simple dashboard filtering could not easily visualize

📊 Key Insights & Results

Hidden “Gold Mine” Segments: Python clustering revealed a group of keywords with moderate search volume but near-zero competition, offering high ROI opportunities

Ad Spend Optimization: Identified a cluster of “Money Pit” keywords with high CPC but low actual traffic conversion, enabling immediate budget reallocation

Data Integrity: Transitioning from flat Excel files to a relational SQL database eliminated redundancy and improved reporting reliability

Strategic Focus: Power BI analysis showed that the highest-volume keywords were not necessarily the most profitable, shifting focus toward long-tail keywords
