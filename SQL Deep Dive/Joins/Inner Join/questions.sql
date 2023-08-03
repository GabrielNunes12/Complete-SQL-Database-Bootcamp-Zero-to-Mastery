
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select * from orders o
join customers c on o.customerid = c.customerid
where c.state in ('NY', 'OR', 'OH')
order by o.orderid 


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select * from products p 
join inventory i on p.prod_id = i.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
select distinct concat(e.first_name, ' ',  e.last_name) as fullName , d.dept_name  from employees e 
join dept_emp de on e.emp_no = de.emp_no 
join departments d on d.dept_no = de.dept_no




