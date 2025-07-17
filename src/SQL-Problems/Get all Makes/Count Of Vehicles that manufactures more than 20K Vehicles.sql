SELECT M.Make, COUNT(*) AS NumberOfVehicles
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
GROUP BY M.Make
HAVING COUNT(*) > 20000
ORDER BY NumberOfVehicles DESC;