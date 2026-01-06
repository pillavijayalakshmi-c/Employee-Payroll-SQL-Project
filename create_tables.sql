-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    performance_rating INT,
    joining_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
