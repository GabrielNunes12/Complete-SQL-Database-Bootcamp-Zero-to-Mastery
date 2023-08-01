/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select first_name, last_name from public.employees e order by e.first_name, e.last_name desc;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

select concat(first_name, ' ', last_name) as fullName, extract(year from AGE(e.birth_date)) as Years from public.employees e order by e.birth_date;


/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
select first_name, last_name from public.employees e where starts_with(e.first_name, 'K') order by e.birth_date;
