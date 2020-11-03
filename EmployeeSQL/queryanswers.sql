select * from "Employees";

--question 1
select e."Emp_No", "First_name", "Last_name", "Sex" , s."Salary"
from "Employees" e
INNER JOIN "Salaries" s on e."Emp_No"=s."Emp_No" ;

--question 2
select "First_name", "Last_name", "Hire_date" 
from "Employees" 
where date_part('year', "Hire_date")='1986'

--question 3
select "Emp_No", "Last_name", "First_name", d."Dept_name" 
from "Employees" e
Inner join "Dept_Manager" s on e."Emp_No"= s."Emp_no" 
Inner join "Department" d on d."Dept_no"=s."Dept_no"

--question 4 
select "Emp_No", "Last_name", "First_name", d."Dept_name" 
from "Employees" e
Inner join "Dept_Emp" s on e."Emp_No"= s."Emp_no" 
Inner join "Department" d on d."Dept_no"=s."Dept_no"

--question 5 
select "First_name", "Last_name", "Sex" 
from "Employees"
Where "First_name" = 'Hercules' And "Last_name" Like 'B%';

--question 6 
select "Emp_No", "Last_name", "First_name", d."Dept_name" 
from "Employees" e
Inner join "Dept_Emp" s on e."Emp_No"= s."Emp_no" 
Inner join "Department" d on d."Dept_no"=s."Dept_no"
Where "Dept_name"= 'Sales';

--question 7 

select "Emp_No", "Last_name", "First_name", d."Dept_name" 
from "Employees" e
Inner join "Dept_Emp" s on e."Emp_No"= s."Emp_no" 
Inner join "Department" d on d."Dept_no"=s."Dept_no"
Where "Dept_name" in('Sales', 'Development');

--Question 8 

select "Last_name", count(*) 
from "Employees"
Group by "Last_name"
Order by count(*) desc;