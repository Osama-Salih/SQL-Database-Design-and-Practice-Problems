SELECT M.Make, COUNT(*) AS NumberOfVehicles
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
GROUP BY M.Make
ORDER BY NumberOfVehicles DESC;