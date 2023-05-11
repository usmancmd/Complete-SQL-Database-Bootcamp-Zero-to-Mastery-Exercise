/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/
SELECT emp_no, first_name, EXTRACT(YEAR FROM AGE(birth_date)) as "age" FROM employees
where first_name Ilike 'M%';


/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/
select count(first_name) from employees
where first_name Ilike 'A%R';


/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
* Expected output: 4211 
*/
select zip from customers
where cast(zip as text) like '%2%';


/*
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
* Expected output: 109 
*/
select count(zip) from customers
where cast(zip as text) like '2_1%';


/*
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
* Replace null values with "No State"                                                  
* Expected output: https://imgur.com/AVe6G4c
*/
select state from customers
where cast(phone as text) like '302%';
