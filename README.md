# Healthcare ER Analytics Dashboard


## Project Overview
This project analyzes Emergency Room (ER) patient records using SQL Server and Microsoft Power BI. The goal is to explore patient demographics, department referrals, waiting times, and recorded satisfaction scores to identify patterns that may support healthcare operational decision-making.


## Business Objectives
Understand the distribution of patient records across departments.
Analyze average ER waiting time by department.
Explore patient age-group and gender distributions.
Examine recorded patient satisfaction scores and missing data.
Build an interactive dashboard for exploring the results.
## Tools and Technologies
**SQL Server Management Studio 22 (SSMS):** Data querying and analysis
**Microsoft Power BI Desktop:** Interactive dashboard and visualization
**SQL:** Aggregations, grouping, data-quality checks, and date-based analysis
## Dataset
The dataset contains 9,216 patient records and includes fields such as:
Date
Patient ID
Gender
Age
Satisfaction Score
Race
Patient Administration Flag
Wait Time
Department Referral
## Key Findings
**Total records analyzed:** 9,216
**Average patient age:** Approximately 39.86 years
**Average waiting time:** Approximately 35.26 minutes
**Gender distribution:** 4,705 M records, 4,487 F records, and 24 NC records
**Satisfaction data quality:** 2,517 records contain a satisfaction score, while 6,699 have missing scores.
**Department referrals:** 5,400 records have the literal value None in the department referral field. Its meaning should be verified before treating it as a missing value.
**Waiting times:** Average waiting times vary across departments; Neurology has the highest average among the named departments at approximately 36.80 minutes.
## Dashboard Features
KPI cards for total records, average waiting time, and average age
Patient records by department referral
Average waiting time by department
Patient records by age group
Gender distribution
Patient satisfaction score distribution
Interactive slicers for gender and department referral
## Project Files
Healthcare_ER_Analysis.sql — SQL analysis queries
Healthcare_ER_Analytics.pbix — Power BI dashboard
Hospital ER.csv — Source dataset, included only if redistribution is permitted
## Limitations
Most records have no recorded satisfaction score, so satisfaction results represent only the available scores.
The meaning of the None department referral value needs verification.
These are descriptive findings and do not establish the causes of waiting times or patient satisfaction.
## Conclusion
This project demonstrates the use of SQL Server for healthcare data analysis and Power BI for interactive reporting. It highlights patient-record distributions, waiting-time patterns, and data-quality considerations.


## Author
Data Analytics Portfolio Project
