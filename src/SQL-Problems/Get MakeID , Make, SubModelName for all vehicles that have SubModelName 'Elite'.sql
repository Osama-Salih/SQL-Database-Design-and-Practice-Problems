SELECT DISTINCT M.MakeID, M.Make, S.SubModelName
FROM VehicleDetails AS V
JOIN Makes AS M
ON V.MakeID = M.MakeID
JOIN SubModels AS S
ON V.SubModelID = S.SubModelID  
WHERE S.SubModelName = 'Elite';

