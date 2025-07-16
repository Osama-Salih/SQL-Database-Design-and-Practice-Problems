SELECT M.Make, COUNT(*) AS NumberOfVehicles, 
(SELECT COUNT(*) FROM VehicleDetails) AS TotalVehicles
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
WHERE Year BETWEEN 1950 AND 2000
GROUP BY M.Make
ORDER BY NumberOfVehicles DESC;