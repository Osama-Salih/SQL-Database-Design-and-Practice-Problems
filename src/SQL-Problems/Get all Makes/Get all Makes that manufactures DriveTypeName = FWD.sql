SELECT DISTINCT M.Make, D.DriveTypeName
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
JOIN DriveTypes AS D
ON V.DriveTypeID = D.DriveTypeID
WHERE D.DriveTypeName = 'FWD';