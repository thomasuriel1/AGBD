SELECT first_name, last_name, salary from employees
WHERE salary < 6000

SELECT first_name, last_name, d.department_name, l.city, l.state_province from employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id