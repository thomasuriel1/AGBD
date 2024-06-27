1 .SELECT e.first_name, e.last_name d.department_name, l.state_province, e.salary, m.first_name AS manager_first_name, m.last_name AS manager_last_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
LEFT JOIN employees m ON e.manager_id = m.employee_id
ORDER BY e.salary DESC;

2. UPDATE jobs
SET min_salary = min_salary * 0.75,
    max_salary = max_salary * 0.75;

3. DELETE FROM employees
WHERE salary > (SELECT max_salary FROM jobs WHERE job_id = employees.job_id);

4. INSERT INTO departments (department_name, location_id)
VALUES ('Asesores', 1700);
INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('Asesor', 3000, 6000);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES (
  'Thomas', 'Laura Vargas', 'tlauravargas@etec.uba.ar', '555-1234', '2024-06-27', 
  (SELECT job_id FROM jobs WHERE job_title = 'Asesor'),
  4500, 
  (SELECT employee_id FROM employees WHERE first_name = 'John' AND last_name = 'Chen'), 
  (SELECT department_id FROM departments WHERE department_name = 'Asesores')
);