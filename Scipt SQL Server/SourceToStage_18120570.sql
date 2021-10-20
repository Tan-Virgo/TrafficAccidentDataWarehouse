CREATE TABLE [Ped_Cross_Physical] (
    [ID_PedCrossPhysical] varchar(50),
    [Name] varchar(100),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)

CREATE TABLE [Ped_Location] (
    [ID_PedLocation] varchar(50),
    [Name] varchar(100),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)	

CREATE TABLE [Ped_Movement] (
    [ID_PedMovement] varchar(50),
    [Name] varchar(200),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)

CREATE TABLE [Point_of_Impact] (
    [ID_PointofImpact] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)

CREATE TABLE [Police_Force] (
    [ID_PoliceForce] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)

CREATE TABLE [Police_Officer_Attend] (
    [ID_PoliceOfficerAttend] varchar(50),
    [Name] varchar(100),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)

CREATE TABLE [Casualties] (
    [Accident_Index] varchar(100),
    [Vehicle_Reference] varchar(50),
    [Casualty_Reference] varchar(50),
    [Casualty_Class] varchar(50),
    [Sex_of_Casualty] varchar(50),
    [Age_of_Casualty] varchar(50),
    [Age_Band_of_Casualty] varchar(50),
    [Casualty_Severity] varchar(50),
    [Pedestrian_Location] varchar(50),
    [Pedestrian_Movement] varchar(50),
    [Car_Passenger] varchar(50),
    [Bus_or_Coach_Passenger] varchar(50),
    [Pedestrian_Road_Maintenance_Worker] varchar(50),
    [Casualty_Type] varchar(50),
    [Casualty_Home_Area_Type] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)

CREATE TABLE [Road_Class] (
    [ID_RoadClass] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)