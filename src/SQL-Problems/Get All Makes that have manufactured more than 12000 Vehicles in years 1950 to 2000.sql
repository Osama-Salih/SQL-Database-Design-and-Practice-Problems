--- With Having
SELECT M.Make, COUNT(*) AS NumberOfVehicles
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
WHERE Year BETWEEN 1950 AND 2000
GROUP BY M.Make
HAVING COUNT(*) > 12000
ORDER BY NumberOfVehicles DESC;


--- Without using Having
SELECT * FROM (
	SELECT M.Make, COUNT(*) AS NumberOfVehicles
	FROM VehicleDetails AS V
	JOIN Makes AS M
	ON V.MakeID = M.MakeID
	WHERE Year BETWEEN 1950 AND 2000
	GROUP BY M.Make
) AS R1 WHERE NumberOfVehicles > 12000
		ORDER BY NumberOfVehicles DESC;
