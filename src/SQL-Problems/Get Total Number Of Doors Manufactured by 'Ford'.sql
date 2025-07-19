SELECT M.Make, SUM(V.NumDoors) AS TotalNumberOfDoors
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
GROUP BY M.Make
HAVING M.Make = 'Ford';