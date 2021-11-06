CREATE DATABASE [DB_Stage]
GO

USE [DB_Stage]
GO

--================== DELETE DATA IN ALL TABLE ===================
DELETE [Accident_Severity]
DELETE [Age_Band]
DELETE [Casualty_Class]
DELETE [Casualty_Severity]
DELETE [Journey_Purpose]
DELETE [Day_of_Week]
DELETE [Casualty_Type]
DELETE [Casualties]
DELETE [Accidents]
DELETE [Junction_Control] 
DELETE [Junction_Detail]
DELETE [Junction_Location] 
DELETE [Light_Conditions] 
DELETE [Local_Authority_District] 
DELETE [Local_Authority_Highway]
DELETE [Ped_Cross_Human]
DELETE [UK_Postcode] 
DELETE [LSOA_Postcode_Mapping] 
DELETE [Ped_Cross_Physical] 
DELETE [Ped_Location]
DELETE [Ped_Movement] 
DELETE [Point_of_Impact] 
DELETE [Police_Force]
DELETE [Police_Officer_Attend]
DELETE [Road_Class] 
DELETE [Road_Type]
DELETE [Road_Accident_Safety_Data_Guide]
DELETE [Sex_of_Driver]
DELETE [Urban_Rural] 
DELETE [Vehicle_Location]
DELETE [Vehicle_Manoeuvre] 
DELETE [Vehicle_Type]
DELETE [Vehicle]



--=================== CREATE ALL TABLE ========================

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

CREATE TABLE [Junction_Control] (
	[ID_ JunctionControl] int,
	[Name] varchar(50))

CREATE TABLE [Junction_Detail] (
	[ID_JunctionDetail] int,
	[Name] varchar(50)
)

CREATE TABLE [Junction_Location] (
	[ID_JunctionLocation] int,
	[Name] varchar(50)
)

CREATE TABLE [Light_Conditions] (
	[ID_LightConditions] int,
	[Name] varchar(50)
)

CREATE TABLE [Local_Authority_District] (
	[ID_LocalAuthorityDistrict] int,
	[Name] varchar(50))

CREATE TABLE [Local_Authority_Highway] (
	[ID_LocalAuthorityHighway] varchar(50),
	[Name] varchar(50)
)

CREATE TABLE [Ped_Cross_Human] (
	[ID_PedCrossHuman] varchar(50),
	[Name] varchar(50)
)

CREATE TABLE [UK_Postcode] (
    [postcode] varchar(50),
    [easting] varchar(50),
    [northing] varchar(50),
    [latitude] varchar(50),
    [longitude] varchar(50),
    [city] varchar(50),
    [county] varchar(50),
    [country_code] varchar(50),
    [country_name] varchar(50),
    [iso3166-2] varchar(50),
    [region_code] varchar(50),
    [region_name] varchar(50)
)

CREATE TABLE [LSOA_Postcode_Mapping] (
    [pcd7] varchar(50),
    [pcd8] varchar(50),
    [pcds] varchar(50),
    [dointr] varchar(50),
    [doterm] varchar(50),
    [usertype] varchar(50),
    [oa11cd] varchar(50),
    [lsoa11cd] varchar(50),
    [msoa11cd] varchar(50),
    [ladcd] varchar(50),
    [lsoa11nm] varchar(100),
    [msoa11nm] varchar(100),
    [ladnm] varchar(100),
    [ladnmw] varchar(100)
)

CREATE TABLE [Ped_Cross_Physical] (
    [ID_PedCrossPhysical] INT,
    [Name] varchar(50),
)

CREATE TABLE [Ped_Location] (
    [ID_PedLocation] INT,
    [Name] varchar(50)
)	

CREATE TABLE [Ped_Movement] (
    [ID_PedMovement] INT,
    [Name] varchar(100)
)

CREATE TABLE [Point_of_Impact] (
    [ID_PointofImpact] INT,
    [Name] varchar(50)
)

CREATE TABLE [Police_Force] (
    [ID_PoliceForce] INT,
    [Name] varchar(50)
	)

CREATE TABLE [Police_Officer_Attend] (
    [ID_PoliceOfficerAttend] INT,
    [Name] varchar(50)
)

CREATE TABLE [Road_Class] (
    [ID_RoadClass] INT,
    [Name] varchar(50)
)

CREATE TABLE [Road_Type] (
    [ID_RoadType] INT,
    [Name] varchar(50)
)

CREATE TABLE [Road_Accident_Safety_Data_Guide] (
    [ID_RoadAccidentSafetyDataGuide] INT,
    [Name] varchar(50)
)

CREATE TABLE [Sex_of_Driver] (
    [ID_SexOfDriver] INT,
    [Name] varchar(50)
)

CREATE TABLE [Urban_Rural] (
    [ID_UrbanRural] INT,
    [Name] varchar(50)
)

CREATE TABLE [Vehicle_Location] (
    [ID_VehicleLocation] INT,
    [Name] varchar(50)
)

CREATE TABLE [Vehicle_Manoeuvre] (
    [ID_VehicleManoeuvre] INT,
    [Name] varchar(50)
)

CREATE TABLE [Vehicle_Type] (
    [ID_VehicleType] INT,
    [Name] varchar(50)
)

CREATE TABLE [Vehicle] (
    [Accident_Index] varchar(50),
    [Vehicle_Reference] varchar(50),
    [Vehicle_Type] INT,
    [Towing_and_Articulation] varchar(50),
    [Vehicle_Manoeuvre] INT,
    [Vehicle_Location-Restricted_Lane] INT,
    [Junction_Location] INT,
    [Skidding_and_Overturning] varchar(50),
    [Hit_Object_in_Carriageway] varchar(50),
    [Vehicle_Leaving_Carriageway] varchar(50),
    [Hit_Object_off_Carriageway] varchar(50),
    [1st_Point_of_Impact] INT,
    [Was_Vehicle_Left_Hand_Drive?] varchar(50),
    [Journey_Purpose_of_Driver] INT,
    [Sex_of_Driver] INT,
    [Age_of_Driver] varchar(50),
    [Age_Band_of_Driver] INT,
    [Engine_Capacity_(CC)] varchar(50),
    [Propulsion_Code] varchar(50),
    [Age_of_Vehicle] varchar(50),
    [Driver_IMD_Decile] varchar(50),
    [Driver_Home_Area_Type] varchar(50)
)


--======================= SELECT ALL TABLE ================
SELECT * FROM  [Accident_Severity]
SELECT * FROM  [Age_Band]
SELECT * FROM  [Casualty_Class]
SELECT * FROM  [Casualty_Severity]
SELECT * FROM  [Journey_Purpose]
SELECT * FROM  [Day_of_Week]
SELECT * FROM  [Casualty_Type]
SELECT * FROM  [Casualties]
SELECT * FROM  [Accidents]
SELECT * FROM  [Junction_Control] 
SELECT * FROM  [Junction_Detail]
SELECT * FROM  [Junction_Location] 
SELECT * FROM  [Light_Conditions] 
SELECT * FROM  [Local_Authority_District] 
SELECT * FROM  [Local_Authority_Highway]
SELECT * FROM  [Ped_Cross_Human]
SELECT * FROM  [UK_Postcode] 
SELECT * FROM  [LSOA_Postcode_Mapping] 
SELECT * FROM  [Ped_Cross_Physical] 
SELECT * FROM  [Ped_Location]
SELECT * FROM  [Ped_Movement] 
SELECT * FROM  [Point_of_Impact] 
SELECT * FROM  [Police_Force]
SELECT * FROM  [Police_Officer_Attend]
SELECT * FROM  [Road_Class] 
SELECT * FROM  [Road_Type]
SELECT * FROM  [Road_Accident_Safety_Data_Guide]
SELECT * FROM  [Sex_of_Driver]
SELECT * FROM  [Urban_Rural] 
SELECT * FROM  [Vehicle_Location]
SELECT * FROM  [Vehicle_Manoeuvre] 
SELECT * FROM  [Vehicle_Type]
SELECT * FROM  [Vehicle]