2. Find all employees with first names 
'Irena', 'Vidya', or 'Maya', and order your results returned by first name. 
--Answer: First name in the table: Irena Reutenauer, Last Name in table: Vidya Reutenauer

Use employees;
Select first_name, last_name
from employees
Where first_name = 'Irena'
      or first_name = 'Vidya' 
      or first_name = 'Maya'
      order by first_name

3. Find all employees with first names 'Irena', 
'Vidya', or 'Maya', and order your results returned by first name and then last name.
 --Answer: First name in the table: Irena Acton, Last Name in table: Maya Zyda

Use employees;
Select first_name, last_name
from employees
Where first_name = 'Irena'
      or first_name = 'Vidya' 
      or first_name = 'Maya'
      order by last_name

4. Find all employees with first names 'Irena', 'Vidya', or 'Maya',
 and order your results returned by last name and then first name.
--Answer: First name in the table: Vidya Awdeh, Last name in table: Maya Melter

Use employees;
Select first_name, last_name
from employees
Where first_name = 'Irena'
      or first_name = 'Vidya' 
      or first_name = 'Maya'
      order by last_name and first_name

5. Write a query  to find all employees whose last name starts and ends with 'E'
Sort the results by their employee number. 
Enter a comment with the number of employees returned, the first employee number 
and their first and last name, and the last employee number with their first and 
last name.
--Answer: Number of employees: 899, first employee:10021, Ramzi Erde last employee: 499648 Tadahiro Erde

Use employees;
Select emp_no, first_name, last_name
from employees
Where last_name like ('E%') and last_name like ('%E')
order by emp_no;

6. Write a query to to find all employees whose last name starts and ends with 'E'.
Sort the results by their hire date, so that the newest employees are listed first.
Enter a comment with the number of employees returned,
the name of the newest employee, and the name of the oldest employee.
--Answer: Number of employees: 899, Newest Employee: Teiji Eldridge Oldest Employee: Sergi Erde

Use employees;
Select hire_date, first_name, last_name
from employees
Where last_name like ('E%') and last_name like ('%E')
order by hire_date DESC;

7. Find all employees hired in the 90s and born on Christmas. 
Sort the results so that the oldest employee who was hired last is the first result.
Enter a comment with the number of employees returned, the name of the oldest employee 
who was hired last, and the name of the youngest employee who was hired first.
--Answer: Number of employees: 362, Oldest employee hired last: Khun Bernini, 
youngest employee hired first:Pettis Douadi

Use employees;
Select hire_date, last_name, first_name, birth_date
from employees
Where (hire_date like ('%199%')) And (birth_date like ('%12-25%'))
order by birth_date ASC LIMIT 1000000;