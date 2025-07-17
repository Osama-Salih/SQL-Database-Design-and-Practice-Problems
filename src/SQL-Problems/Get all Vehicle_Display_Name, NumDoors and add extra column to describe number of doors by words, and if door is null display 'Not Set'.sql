SELECT Vehicle_Display_Name, NumDoors, DoorDescription = 
  CASE 

	  WHEN  NumDoors = 0 THEN  'Zero Doors'
	  WHEN  NumDoors = 1 THEN  'One Doors'
	  WHEN  NumDoors = 2 THEN  'Tow Doors'
	  WHEN  NumDoors = 3 THEN  'Three Doors'
	  WHEN  NumDoors = 4 THEN  'Four Doors'
	  WHEN  NumDoors = 5 THEN  'Five Doors'
	  WHEN  NumDoors = 6 THEN  'Six Doors'
	  WHEN  NumDoors = 8 THEN  'Eight Doors'
	  WHEN NumDoors IS NULL THEN 'Not Set'
      ELSE 'Unknown'

END
FROM VehicleDetails;