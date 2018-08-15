use employees;

select * from employees;
select * from dept_manager;
select * from departments;
select * from dept_emp where dept_no = 'd009';
select * from titles;
select * from salaries;

select
  d.dept_name as 'Department Name',
  concat(e.first_name, ' ',e.last_name) as 'Department Managers'
  from dept_manager as dm
    join employees as e
      on dm.emp_no = e.emp_no
    join departments as d
      on d.dept_no = dm.dept_no
  where dm.to_date = '9999-01-01'
  ;

select
  d.dept_name as 'Department Name',
  concat(e.first_name, ' ',e.last_name) as 'Department Managers'
  from dept_manager as dm
    join employees as e
      on dm.emp_no = e.emp_no
    join departments as d
      on d.dept_no = dm.dept_no
  where dm.to_date = '9999-01-01' and e.gender = 'F'
  ;

select t.title as 'Title',
        count(*) as 'Count'
  from employees as e
    join titles as t
      on t.emp_no = e.emp_no
    join dept_emp as de
      on de.emp_no = e.emp_no
    join departments as d
      on de.dept_no = d.dept_no
  where d.dept_name = 'Customer Service' and t.to_date = '9999-01-01'
  group by t.title
;

select
  d.dept_name as 'Department Name',
  concat(e.first_name, ' ',e.last_name) as 'Department Managers',
  s.salary as 'Salary'
  from dept_manager as dm
    join employees as e
      on dm.emp_no = e.emp_no
    join departments as d
      on d.dept_no = dm.dept_no
    join salaries as s
      on s.emp_no = e.emp_no
  where dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
  ;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;