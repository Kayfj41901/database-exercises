
SET SQL_SAFE_UPDATES = 0;
use jemison_1740;
-- Following the example to create a temporary table from one database to the other. Notice its the database
-- name period table name; like joining tables but now on a bigger scale 
CREATE TEMPORARY TABLE employees_with_departments AS 
SELECT first_name, last_name, dept_name 
FROM employees.employees join employees.dept_emp on employees.employees.emp_no= employees.dept_emp.emp_no 
join employees.departments on employees.departments.dept_no=employees.dept_emp.dept_no; 
-- use this code to check the progress on the temporary table over time 
select *
from employees_with_departments; 
-- Add a column named full_name to this table. It should be a VARCHAR whose length is the sum of the 
-- lengths of the first name and last name columns. This number was calculated by looking back at the 
-- employees database object information that had a limit of 14 for first name and 16 for last 
ALTER TABLE jemison_1740.employees_with_departments ADD Full_name VARCHAR(30);
-- Use update with department name and then the word SET to create a new column. 
Update jemison_1740.employees_with_departments SET full_name = concat(first_name, ' ',last_name);

-- alter table plus table name plus 'drop column' will delete columns off the temporary table
alter table jemison_1740.employees_with_departments drop column first_name;
alter table jemison_1740.employees_with_departments drop column last_name;

-- This is another way to create the table more simply 
CREATE TEMPORARY TABLE employees_with_departments1 AS 
SELECT dept_name , concat(first_name,' ',last_name)  Full_name 
FROM employees.employees join employees.dept_emp on employees.employees.emp_no= employees.dept_emp.emp_no 
join employees.departments on employees.departments.dept_no=employees.dept_emp.dept_no; 
-- You can see this table here 
select *
from employees_with_departments1; 

-- Created temporary table with all columns from sakila database

CREATE TEMPORARY TABLE payment_with_sakila AS
SELECT *
from sakila.payment; 
-- used to check progress of temporary table 
select * 
from payment_with_sakila;
-- Alter table used to add new column 
Alter table payment_with_sakila add amount_cents  int;
-- Update used to fill column with data 
Update payment_with_sakila SET amount_cents  = amount * 100;

-- used to delete column
Alter table payment_with_sakila drop column amount;
-- used to change name of column 
Alter table payment_with_sakila rename column amount_cents to amount;

Find out how the current average pay in each department compares to the overall, historical average pay. In order to make the comparison easier, you should use the Z-score for salaries. In terms of salary, what is the best department right now to work for? The worst?