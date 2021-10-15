CREATE DATABASE [Stage]
GO

USE [Stage]
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




--DROP TABLE [Accidents]
--DROP TABLE [Accident_Severity]
--DROP TABLE [Age_Band]
--DROP TABLE [Casualty_Class]
--DROP TABLE [Casualty_Severity]
--DROP TABLE [Casualty_Type]
--DROP TABLE [Day_of_Week]
--DROP TABLE [Journey_Purpose]

--DELETE [Accidents]
--DELETE [Accident_Severity]
--DELETE [Age_Band]
--DELETE [Casualty_Class]
--DELETE [Casualty_Severity]
--DELETE [Casualty_Type]
--DELETE [Day_of_Week]
--DELETE [Journey_Purpose]

--SELECT * FROM [Accidents]
--SELECT * FROM [Accident_Severity]
--SELECT * FROM [Age_Band]
--SELECT * FROM [Casualty_Class]
--SELECT * FROM [Casualty_Severity]
--SELECT * FROM [Casualty_Type]
--SELECT * FROM [Day_of_Week]
--SELECT * FROM [Journey_Purpose]



----fiehheufwefbjw




