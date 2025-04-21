//https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description

SELECT emp.unique_id,
e.name
FROM employees e
LEFT JOIN EmployeeUNI emp
USING(id);
