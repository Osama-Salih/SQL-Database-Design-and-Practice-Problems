SELECT Vehicle_Display_Name FROM VehicleDetails
WHERE Engine_CC = (SELECT MAX(Engine_CC) FROM VehicleDetails);
