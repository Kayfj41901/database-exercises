Write a query that returns all employees, their department number, their start date, their end date, 
and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not.

use employees; 
select dept_emp.emp_no, dept_emp.dept_no, dept_emp.from_date, dept_emp.to_date, IF(dept_emp.to_date > now(), True, False) AS 'is_current_employee'
From employees.dept_emp;


Write a query that returns all employee names (previous and current), and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' 
depending on the first letter of their last name.

use employees; 
SELECT employees.first_name, employees.last_name, CASE 
WHEN substr(employees.last_name, 1, 1) in ('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h') THEN 'A-H' 
WHEN substr(employees.last_name, 1, 1) in ('I',  'J',  'K',  'L',  'M',  'N',  'O',  'P',  'Q') then 'I-Q' 
else 'R-Z'
END AS 'alpha_group'
From employees
order by last_name; 


How many employees (current or previous) were born in each decade?

select 
concat(substr(birth_date, 1, 3), '0') as decade, 
count (*)
from employees
group by decade;


What is the current average salary for each of the following department groups: R&D, Sales & Marketing, Prod & QM, Finance & HR, Customer Service?

use employees;
Select employees.departments.dept_name, ROUND(AVG(employees.salaries.salary)) as AVG_CURRENT_SALARY
From employees.salaries join employees.dept_emp on employees.salaries.emp_no=employees.dept_emp.emp_no 
join employees.departments on employees.departments.dept_no=employees.dept_emp.dept_no
Where employees.salaries.to_date like '%9999%'
group by employees.departments.dept_name
Order by employees.departments.dept_name;
