Question 2
 Using the example in the Associative Table Joins section as a guide, write a query
 that shows each department along with the name of the current manager for that department.
 -- DOUBLE CHECKED CORRECT 
use employees;

SELECT departments.dept_name, CONCAT(employees.First_name, '_', employees.last_name) AS 'Department Manager' 
from employees join dept_manager on employees.emp_no=dept_manager.emp_no 
Join departments on departments.dept_no=dept_manager.dept_no 
Where dept_manager.to_date like '%9999%'
order by dept_name;

Question 3 
Find the name of all departments currently managed by women.
--Answer: DOUBLE CHECKED CORRECT
use employees;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.First_name, '_', employees.last_name) AS 'Manager Name'
from employees join dept_manager on employees.emp_no=dept_manager.emp_no 
Join departments on departments.dept_no=dept_manager.dept_no 
Where (dept_manager.to_date like '%9999%') and (gender like '%f%')
Order by departments.dept_name;


Question FOUR
Find the current titles of employees currently working in the Customer Service department.
tables needed: titles, dept_emp, employee, departments

---THIS IS CORRECT 
use employees;

SELECT titles.title as 'Title', COUNT(titles.emp_no) as 'count'   
from titles join employees on titles.emp_no=employees.emp_no 
Join dept_emp on dept_emp.emp_no=employees.emp_no Join departments on departments.dept_no=dept_emp.dept_no
Where (titles.to_date like '%9999%') and (dept_emp.to_date like '%9999%') and  (departments.dept_name like '%customer%')
GROUP BY titles.title;


Question FIVE
Find the current salary of all current managers.
--Answer: DOUBLE CHECKED THIS IS CORRECT
use employees; 

SELECT CONCAT(employees.First_name, '_', employees.last_name) AS 'Name', salaries.salary as 'Salary', titles.title as 'Title'
FROM salaries join titles on salaries.emp_no=titles.emp_no 
join employees on salaries.emp_no=employees.emp_no 
Where (salaries.to_date like '%9999%') and (titles.title like '%manager%') and (titles.to_date like '%9999%');

Question 6
Find the number of current employees in each department
--Answer CORRECT CORRECT 
use employees;
SELECT departments.dept_no as 'dept_no', departments.dept_name as 'dept_name', COUNT(dept_emp.emp_no) as 'num_employees' 
From departments join dept_emp on departments.dept_no=dept_emp.dept_no 
Where dept_emp.to_date like '%9999%'
Group by departments.dept_name
order by departments.dept_no;

Question 7
Which department has the highest average salary?
need department average salary 
--CORRECT CORRECT 
use employees; 
SELECT departments.dept_name, AVG(salaries.salary) as 'avg_salary'
From departments join dept_emp on departments.dept_no=dept_emp.dept_no 
Join salaries on salaries.emp_no=dept_emp.emp_no
where salaries.to_date like '%9999%'
group by departments.dept_name
order by AVG(salaries.salary) DESC;

Question 7 
Who is the highest paid employee in the Marketing department?
--ANSWER THIS IS CORRECT
use employees; 
SELECT employees.first_name, employees.last_name, dept_emp.to_date, dept_emp.dept_no, departments.dept_name, salaries.salary 
From employees join salaries on employees.emp_no=salaries.emp_no 
join dept_emp on dept_emp.emp_no=salaries.emp_no join departments on departments.dept_no=dept_emp.dept_no
where (dept_emp.to_date like '%9999%') and (departments.dept_name like '%marketing%')
order by salaries.salary DESC
Limit 1;


Question 8 
Which current department manager has the highest salary?
--Answer:THIS IS CORRECT
Use employees;
SELECT employees.First_name, employees.last_name, departments.dept_name, dept_manager.to_date, salaries.salary 
from salaries join employees on salaries.emp_no=employees.emp_no join dept_manager on employees.emp_no=dept_manager.emp_no 
Join departments on departments.dept_no=dept_manager.dept_no 
Where dept_manager.to_date like '%9999%'
order by salaries.salary DESC
LIMIT 1;



Question 9
Determine the average salary for each department. Use all salary information and round your results.
--CORRECT CORRECT 
--Answer: salaries, departments, dept_emp INCORRECT NEEDS REVIEW
use employees; 
SELECT departments.dept_name, AVG(salaries.salary)
From departments join dept_emp on departments.dept_no=dept_emp.dept_no 
Join salaries on salaries.emp_no=dept_emp.emp_no
group by departments.dept_name;


