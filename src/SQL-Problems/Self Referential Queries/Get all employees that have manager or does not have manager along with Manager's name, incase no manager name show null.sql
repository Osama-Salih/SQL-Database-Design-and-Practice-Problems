SELECT E.Name, E.ManagerID, E.Salary, M.Name
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.ManagerID = M.EmployeeID;