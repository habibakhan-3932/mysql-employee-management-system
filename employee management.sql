-- CREATE DATABASE employee_management;
-- USE employee_management;
/* CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(100),
location VARCHAR(100)
);*/
/*CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    department_id INT,
    salary INT,
    experience_years INT,
    joining_date DATE,
    city VARCHAR(100),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);*/
/*INSERT INTO departments VALUES
(1, 'IT', 'Mumbai'),
(2, 'HR', 'Delhi'),
(3, 'Finance', 'Bangalore'),
(4, 'Marketing', 'Hyderabad'),
(5, 'Sales', 'Chennai');*/
/*INSERT INTO employees VALUES
(101, 'John', 'Shah', 1, 45000, 2, '2019-01-10', 'Mumbai'),
(102, 'Emma', 'Khan', 2, 52000, 3, '2018-03-15', 'Delhi'),
(103, 'Aarav', 'Patel', 3, 61000, 5, '2017-06-12', 'Bangalore'),
(104, 'Sofia', 'Verma', 4, 70000, 4, '2020-09-01', 'Hyderabad'),
(105, 'Liam', 'Singh', 5, 48000, 1, '2021-02-19', 'Chennai');*/
-- 1.get all  employees
-- SELECT * FROM employees;
-- 2.find employees with salary >50000;
/*SELECT first_name, last_name, salary
FROM employees
WHERE salary > 50000;*/
-- 3.Find employees with salary > 50,000
/*SELECT first_name, last_name, salary
FROM employees
WHERE salary > 50000;*/
-- 3. Count employees in each department
/*SELECT d.department_name, COUNT(e.employee_id) AS total_employees
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;*/
-- 4.Highest salary in each department
/*SELECT d.department_name, MAX(e.salary) AS highest_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;*/
-- 5.Second highest salary
/*SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);*/
-- 6.Employees who joined after 2019
/* SELECT * FROM employees
WHERE joining_date > '2019-01-01';*/
-- 7. Average salary per city
/*SELECT city, AVG(salary) AS average_salary
FROM employees
GROUP BY city;*/
-- Create a VIEW for high earning employees
/*CREATE VIEW high_earners AS
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 60000;*/
-- Create a Stored Procedure
/*DELIMITER $$

CREATE PROCEDURE GetEmployeesByDept(IN dept_id INT)
BEGIN
    SELECT * FROM employees
    WHERE department_id = dept_id;
END$$

DELIMITER ;*/
-- CALL GetEmployeesByDept(1);













