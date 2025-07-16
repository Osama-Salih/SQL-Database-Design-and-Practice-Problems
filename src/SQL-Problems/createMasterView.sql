CREATE VIEW VehicleMasterDetails AS

SELECT 

VehicleDetails.ID,

Makes.MakeID, Makes.Make,

MakeModels.ModelID, MakeModels.ModelName,

SubModels.SubModelID, SubModels.SubModelName,

Bodies.BodyID, Bodies.BodyName,

VehicleDetails.Vehicle_Display_Name,
VehicleDetails.Year,

DriveTypes.DriveTypeID, DriveTypes.DriveTypeName,

VehicleDetails.Engine,
VehicleDetails.Engine_CC,
VehicleDetails.Engine_Cylinders,
VehicleDetails.Engine_Liter_Display,

FuelTypes.FuelTypeID, FuelTypes.FuelTypeName,

VehicleDetails.NumDoors

FROM 
VehicleDetails
JOIN Makes
ON VehicleDetails.MakeID = Makes.MakeID
JOIN MakeModels
ON VehicleDetails.ModelID = MakeModels.ModelID
JOIN SubModels
ON VehicleDetails.SubModelID = SubModels.SubModelID
JOIN Bodies
ON VehicleDetails.BodyID =  Bodies.BodyID
JOIN DriveTypes
ON VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
JOIN FuelTypes
ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID;