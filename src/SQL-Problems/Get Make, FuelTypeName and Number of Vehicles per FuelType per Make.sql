SELECT M.Make, F.FuelTypeName, COUNT(*) AS NumberOfVehicles
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
JOIN FuelTypes AS F
ON V.FuelTypeID = F.FuelTypeID
WHERE V.Year BETWEEN 1950 AND 2000
GROUP BY F.FuelTypeName,M.Make
ORDER BY M.Make;
