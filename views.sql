-- View 1: High performance employees (rating >= 4)
CREATE VIEW high_performance_employees AS
SELECT emp_name, salary, performance_rating
FROM employees
WHERE performance_rating >= 4;

-- View 2: Employees earning above average salary
CREATE VIEW above_avg_salary AS
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- View 3: Department salary summary
CREATE VIEW department_salary_summary AS
SELECT d.dept_name, COUNT(e.emp_id) AS num_employees, AVG(e.salary) AS avg_salary, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;
