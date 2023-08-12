
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

select CONCAT(e.first_name, ' ',  e.last_name) as "fullName", count(t.title) as "# titles"
from employees e 
join titles t on e.emp_no = t.emp_no
where extract (year from e.hire_date) > 1991
group by e.emp_no
having count(t.title) > 2


/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/



/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

