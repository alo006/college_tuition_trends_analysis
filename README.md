# College Trends Analysis

## Table of Contents
- [Project Background](#project-background)
- [Summary](#summary)
- [Dataset Structure](#dataset-structure)
- [Insights Deep-Dive](#insights-deep-dive)
  - [Yearly Tuition Trend and Growth Across States](#yearly-tuition-trend-and-growth-across-states)
  - [Yearly Revenue and Expenses](#yearly-revenue-and-expenses)
  - [Revenue and Expense Sources](#revenue-and-expense-sources)
  - [Enrollment Numbers on Tuition](#enrollment-numbers-on-tuition)
  - [Raising Tuition Revenue to Meet Expenses](#raising-tuition-revenue-to-meet-expenses)
- [Findings and Recommendations](#findings-and-recommendations)

---

## Project Background
The College Trends Analysis dataset is sourced from a project on DataScienceHive and is based on the Integrated Postsecondary Education Data System (IPEDS) Access Databases. These databases compile annual survey data collected by the U.S. Department of Education’s National Center for Education Statistics (NCES), covering approximately 6,400 colleges, universities, and technical or vocational institutions that participate in federal student aid programs. Using this dataset, we examine how tuition costs have evolved over time across different states and explore the key factors influencing tuition at tertiary institutions.

---

## Summary
Our analysis of more than 6,000 tertiary institutions across all 50 states from 2015 to 2022 shows a steady rise in average tuition, increasing from $8,371 in 2015 to $9,871 in 2022. This upward trend appears to reflect growing financial pressures on institutions, particularly as they sought new revenue sources to meet rising operating costs that intensified during the pandemic. States experiencing above-average tuition growth tend to be those where institutional expenses have increased most sharply. Considering these findings, we recommend a more targeted allocation of government aid toward states with the highest tuition growth, helping to ease financial pressures on institutions and encouraging a return toward pre-pandemic tuition levels.

---

## Dataset Structure
At the time of this report, the IPEDS Access Database comprises 53 tables derived from 11 surveys conducted between 2004 and 2024, covering 6,256 tertiary institutions across all 50 states.

For our analysis, we compiled data from four primary tables containing information on institutional directory details, tuition, enrolment, and core revenues and expenses. We also incorporated supplementary lookup tables to interpret the IPEDS numeric coding system for selected variables and to map state abbreviations to their full names.

It is important to note that, of the 6,256 institutions in the database, only 550 have complete data for all key variables used in this analysis. Despite this limitation, and in the absence of alternative comprehensive datasets on tertiary institutions, we proceeded with the analysis to extract meaningful insights, acknowledging that the results may not fully represent tuition trends across all states.

Below is the simplified Entity Relationship Diagram (ERD).

![image alt](https://github.com/alo006/college_tuition_trends_analysis/blob/8d917c0738574d2f4acbc095ffb24ede7bc56bce/Entity%20Diagram%20College%20Tuition%20Analysis.png)

---

## Insights Deep-dive

### Yearly Tuition Trend and Growth Across States

![image alt](https://github.com/alo006/college_tuition_trends_analysis/blob/ed986a9758c5ecfd54563d4a253fc5c22bae9bb0/Statewide%20Teritary%20Tuition.png)

Across all 50 states, on average tuition has been increasing yearly from 2015-2022, from $8371 to $9871.
