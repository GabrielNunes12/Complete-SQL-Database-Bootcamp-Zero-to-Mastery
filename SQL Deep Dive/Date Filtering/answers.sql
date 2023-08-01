/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT AGE(birth_date), * FROM employees
WHERE (
   EXTRACT (YEAR FROM AGE(birth_date))
) > 60 ;

-- alternative
SELECT count(birth_date) FROM employees
WHERE birth_date < now() - interval '61 years' -- 61 years before the current date
            
/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT count(emp_no) FROM employees
where EXTRACT (MONTH FROM hire_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT COUNT(emp_no) FROM employees
WHERE EXTRACT (MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee?
*/

SELECT MAX(AGE(birth_date)) FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT COUNT(orderid)
FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';

SELECT count(o.orderid) FROM orders o where extract(year from o.orderdate) = 2004 and extract(month from o.orderdate) = 01;

select count(e.first_name) from employees e where extract(year from age(e.birth_date)) > 60;

--Who was hired in february?
select count(e.first_name) from employees e where extract(month from e.hire_date) = 2;

-- Who is the oldest employee? (Use the analytical function MAX)
select MAX(AGE(e.birth_date)) as fName from employees e;

