
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
--ans--
SELECT a.firstname, a.lastname, b.orderid
FROM customers AS a
INNER JOIN orders AS b ON a.customerid = b.customerid
WHERE state IN ('OH', 'NY', 'OR')
ORDER BY b.orderid;


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
--ans--
SELECT p.prod_id, i.quan_in_stock
FROM products AS p
INNER JOIN inventory AS i
ON p.prod_id = i.prod_id;


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
--ans--
SELECT a.first_name, /*a.last_name, a.emp_no, b.dept_no,*/ c.dept_name
FROM employees AS a
INNER JOIN dept_emp AS b ON a.emp_no = b.emp_no
INNER JOIN departments AS c ON b.dept_no = c.dept_no
ORDER BY a.emp_no;
