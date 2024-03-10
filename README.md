# Bank-Marketing Study
## Introduction:
This study investigates the effectiveness of a Portuguese bank's marketing efforts in predicting the likelihood of a client opening a deposit account. Utilizing logistic regression, we aim to discern the pivotal factors influencing the decision to open an account.

## Data Description:
Our dataset comprises 25,000 observations of the bank's clients, encompassing variables such as whether they opened a deposit account (categorical: no, yes), age (numeric: in years), credit default status (categorical: no, yes), housing loan status (categorical: no, yes), personal loan status (categorical: no, yes), and the duration of phone calls (numeric: in seconds). Notably, our dataset is complete, with no missing data.

## Variable Selection:
Initially, a logistic regression model was developed using all independent variables. However, the analysis revealed that the variable "defaultyes" was not statistically significant at the 0.1 alpha level. Consequently, a refined model was created without considering the "defaultyes" variable.

## Interpretation of the coefficients:
•	Holding housing, loan and duration constant, the odds of a person opening a deposit account is 1.02 times higher for each year increase in their age.
•	Holding age,loan and duration constant, the odds of a person opening a deposit account is 1.15 times higher for people with housing loan. 
•	Holding age, housing, and duration constant, the odds of a person opening a deposit account decreases by approximately 1% for people who have personal loan. 
•	Holding age, housing, loan and duration constant, the odds of a person opening a deposit account is 1.00 times higher for each second spent on the duration of phone call.

## Conclusion:
The logistic regression analysis highlights the significance of age, housing loan status, personal loan status, and the duration of phone calls in predicting whether a client will open a deposit account. To enhance marketing strategies, the bank should tailor approaches based on these identified influential factors. For instance, personalized campaigns targeting age groups and loan types may prove more effective in promoting deposit account openings. Additionally, optimizing call duration may contribute positively to the likelihood of clients choosing to open an account.
