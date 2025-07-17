SELECT Vehicle_Display_Name FROM VehicleDetails
WHERE Engine_CC = (SELECT MIN(Engine_CC) FROM VehicleDetails);
