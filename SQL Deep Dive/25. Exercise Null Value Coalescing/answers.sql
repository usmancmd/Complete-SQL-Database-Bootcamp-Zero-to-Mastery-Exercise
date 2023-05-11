/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/
-- ans -- 30.4000000000000000
SELECT AVG(coalesce(age, 15)) FROM "Student";

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/
-- query --
SELECT coalesce(name, 'first-name-here') as firstname, coalesce(lastname, 'last-name-here') as lastname from "Student"
