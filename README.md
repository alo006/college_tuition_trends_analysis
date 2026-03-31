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
The College Trends Analysis dataset is sourced from a project on [DataScienceHive](https://www.datasciencehive.com/projects) and is based on the Integrated Postsecondary Education Data System [(IPEDS) Access Databases](https://nces.ed.gov/ipeds/use-the-data/download-access-database). These databases compile annual survey data collected by the U.S. Department of Education’s National Center for Education Statistics (NCES), covering approximately 6,400 colleges, universities, and technical or vocational institutions that participate in federal student aid programs. Using this dataset, we examine how tuition costs have evolved over time across different states and explore the key factors influencing tuition at tertiary institutions.

---

## Summary
Our analysis of more than 6,000 tertiary institutions across all 50 states from 2015 to 2022 shows a steady rise in average tuition, increasing from $8,371 in 2015 to $9,871 in 2022. This upward trend appears to reflect growing financial pressures on institutions, particularly as they sought new revenue sources to meet rising operating costs that intensified during the pandemic. States experiencing above-average tuition growth tend to be those where institutional expenses have increased most sharply. Considering these findings, we recommend a more targeted allocation of government aid toward states with the highest tuition growth, helping to ease financial pressures on institutions and encouraging a return toward pre-pandemic tuition levels.

---

## Dataset Structure
At the time of this report, the IPEDS Access Database comprises 53 tables derived from 11 surveys conducted between 2004 and 2024, covering 6,256 tertiary institutions across all 50 states.

For our analysis, we compiled data from four primary tables containing information on institutional directory details, tuition, enrolment, and core revenues and expenses. We also incorporated supplementary lookup tables to interpret the IPEDS numeric coding system for selected variables and to map state abbreviations to their full names.

It is important to note that, of the 6,256 institutions in the database, only 550 have complete data for all key variables used in this analysis. Despite this limitation, and in the absence of alternative comprehensive datasets on tertiary institutions, we proceeded with the analysis to extract meaningful insights, acknowledging that the results may not fully represent tuition trends across all states.

Below is the simplified Entity Relationship Diagram (ERD).

![image alt](https://dl.dropboxusercontent.com/scl/fi/tmnd4braqe8qfkg77oj8d/Entity-Diagram-College-Tuition-Analysis.png?rlkey=w7xyfvm6xxztf9agq93rlzped&st=ccm71kbt&dl=0)

- SQL Data Cleaning and Analysis Query: [View SQL Script](https://github.com/alo006/college_tuition_trends_analysis/blob/6eeca1f5b41d2546e12bbfc130f67ac9a761ec40/College%20Tuition%20Trend%20Analysis.sql)

---

## Insights Deep-dive

### Yearly Tuition Trend and Growth Across States

![image alt](https://dl.dropboxusercontent.com/scl/fi/1oojdnn4k1t98z128qayu/Statwide-Teritary-Tuition.png?rlkey=5mw59emrtadl55kpb5wmge1mz&st=swdwln55&dl=0)

- Across all 50 states, on average tuition has been increasing yearly from 2015-2022, from $8371 to $9871.

![image alt](https://dl.dropboxusercontent.com/scl/fi/h4o32ipd8o8t6qlvd1fav/Statwide-Teritary-Tuition-top-and-bottom.png?rlkey=sn215fkzzaodpeou4l70ntut2&st=h6xg8xi6&dl=0)

- By 2022, the five states with the highest tuition are: New Hampshire, Vermont, New Jersey, Michigan, and Connecticut. 
- In contrast, the five states with the lowest tuition are: Georgia, Florida, Virgin Islands, Micronesia, and Puerto Rico.

![image alt](https://dl.dropboxusercontent.com/scl/fi/zxww7l0mgbbfflqhwaua9/States-with-Greatest-Tuition-Growth.png?rlkey=5x6enzmz5r8tzid18p38awdoc&st=8fvlm6fj&dl=0)

- Through examining the difference in tuition between 2022 and 2015, we see that Connecticut and Michigan are also part of the top five states with the most tuition growth, with increases of $4368 and $2914 respectively. 
- The other three states are Oregon, Rhode Island, and Virginia, with increases of $2910, $2894, and $2769 respectively.

![image alt](https://dl.dropboxusercontent.com/scl/fi/twites5mzayjaco7p61bo/States-with-Lowest-Tuition-Growth.png?rlkey=tjx72wsc37p33qx7vw76gh62z&st=vdwpalt8&dl=0)

- The Virgin Islands, Florida, and Georgia are also among three of the five bottom states in terms of tuition growth. The Virgin Islands only had a tuition growth of $221, while Florida and Georgia instead decreased their tuition by $61 and $237 respectively.
- North Carolina and Wisconsin are the other two states with the bottom five tuition growth, with a tuition increase of only $199 and $148 respectively.
- What is the main reason for the gradual increase in tuition across all states from 2015-2022, and why is it that the tuition for some states are increasing significantly faster than others?

### Yearly Revenue and Expenses

![image alt](https://dl.dropboxusercontent.com/scl/fi/4rd8baqso6chad65ip95i/Yearly-Revenue-and-Expenses.png?rlkey=urp32w77mk33ncmh078mjbp7v&st=05edd04r&dl=0)

- The average revenue across all 50 states has been steadily increasing from 2015 at $346million till 2021, where from 2020-2021 there was a sharp increase in revenue. From 2021-2022, revenue decreased to $452million, but overall revenue has increased.
- The average expense has also been steadily increasing from 2015 at $319million till 2021 when there was a slight decrease. From 2021-2022, the revenue increased to $421million, resulting in an overall increase in expenses.
- Overall, it appears that tuition statewide has increased so that they generate enough revenue to satisfy their ever increasing expenses – Where are these expenses coming from, and how have revenue streams changed over the years?

### Revenue and Expense Sources

![image alt](https://dl.dropboxusercontent.com/scl/fi/bdjyo9g6kavjg6mzeuwqp/Revenue-Proportions.png?rlkey=4i2ss68ejmfgj2r1lduuddtft&st=5c4nel5p&dl=0)

- Between 2015 and 2022, there is only significant change in the proportion of revenue coming from tuition fees and government grants compared to the other sources which have remained about the same. 
- Surprisingly, the proportion of revenue coming from tuition fees has decreased from 32% to 27% despite the increase in tuition statewide, while government grants have increased from 21% to 29%.
- This suggests that while in general tertiary institutions have been receiving more funding from the government, it isn’t sufficient to cover their expenses, and so they also have to increase their tuition fees to generate enough revenue.

![image alt](https://dl.dropboxusercontent.com/scl/fi/gm5q8t64nlbw7omm29dv5/Expense-Proportions.png?rlkey=dxu5t47co7vnetbyq4ps81d21&st=wfk4f71l&dl=0)

- In terms of expenses, only the proportion through instruction and other expenses have changed significantly from 2015 to 2022. 
- The proportion of instruction-based expenses decreased from 44% to 39%, while other expenses have increased from 9% to 15%.
- This shows that one possible reason for the increase in expenses in recent years could be due to developments in how tertiary institutions operate.  

### Enrollment Numbers on Tuition

![image alt](https://dl.dropboxusercontent.com/scl/fi/wf8mocgs5yrar9hxcdrn9/Tuition-vs-Enrollment.png?rlkey=iqm397vfv2zd3vcpfzwgd41vn&st=s9igzj80&dl=0)

- From 2015 to 2022, while statewide tuition has increased from 8k to 10k, enrollment remained at around 2k.
- Enrollment numbers alone appear to have negligible effect on tuition fees. For example, even for states with the five highest tuition growth (Connecticut, Oregon, Virginia, Texas, and Puerto Rico), while their tuition has increased significantly, their enrollment has remained steady.
- Furthermore, for many states that have above average enrollment, their tuition in contrast is below average.

### Raising Tuition Revenue to Meet Expenses

![image alt](https://dl.dropboxusercontent.com/scl/fi/dxucemrb5h8w4sjvf6j4s/Tuition-Revenue-vs-Expenses.png?rlkey=7ifkvxwwr2x9c9o0sehnm2ojz&st=jtb4l7wl&dl=0)

- From 2015 to 2022, statewide tuition revenue increased from $10B to $12B, while statewide expenses increased from $306M to $399M.
- For states with the five highest tuition growth (Connecticut, Oregon, Virginia, Texas, and Puerto Rico), both their expenses and tuition revenue have increased significantly. 
- For states with the five lowest tuition growth (Virgin Islands, South Dakota, Oklahoma, Georgia, Florida), their expenses have also significantly increased, but their tuition revenue has seen little increase.
- As tuition revenue is the product of tuition and enrollment numbers, tertiary institutions have increased their tuition fees from 2015-2022 so that they generate enough revenue to meet their ever-increasing expenses. Since it’s difficult for institutions to significantly boost enrollment numbers due to factors such as seating availability, class sizes, availability of faculty staff etc., increasing tuition fees is a far more viable option to generate enough revenue. 

## Findings and Recommendations

- Expenses across tertiary institutions have been escalating yearly. Across all sources of expenses, there has been an overall increase, but interestingly, the ‘other expenses’ category has been contributing greater to this. We recommend splitting this category into further sub-categories to have better transparency of where these expenses are from, and if actions can be taken to cut some of these expenses.
- Tuition fees have increased to cover the escalating expenses. This is because enrolment numbers have remained steady across all states, so tuition fees had to increase to cover expenses. While it can be difficult for some tertiary institutions to increase their enrolment numbers due to limitations in staffing and infrastructure, we recommend exploring options to boost enrolment, such as a recruitment drive or introducing new academic programs that are relevant to current job market demands to reduce the need to increase tuition. 
- States that experienced the greatest growth in tuition may need additional aid from the government. We recommend that this aid is provided to Connecticut, Oregon, Virgina, Michigan, and Rhode Island. In contrast, states such as Virgin Islands, North Carolina, Wisconsin, Florida, and Georgia have the lowest growths in tuition possibly due to other sources of revenue, so there could be an option of reallocating some funding from the government in those states to those with high tuition growth to alleviate the pressure of having to increase tuition fees further.
- Funding at the state level could increase to provide financial aid. Statewide, the government has increased its contribution financially, but at local and state level, this is not as significant. Hence, it might be worthwhile to consider additional funding for tertiary institutions at these levels.  
