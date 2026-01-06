-- 1. Find employees earning more than 50,000
SELECT emp_name, salary
FROM employees
WHERE salary > 50000;

-- 2. Calculate total salary paid by the company
SELECT SUM(salary) AS total_salary
FROM employees;

-- 3. Find average salary by department
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- 4. Get employee name, department name, and salary using JOIN
SELECT e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- 5. Find employees earning more than average salary (SUBQUERY)
SELECT emp_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
