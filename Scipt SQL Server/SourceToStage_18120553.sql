CREATE DATABASE [DB_Stage]
GO

USE [DB_Stage]
GO

------------------------------------------------------------------------------------
CREATE TABLE [Accident_Severity] (
    [ID_AccidentSeverity] varchar(50),
    [Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)

CREATE TABLE [Age_Band] (
    [ID_AgeBand] varchar(50),
    [Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)

CREATE TABLE [Casualty_Class] (
    [ID_CasualtyClass] varchar(50),
    [Name] varchar(50),
    [Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)

CREATE TABLE [Casualty_Severity] (
    [ID_CasualtySeverity] varchar(50),
    [Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)


CREATE TABLE [Journey_Purpose] (
    [ID_JourneyPurpose] varchar(50),
    [Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)

CREATE TABLE [Day_of_Week] (
    [ID_DayofWeek] varchar(50),
    [Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)


CREATE TABLE [Accidents] (
    [Accident_Index] varchar(50),
    [Location_Easting_OSGR] varchar(50),
    [Location_Northing_OSGR] varchar(50),
    [Longitude] varchar(50),
    [Latitude] varchar(50),
    [Police_Force] varchar(50),
    [Accident_Severity] varchar(50),
    [Number_of_Vehicles] varchar(50),
    [Number_of_Casualties] varchar(50),
    [Date] varchar(50),
    [Day_of_Week] varchar(50),
    [Time] varchar(50),
    [Local_Authority_(District)] varchar(50),
    [Local_Authority_(Highway)] varchar(50),
    [1st_Road_Class] varchar(50),
    [1st_Road_Number] varchar(50),
    [Road_Type] varchar(50),
    [Speed_limit] varchar(50),
    [Junction_Detail] varchar(50),
    [Junction_Control] varchar(50),
    [2nd_Road_Class] varchar(50),
    [2nd_Road_Number] varchar(50),
    [Pedestrian_Crossing-Human_Control] varchar(50),
    [Pedestrian_Crossing-Physical_Facilities] varchar(50),
    [Light_Conditions] varchar(50),
    [Weather_Conditions] varchar(50),
    [Road_Surface_Conditions] varchar(50),
    [Special_Conditions_at_Site] varchar(50),
    [Carriageway_Hazards] varchar(50),
    [Urban_or_Rural_Area] varchar(50),
    [Did_Police_Officer_Attend_Scene_of_Accident] varchar(50),
    [LSOA_of_Accident_Location] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()

)


CREATE TABLE [Casualty_Type] (
    [ID_CasualtyType] varchar(50),
    [Name] varchar(100),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)




DROP TABLE [Accidents]
DROP TABLE [Accident_Severity]
DROP TABLE [Age_Band]
DROP TABLE [Casualty_Class]
DROP TABLE [Casualty_Severity]
DROP TABLE [Casualty_Type]
DROP TABLE [Day_of_Week]
DROP TABLE [Journey_Purpose]
DROP TABLE [Casualties]

DELETE [Accidents]
DELETE [Casualties]
DELETE [Accident_Severity]
DELETE [Age_Band]
DELETE [Casualty_Class]
DELETE [Casualty_Severity]
DELETE [Casualty_Type]
DELETE [Day_of_Week]
DELETE [Journey_Purpose]

--SELECT * FROM [Accidents]
--SELECT * FROM [Accident_Severity]
--SELECT * FROM [Age_Band]
--SELECT * FROM [Casualty_Class]
--SELECT * FROM [Casualty_Severity]
--SELECT * FROM [Casualty_Type]
--SELECT * FROM [Day_of_Week]
--SELECT * FROM [Journey_Purpose]



----Updated



--===================================================================================


CREATE TABLE [Accident_Severity] (
    [ID_AccidentSeverity] INT,
    [Name] varchar(50)
)

CREATE TABLE [Age_Band] (
    [ID_AgeBand] INT,
    [Name] varchar(50)
)

CREATE TABLE [Casualty_Class] (
    [ID_CasualtyClass] INT,
    [Name] varchar(50)
)

CREATE TABLE [Casualty_Severity] (
    [ID_CasualtySeverity]INT,
    [Name] varchar(50)
)

CREATE TABLE [Journey_Purpose] (
    [ID_JourneyPurpose] INT,
    [Name] varchar(50)
)

CREATE TABLE [Day_of_Week] (
    [ID_DayofWeek] INT,
    [Name] varchar(50)
)

CREATE TABLE [Casualty_Type] (
    [ID_CasualtyType]INT,
    [Name] varchar(50)
)

CREATE TABLE [Casualties] (
    [Accident_Index] varchar(100),
    [Vehicle_Reference] INT,
    [Casualty_Reference] INT,
    [Casualty_Class] INT,
    [Sex_of_Casualty] INT,
    [Age_of_Casualty] INT,
    [Age_Band_of_Casualty] INT,
    [Casualty_Severity] INT,
    [Pedestrian_Location] INT,
    [Pedestrian_Movement] INT,
    [Car_Passenger] INT,
    [Bus_or_Coach_Passenger] INT,
    [Pedestrian_Road_Maintenance_Worker] INT,
    [Casualty_Type] INT,
    [Casualty_Home_Area_Type] INT
)



CREATE TABLE [Accidents] (
    [Accident_Index] varchar(50),
    [Location_Easting_OSGR] varchar(50),
    [Location_Northing_OSGR] varchar(50),
    [Longitude] varchar(50),
    [Latitude] varchar(50),
    [Police_Force] INT,
    [Accident_Severity] INT,
    [Number_of_Vehicles] varchar(50),
    [Number_of_Casualties] varchar(50),
    [Date] varchar(50),
    [Day_of_Week] INT,
    [Time] varchar(50),
    [Local_Authority_(District)] INT,
    [Local_Authority_(Highway)] varchar(50),
    [1st_Road_Class] INT,
    [1st_Road_Number] varchar(50),
    [Road_Type] INT,
    [Speed_limit] varchar(50),
    [Junction_Detail] INT,
    [Junction_Control] INT,
    [2nd_Road_Class] INT,
    [2nd_Road_Number] varchar(50),
    [Pedestrian_Crossing-Human_Control] INT,
    [Pedestrian_Crossing-Physical_Facilities] INT,
    [Light_Conditions] INT,
    [Weather_Conditions] varchar(50),
    [Road_Surface_Conditions] varchar(50),
    [Special_Conditions_at_Site] varchar(50),
    [Carriageway_Hazards] varchar(50),
    [Urban_or_Rural_Area] INT,
    [Did_Police_Officer_Attend_Scene_of_Accident] INT,
    [LSOA_of_Accident_Location] varchar(50)
)




