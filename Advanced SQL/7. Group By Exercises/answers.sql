/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/
--ans--
SELECT hire_date, COUNT(emp_no) AS "no_of_emp"
FROM employees
GROUP BY hire_date
ORDER BY "no_of_emp" DESC;


/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/
--ans--
SELECT e.emp_no, COUNT(t.title) AS "amount"
FROM employees AS e
INNER JOIN titles AS t USING (emp_no)
WHERE (EXTRACT (year FROM hire_date) > 1991)
GROUP by e.emp_no
ORDER BY e.emp_no;


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/
--ans--
SELECT e.emp_no, de.from_date, de.to_date
FROM employees AS e
INNER JOIN dept_emp AS de USING(emp_no)
WHERE dept_no = 'd005'
GROUP BY e.emp_no, de.from_date, de.to_date
ORDER BY e.emp_no, de.to_date;
