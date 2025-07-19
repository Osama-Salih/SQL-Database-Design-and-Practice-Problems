SELECT TOP 3 M.Make, COUNT(*) AS ModelNumber
FROM MakeModels AS Mo
JOIN Makes AS M
ON Mo.MakeID = M.MakeID
GROUP BY M.Make
ORDER BY ModelNumber DESC;