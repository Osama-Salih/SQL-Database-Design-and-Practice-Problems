SELECT E.Name, E.ManagerID, E.Salary,
	
	CASE
	WHEN M.Name IS NULL THEN E.Name
	ELSE E.Name

END AS ManagerName
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.ManagerID = M.EmployeeID;