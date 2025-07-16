SELECT M.Make, COUNT(*) AS 'NumberOfVehicles' 
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
WHERE Year BETWEEN 1950 AND 2000
GROUP BY M.Make
ORDER BY COUNT('NumberOfVehicles') DESC;