SELECT E.Name, E.ManagerID, E.Salary, M.Name AS ManagerName
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.ManagerID = M.EmployeeID
WHERE M.Name = 'Mohammed';