Create a file named where_exercises.sql. Make sure to use the employees database.
Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned.
A. 'Irena' 241 

Use employees;

Select count(*) first_name
from employees
Where first_name IN ('Irena')

B. 'Vidya' 232

Select count(*) first_name
from employees
Where first_name IN ('Vidya')


C. 'Maya' 236
Use employees;

Select count(*) first_name
from employees
Where first_name IN ('Maya')

3. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2?
--Total: 709
Use employees;

Select count(*) first_name
from employees
Where first_name = ('Vidya') or 
      first_name = ('Irena') or 
      first_name = ('Maya')

4. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned.
--Answer 441
Use employees;

Select gender, first_name
from employees
Where (first_name = ('Vidya') or 
      first_name = ('Irena') or 
      first_name = ('Maya'))
    And (gender = 'M')

5. Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E.
--Answer 7330

Use employees;
Select last_name
from employees
where last_name like 'E%'

6. Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. How many employees have a last name that ends with E, but does not start with E?
--Answer - 30723 employees whose last name starts or ends with 'E' 
Use employees;
Select last_name
from employees
where last_name like 'E%' or last_name like '%E';

--Answer - 23393 employees whose last name ends with E, but does not start with E 
Use employees;
Select last_name
from employees
where last_name like '%E' 
And last_name not like 'E%';

7.Find all current or previous employees employees whose last name starts and ends with 'E'. Enter a comment with the number of employees whose last name starts and ends with E. How many employees' last names end with E, regardless of whether they start with E?
--Answer 899 employees last name starts and ends with 'E' 
Use employees;
Select last_name
from employees
where last_name like '%E' 
And last_name like 'E%';

--Answer 24292 employees names end in the letter 'e' 
Use employees;
Select last_name
from employees
where last_name like '%E'; 

8. Find all current or previous employees hired in the 90s. Enter a comment with the number of employees returned.
-- Answer 135214 employees hired in the 90s 
Use employees;
Select hire_date
from employees
WHERE hire_date LIKE '%199%'LIMIT 1000000;

9.Find all current or previous employees born on Christmas. Enter a comment with the number of employees returned.
-- Answer 842 employees born on Christmas 
Use employees;
Select birth_date
from employees
where birth_date like '%12-25%';

10.Find all current or previous employees hired in the 90s and born on Christmas. Enter a comment with the number of employees returned.
-- Answer 362 employees were born in the 90s and born on Christmas Day 
Use employees;
Select birth_date
from employees
where (birth_date like '%12-25%')
and (hire_date LIKE '%199%');

11.Find all current or previous employees with a 'q' in their last name. Enter a comment with the number of records returned.
Use employees; 
-- Answer 1873 employees have a q in their last name 
Use employees;
Select last_name
from employees
where last_name like '%q%';

12.Find all current or previous employees with a 'q' in their last name but not 'qu'. How many employees are found?
-- Answer 547 employees have a q but not 'qu' in their last name 
Use employees;
Select last_name
from employees
where (last_name like '%q%') AND (last_name not like '%qu%');