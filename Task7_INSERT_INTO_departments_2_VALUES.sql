INSERT INTO departments_2 VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');

INSERT INTO employee_2 VALUES
(101, 'Alice', 1, 50000),
(102, 'Bob', 2, 60000),
(103, 'Charlie', 2, 55000),
(104, 'Diana', 3, 65000);


CREATE VIEW employee_2_departments_2_view AS
SELECT 
    e.emp_id,
    e.name AS employee_name,
    d.department_name,
    e.salary
FROM employee_2 e
JOIN departments_2 d
ON e.department_id = d.department_id;

SELECT * FROM employee_2_departments_2_view;





CREATE VIEW public_employee_2_info AS
SELECT 
    e.name AS employee_name,
    d.department_name
FROM employee_2 e
JOIN departments_2 d
ON e.department_id = d.department_id;


SELECT * FROM public_employee_2_info;


UPDATE employee_2_departments_2_view
SET salary = 70000
WHERE emp_id = 102;


DROP VIEW employee_2_departments_2_view;

SELECT * FROM employee_2_departments_2_view;

