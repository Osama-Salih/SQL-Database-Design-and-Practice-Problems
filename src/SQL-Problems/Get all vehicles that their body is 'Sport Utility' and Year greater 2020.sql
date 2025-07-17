SELECT B.BodyName, V.*
FROM VehicleDetails AS V
JOIN Bodies AS B
ON V.BodyID = B.BodyID
WHERE B.BodyName = 'Sport Utility' AND Year > 2020;