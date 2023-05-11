/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/
-- using NOW() and INTERVAL() --
--ans-- 237200 --
SELECT COUNT(first_name) from employees
where birth_date < NOW() - interval '61 years'; -- use 61 years because we are subtracting directy from NOW()

-- using EXTRACT() and AGE() --
--ans-- 237200 --
SELECT AGE(birth_date) FROM employees
WHERE (EXTRACT(YEAR FROM AGE(birth_date))) > 60;


/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
--ans-- 24448 --
select count(emp_no) from employees
where (Extract(month from hire_date)) = 2;


/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/
--ans-- 24500 --
select count(emp_no) from employees
where (Extract(month from birth_date)) = 11

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/
--ans-- 71 years 3 mons 7 days --
SELECT MAX(AGE(birth_date)) from employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/
-- using EXTRACT() --
--ans-- 1000 --
SELECT COUNT(orderid) FROM orders
WHERE EXTRACT (YEAR FROM orderdate) = 2004 AND EXTRACT (MONTH FROM orderdate) = 1;

-- using DATE_TRUNC() --
--ans-- 1000 --
SELECT COUNT(orderid) FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';
