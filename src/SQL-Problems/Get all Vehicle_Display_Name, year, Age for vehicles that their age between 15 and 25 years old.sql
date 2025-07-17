SELECT DISTINCT Vehicle_Display_Name, Year,
VehicleAge = YEAR(GETDATE()) - Year
FROM VehicleDetails
WHERE YEAR(GETDATE()) - Year BETWEEN 15 AND 25
ORDER BY VehicleAge DESC;