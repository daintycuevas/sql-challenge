DROP TABLE employees;
CREATE TABLE employees(
	emp_no SERIAL PRIMARY KEY
	,emp_title_id VARCHAR NOT NULL
	,birth_date VARCHAR
	,first_name VARCHAR
	,last_name VARCHAR
	,sex VARCHAR
	,hire_date VARCHAR
);

COPY employees
FROM 'C:\Program Files\PostgreSQL\13\bin\Database\employees.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM employees;

CREATE TABLE titles(
	title_id VARCHAR NOT NULL
	,title VARCHAR
);

COPY titles
FROM 'C:\Program Files\PostgreSQL\13\bin\Database\titles.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM titles;

CREATE TABLE salaries(
	emp_no SERIAL 
	,salary VARCHAR
	,PRIMARY KEY (emp_no)
);

COPY salaries
FROM 'C:\Program Files\PostgreSQL\13\bin\Database\salaries.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM salaries;

DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	emp_no INT
	,dept_no VARCHAR
);

COPY dept_emp
FROM 'C:\Program Files\PostgreSQL\13\bin\Database\dept_emp.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM dept_emp;

DROP TABLE departments;
CREATE TABLE departments(
	dept_no VARCHAR
	,dept_name VARCHAR
);

COPY departments
FROM 'C:\Program Files\PostgreSQL\13\bin\Database\departments.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM departments;

DROP TABLE dept_manager;
CREATE TABLE dept_manager(
	dept_no VARCHAR
	,emp_no SERIAL PRIMARY KEY
);

COPY dept_manager
FROM 'C:\Program Files\PostgreSQL\13\bin\Database\dept_manager.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM dept_manager;
