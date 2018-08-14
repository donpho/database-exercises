use employees;

select CONCAT(first_name, ' ', last_name) as EmployeeNames
from employees
where last_name like 'e%'
and last_name like '%e';


select CONCAT(first_name, ' ', last_name) as EmployeeNames,
DATEDIFF(CURRENT_DATE , hire_date) as DaysWorked
from employees
where birth_date like '%-12-25'
and hire_date > '1990-%-%'
order by birth_date asc, hire_date desc;