SELECT COUNT(*) AS TotalVehicle
FROM VehicleDetails
WHERE Engine_CC > (SELECT AVG(Engine_CC) FROM VehicleDetails);