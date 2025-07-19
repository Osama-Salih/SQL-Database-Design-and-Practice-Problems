SELECT TOP 1 COUNT(*) AS HighestNumberOfModelManufactured
FROM MakeModels AS Mo
JOIN Makes AS M
ON Mo.MakeID = M.MakeID
GROUP BY M.Make
ORDER BY HighestNumberOfModelManufactured DESC;