use employees;

select e.first_name, e.last_name, hire_date
from employees e
where hire_date in (
    select hire_date
    from employees emp
    where emp_no = 101010
);

select title
from titles
where emp_no in (
  select emp_no
  from employees e
  where first_name like 'Aamod'
);

select dept_name
from departments
where dept_no in (
  select dept_no
  from dept_manager
  where to_date = '9999-01-01'
   and emp_no in (
  select emp_no
  from employees
  where gender = 'F'
  )
);