SELECT M.Make, D.DriveTypeName, COUNT(*) AS TotalVehicles 
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
JOIN DriveTypes AS D
ON V.DriveTypeID = D.DriveTypeID
GROUP BY D.DriveTypeName, M.Make
HAVING COUNT(*) > 10000
ORDER BY M.Make ASC, TotalVehicles DESC;
