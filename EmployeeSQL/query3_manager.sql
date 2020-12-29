SELECT * FROM employees; 
SELECT * FROM dept_manager;
SELECT * FROM departments;

-- SELECT * FROM titles;

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
LEFT JOIN employees e
ON dm.emp_no = e.emp_no
INNER JOIN departments d
ON dm.dept_no = d.dept_no;

-- WHERE title = 'Manager';




		

