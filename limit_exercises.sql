2. MySQL provides a way to return only unique results from our queries
 with the keyword DISTINCT. For example, to find all the unique titles
within the company, we could run the following query:
List the first 10 distinct last name sorted in descending order.
--Answer: Zykh, Zyda, Zwicker, Zweizig, Zumaque, Zullner, Zucker, Zuberek, Zschoche, Zongker

3. Find all previous or current employees hired in the 90s and born on Christmas. 
Find the first 5 employees hired in the 90's by sorting by hire date and 
limiting your results to the first 5 records. 
Write a comment in your code that lists the five names of the employees returned.
--Answer Alselm Cappello, Utz Mandell, Bouchung Schreiter, Baocai Kushner, Petter Stroustrup

Use employees;
Select hire_date, last_name, first_name 
From employees
Where (hire_date like ('%199%')) And (birth_date like ('%12-25%'))
order by hire_date ASC LIMIT 5;

4.Try to think of your results as batches, sets, or pages. 
The first five results are your first page. 
The five after that would be your second page, etc. Update the query to find the 
tenth page of results.
--Answer- Narwekar, Farrow, Karcich, Lubachevsky, Fontan 
Use employees;
Select hire_date, last_name, first_name 
From employees
Where (hire_date like ('%199%')) And (birth_date like ('%12-25%'))
order by hire_date ASC LIMIT 5 OFFSET 45;

LIMIT and OFFSET can be used to create multiple pages of data. What is the 
relationship between OFFSET (number of results to skip), LIMIT (number of results 
per page), and the page number?
--When you offset you remove data from the query thus creating fewer pages and 
earlier 'page numbers'; when you LIMIT, specifically reducing the number of entries 
per page you are creating less data per page = more pages. 
