CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar  NOT NULL
)

CREATE TABLE "dept-emt" (
    "emp_no" int   NOT NULL,

SELECT * FROM "dept-emt"
SELECT salaries.salary FROM "salaries"

----Data Analysis 1
SELECT 
employees.emp_no,
employees.first_name,
employees.last_name,
employees.gender,
salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no 
ORDER BY employees.emp_no ASC

----Data Analysis 2
SELECT
employees.emp_no,
employees.first_name,
employees.last_name
FROM employees
WHERE 
EXTRACT(year FROM hire_date) = 1986

----Data Analysis 3
SELECT 
departments.dept_no,
departments.dept_name,
deptmanager.emp_no,
deptmanager.from_date,
deptmanager.to_date,
employees.last_name,
employees.first_name
FROM deptmanager
JOIN departments
ON deptmanager.dept_no = departments.dept_no
JOIN employees
ON deptmanager.emp_no = employees.emp_no


----Data Analysis 4
SELECT 
deptemt.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
JOIN deptemt
ON employees.emp_no=deptemt.emp_no
JOIN departments
ON deptemt.dept_no=departments.dept_no
ORDER BY deptemt.emp_no ASC

----Data Analysis 5
SELECT *
FROM employees
WHERE last_name LIKE 'B%'
AND 
first_name = 'Hercules';

----Data Analysis 6
SELECT 
deptemt.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
JOIN deptemt
ON employees.emp_no=deptemt.emp_no
JOIN departments
ON deptemt.dept_no=departments.dept_no
WHERE dept_name = 'Sales'
ORDER BY deptemt.emp_no ASC

----Data Analysis 7
SELECT 
deptemt.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
JOIN deptemt
ON employees.emp_no=deptemt.emp_no
JOIN departments
ON deptemt.dept_no=departments.dept_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development'
ORDER BY deptemt.emp_no ASC

----Data Analysis 8
SELECT last_name
,count(last_name )
from employees
group by last_name
order by count(last_name) desc


----Add CONSTRAINT FOR AUTO MAPPING
SELECT * FROM deptemt
ALTER TABLE deptemt
ADD CONSTRAINT PK_deptemt PRIMARY KEY (emp_no,dept_no);

SELECT * FROM departments
ALTER TABLE departments
ADD CONSTRAINT PK_departments PRIMARY KEY(dept_no)

SELECT * FROM deptmanager
ALTER TABLE deptmanager
ADD CONSTRAINT PK_deptmanager PRIMARY KEY (dept_no,emp_no);

SELECT * FROM employees
ALTER TABLE employees
ADD CONSTRAINT PK_employees PRIMARY KEY (emp_no,first_name)

SELECT * FROM salaries
ALTER TABLE salaries
ADD CONSTRAINT PK_salaries PRIMARY KEY (emp_no,salary)

SELECT * FROM titles
ALTER TABLE titles
ADD CONSTRAINT PK_titles PRIMARY KEY (emp_no,from_date)












