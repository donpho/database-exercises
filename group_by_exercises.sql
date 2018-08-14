use employees;

select distinct title from titles;

select distinct last_name
from employees
where last_name like 'e%'
and last_name like '%e'
group by last_name;

select first_name as 'First Name',last_name as 'Last Name'
from employees
where last_name like 'e%'
and last_name like '%e'
group by first_name, last_name;

select distinct last_name as 'Last Name', count(*)
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name
order by count(*);

select count(*) as 'Numbers of Name of Irena, Vidya, or Maya', gender as 'Genders'
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by (gender)
order by count(*) desc;