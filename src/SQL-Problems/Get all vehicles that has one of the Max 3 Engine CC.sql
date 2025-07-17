SELECT DISTINCT Vehicle_Display_Name FROM VehicleDetails
WHERE Engine_CC in (SELECT DISTINCT TOP 3 Engine_CC
FROM VehicleDetails);