SELECT COUNT(*) AS TotalWithNoSpecifiedDoors 
FROM VehicleDetails
WHERE NumDoors IS NULL;