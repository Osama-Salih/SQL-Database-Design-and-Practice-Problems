SELECT DISTINCT M.Make, F.FuelTypeName
FROM VehicleDetails AS V
JOIN FuelTypes AS F
ON V.FuelTypeID = F.FuelTypeID
JOIN Makes AS M
ON V.MakeID = M.MakeID
WHERE F.FuelTypeName = 'GAS';
