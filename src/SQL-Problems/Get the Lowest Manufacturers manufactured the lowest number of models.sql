SELECT M.Make, COUNT(*) AS NumberOfModels 
FROM Makes AS M
JOIN MakeModels AS Mo
ON Mo.MakeID = M.MakeID
GROUP BY M.Make
HAVING COUNT(*) = (

		SELECT MIN(NumberOfModels) AS MaxNumberOfModels
		FROM (
			SELECT MakeID, COUNT(*) AS NumberOfModels
			FROM MakeModels
			GROUP BY MakeID
		) AS R1);