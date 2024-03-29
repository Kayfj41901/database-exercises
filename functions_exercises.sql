2.Write a query to to find all employees whose last name starts and ends with 'E'.
 Use concat()
 to combine their first and last name together as a single column named full_name.
--Answer: First name: Ramzi.Erde
Use employees;
Select CONCAT(first_name, '.', last_name) as full_name
from employees
Where last_name like ('E%') and last_name like ('%E'); 

3.Convert the names produced in your last query to all uppercase.
--Answer: First name: RAMZI ERDE, 704 rows
Use employees;
Select UPPER(CONCAT(first_name, '.', last_name)) as full_name
from employees
Where last_name like ('E%') and last_name like ('%E') 


4. Find all employees hired in the 90s and born on Christmas. 
Use datediff() function to find how many days they have
 been working at the company (Hint: You will also need 
 to use NOW() or CURDATE()),
--Answer: First name: Erie Mang 10390

Use employees;
Select (datediff(NOW(), hire_date)), AS 'days_with_company'
From employees
Where (hire_date like ('%199%')) And (birth_date like ('%12-25%'));

Find the smallest and largest current salary from the salaries table.
--Answer: Smallest Salary:38623 Largest Salary: 158220 REDOOOOOOOOOO

use employees; 
SELECT MIN(salary), MAX(salary)
From salaries
where to_date > curdate();

Use your knowledge of built in SQL functions to generate a username for all of the 
employees. A username should be all lowercase, and consist of the first character 
of the employees first name, the first 4 characters of the employees last name, 
an underscore, the month the employee was born, and the last two digits of the 
year that they were born. 
Use employees; 
Select lower(CONCAT(SUBSTR(first_name, 1, 1), SUBSTR(last_name, 1, 4), ('_'), SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2)))
from employees;