/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/
SELECT count(e.emp_no), e.hire_date 
FROM employees as e
group by e.hire_date 


/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, count(t.title) as "titles"
FROM employees as e
JOIN titles as t USING(emp_no)
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
group by e.emp_no;


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e
JOIN dept_emp AS de USING(emp_no)
where de.dept_no = 'd005'
group by e.emp_no, de.from_date, de.to_date
order by e.emp_no ;
