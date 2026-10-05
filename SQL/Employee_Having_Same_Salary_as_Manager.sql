SELECT 
    e.name AS Employee,
    e.salary AS EmployeeSalary,
    m.name AS Manager,
    m.salary AS ManagerSalary
FROM employees e
JOIN employees m
    ON e.manager_id = m.id
WHERE e.salary = m.salary;
