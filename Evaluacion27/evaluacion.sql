1.  SELECT j.job_title AS Trabajo, COUNT(e.employee_id) AS empleados_total, SUM(e.salary) AS salario_total FROM employees e
    JOIN jobs j ON e.job_id = j.job_id
    GROUP BY j.job_title
    ORDER BY empleados_total DESC;

2.  SELECT e.first_name AS Nombre, e.last_name AS Apellido, j.job_title AS Trabajo, d.department_name AS Departamento FROM employees e
    JOIN jobs j ON e.job_id = j.job_id
    JOIN departments d ON e.department_id = d.department_id;

3.  UPDATE employees SET phone_number = '303.404.505'
    WHERE phone_number IS NULL;

4.  UPDATE employees SET salary = salary * 1.35
    WHERE salary < 8000 AND job_id IN (SELECT job_id FROM jobs WHERE job_title IN ('Programmer', 'Accountant'));

5.  INSERT INTO departments (department_name, location_id)
    VALUES ('Consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));

    INSERT INTO jobs (job_title, min_salary, max_salary)
    VALUES ('Consultant', 4000, 12000);

    INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, job_id, department_id, manager_id)
    VALUES 
    ('Raul', 'Lopez', 'rlopez@gmail.com', '1.231.231.122', '2024-06-27', 5000, 
        (SELECT job_id FROM jobs WHERE job_title = 'Consultant'), 
        (SELECT department_id FROM departments WHERE department_name = 'Consultants'), 
        100),
    ('Andres', 'Gonzalez', 'agonzalez@gmail.com', '1.231.231.122', '2024-06-27', 5000, 
        (SELECT job_id FROM jobs WHERE job_title = 'Consultant'), 
        (SELECT department_id FROM departments WHERE department_name = 'Consultants'), 
        100),
    ('Laura', 'Fernandez', 'lfernandez@gmail.com', '1.231.231.122', '2024-06-27', 5000, 
        (SELECT job_id FROM jobs WHERE job_title = 'Consultant'), 
        (SELECT department_id FROM departments WHERE department_name = 'Consultants'), 
        100);

6.      