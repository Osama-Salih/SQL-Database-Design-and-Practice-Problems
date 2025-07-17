SELECT DISTINCT M.Make, V.*  
FROM VehicleDetails AS V
JOIN Makes AS M
ON M.MakeID = V.MakeID
WHERE Engine_Cylinders = 4 AND Engine LIKE '%OHV%';


