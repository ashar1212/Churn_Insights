SELECT DATABASE();

SHOW TABLES;

# column names and data types
DESCRIBE `ibm telco customer churn dataset`;


SELECT * FROM `ibm telco customer churn dataset` LIMIT 0, 10;

# Records are there in the ibm telco customer churn dataset table
SELECT COUNT(*) FROM `ibm telco customer churn dataset`;

# What are the Customer ID, Satisfaction Score, and Churn Label for the first ten records in the dataset
SELECT `Customer ID`, `Satisfaction Score`, `Churn Label` 
FROM `ibm telco customer churn dataset` 
LIMIT 0, 10;

#  data is present in the first ten records
SELECT * FROM `ibm telco customer churn dataset` LIMIT 0, 10;

# first ten records look like for customers who have churned
 SELECT * FROM `ibm telco customer churn dataset` 
WHERE `Churn Label` = 'Yes' 
LIMIT 0, 10;

# average satisfaction score for different customer statuses among those who have churned
SELECT `Customer Status`, AVG(`Satisfaction Score`) AS `AverageSatisfactionScore`
FROM `ibm telco customer churn dataset`
WHERE `Churn Label` = 'Yes'
GROUP BY `Customer Status`
ORDER BY `AverageSatisfactionScore` DESC
LIMIT 5;

# istinct reasons for customer churn among those who have left the service
SELECT DISTINCT `Churn Reason`
FROM `ibm telco customer churn dataset`
WHERE `Churn Label` = 'Yes';

#  customers who have churned in each churn category
SELECT `Churn Category`, COUNT(*) AS `ChurnedCustomers`
FROM `ibm telco customer churn dataset`
WHERE `Churn Label` = 'Yes'
GROUP BY `Churn Category`;

DESCRIBE `ibm telco customer churn dataset`;
SHOW TABLES;

#  total records
SELECT COUNT(*) FROM `ibm telco customer churn dataset`;

# What are the unique churn labels
SELECT DISTINCT `Churn Label` FROM `ibm telco customer churn dataset`;

# different customer statuses
SELECT DISTINCT `Customer Status` FROM `ibm telco customer churn dataset`;

# any records in the dataset where the Customer ID is missing
SELECT * FROM `ibm telco customer churn dataset` WHERE `Customer ID` IS NULL;

#  duplicate customer IDs in the dataset
SELECT `Customer ID`, COUNT(*) FROM `ibm telco customer churn dataset` GROUP BY `Customer ID` HAVING COUNT(*) > 1;

# e average satisfaction score across all customers 
SELECT AVG(`Satisfaction Score`) FROM `ibm telco customer churn dataset`;

# customers are in each churn label category
SELECT `Churn Label`, COUNT(*) AS `Total` FROM `ibm telco customer churn dataset` GROUP BY `Churn Label`;

# average satisfaction score and total number of customers for each churn label
SELECT 
    `Churn Label`, 
    AVG(`Satisfaction Score`) AS `Average Satisfaction Score`, 
    COUNT(*) AS `Total Customers`
FROM 
    `ibm telco customer churn dataset`
GROUP BY 
    `Churn Label`;

# unique reasons cited by customers for churning (leaving) the service
  SELECT DISTINCT `Churn Reason`
FROM `ibm telco customer churn dataset`
WHERE `Churn Label` = 'Yes';

# most common reasons for customer churn, and how many customers cited each reason for leaving
SELECT `Churn Reason`, COUNT(*) AS `ChurnedCustomers`
FROM `ibm telco customer churn dataset`
WHERE `Churn Label` = 'Yes'
GROUP BY `Churn Reason`
ORDER BY `ChurnedCustomers` DESC;

#customer satisfaction vary across different churn categories, and how customers belong to each category who have churned
SELECT `Churn Category`, AVG(`Satisfaction Score`) AS `AvgSatisfactionScore`, COUNT(*) AS `TotalChurnedCustomers`
FROM `ibm telco customer churn dataset`
WHERE `Churn Label` = 'Yes'
GROUP BY `Churn Category`
ORDER BY `AvgSatisfactionScore` DESC;

    
