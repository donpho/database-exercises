use employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select *
from employees
where last_name like 'e%';

select *
from employees
where birth_date like '%-12-25';

select *
from employees
where last_name like '%q%';

select *
from employees
where first_name like 'Irena',
 or first_name like 'Vidya',
  or first_name like'Maya';

  select *
from employees
where gender = 'M'
      and(
        first_name like 'Irena'
      or first_name like 'Vidya'
      or first_name like'Maya');

select *
from employees
where last_name like 'e%'
and last_name like '%e';

select *
from employees
where birth_date like '%-12-25'
and hire_date > '1990-%-%';

select *
from employees
where last_name like '%q%'
      and last_name not like '%qu%';



