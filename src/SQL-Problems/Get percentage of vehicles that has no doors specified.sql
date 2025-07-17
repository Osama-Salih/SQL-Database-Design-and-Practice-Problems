SELECT (
	
	CAST((SELECT COUNT(*) AS VehicleWithNonDoors
	FROM VehicleDetails
	WHERE NumDoors IS NULL) AS FLOAT)
	/ 
	CAST ((SELECT COUNT(*) AS TotalVehicles
	FROM VehicleDetails) AS FLOAT)

) AS PercOfNoSpecifiedDoors;