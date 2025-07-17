SELECT found = 1
WHERE Exists (
SELECT TOP 1 * FROM VehicleDetails
WHERE Year = 1950
)