-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT * FROM employees;

SELECT last_name, COUNT(e.last_name) AS "last_name count"
FROM employees e
GROUP BY e.last_name
ORDER BY "last_name count" DESC;