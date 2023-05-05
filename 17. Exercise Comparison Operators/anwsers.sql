-- How many female customers do we have from the state of Oregon (OR)?
-- ans -- We have 106 females from Oregon (OR)
SELECT COUNT(firstname) FROM customers
WHERE state = 'OR' AND gender = 'F';


-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)
-- ans -- 2497 customers 
SELECT COUNT(firstname) FROM customers
WHERE age > 44 AND income >= 100000;


-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
-- ans -- 2362 customers
SELECT COUNT(firstname) FROM customers
WHERE age >= 30 AND age <= 50 AND income < 50000;


-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
-- ans -- Average = 59409.926240780098
SELECT AVG(income) FROM customers
WHERE age > 20 AND age < 50;
