SELECT B.BodyName, V.*
FROM VehicleDetails AS V
JOIN Bodies AS B
ON V.BodyID = B.BodyID
WHERE B.BodyName IN ('Coupe', 'Hatchback', 'Sedan')
		AND Year IN (2008, 2020, 2021);	