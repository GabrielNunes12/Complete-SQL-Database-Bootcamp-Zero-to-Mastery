/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT * FROM titles;
select distinct(t.title) from public.titles t

/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELECT * FROM employees;
select count(distinct(e.birth_date)) from public.employees e 
  
/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

SELECT * FROM country;
select distinct(coalesce(c.lifeexpectancy, 0)) from public.country c 
