In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? 
Answer that in a comment in your SQL file.
--Answer: 7 
Use employees; 
Select DISTINCT title
from titles;

Write a query to find a list of all unique last names of all employees that start and end with 'E' using GROUP BY.
-- Answer: 5
Use employees; 
SELECT DISTINCT(last_name)
from employees
Where (last_name like ('E%')) and (last_name like ('%E'))
GROUP BY last_name;

Write a query to to find all unique combinations of first and last names of all employees whose last names start and end with 'E'.

Use employees;
SELECT DISTINCT(CONCAT(first_name), (last_name))
from employees
Where last_name like ('E%') and last_name like ('%E')
GROUP BY first_name , last_name;

Write a query th a 'q' but not 'qu'. Include those names in a comment in your sql code.
Use employees;
SELECT last_name
from employees
Where last_name like ('%q%') and last_name not like ('%qu%')
GROUP BY last_name;

Add a COUNT() to your results (the query above) to find the number of employees with the same last name.
Use employees;
SELECT count(last_name) as 'number of employees'
from employees
Where last_name like ('%q%') and last_name not like ('%qu%')
GROUP BY last_name;

Find all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender 
with those names.

Use employees;
Select gender, first_name, COUNT(gender)
from employees
Where (first_name = ('Vidya') or 
      first_name = ('Irena') or 
      first_name = ('Maya'))
Group by gender , first_name;

Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? BONUS: How many duplicate usernames are there?
select gender, avg(salary), stddev(salary) from employees join salaries using (emp_no) group by gender;

Use employees;
Select lower(CONCAT(SUBSTR(first_name, 1, 1), SUBSTR(last_name, 1, 4), ('_'), SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2)))
count(*) as count_of_users
From employees 
group by username
having count_of_users > 1;

Determine the historic average salary for each employee. When you hear, read, or think "for each" with regard to SQL, you'll probably be grouping by that exact column.
Using the dept_emp table, count how many current employees work in each department. The query result should show 9 rows, one for each department and the employee count.
Determine how many different salaries each employee has had. This includes both historic and current.
Find the maximum salary for each employee.
Find the minimum salary for each employee.
Find the standard deviation of salaries for each employee.
Now find the max salary for each employee where that max salary is greater than $150,000.
Find the average salary for each employee where that average salary is between $80k and $90k.