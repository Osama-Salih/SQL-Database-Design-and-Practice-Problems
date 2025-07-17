SELECT  *
FROM VehicleDetails AS V
JOIN FuelTypes AS F
ON V.FuelTypeID = F.FuelTypeID
WHERE F.FuelTypeName = 'GAS';
