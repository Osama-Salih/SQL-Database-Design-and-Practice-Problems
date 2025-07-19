SELECT TOP 1 M.Make, COUNT(*) AS HighestManufacturer 
FROM MakeModels AS Mo
JOIN Makes AS M
ON Mo.MakeID = M.MakeID
GROUP BY M.Make
ORDER BY HighestManufacturer DESC;