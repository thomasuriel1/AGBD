--Actividad 1
SELECT first_name, last_name, salary from employees
WHERE salary < 6000

--Actividad 2
SELECT first_name, last_name, d.department_name, l.city, l.state_province from employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
  
--Actividad 3
SELECT e.first_name, m.first_name from employees e 
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY m.manager_id

--Actividad 4 
SELECT e.first_name,count(*) as veces, m.first_name from employees e 
JOIN employees m ON e.employee_id = m.manager_id
GROUP BY m.manager_id
ORDER BY m.manager_id 

--Actividad 5