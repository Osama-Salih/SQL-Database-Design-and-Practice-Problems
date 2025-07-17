SELECT DISTINCT Vehicle_Display_Name, Year,
CarAge = YEAR(GETDATE()) - Year
FROM VehicleDetails
ORDER BY CarAge DESC;