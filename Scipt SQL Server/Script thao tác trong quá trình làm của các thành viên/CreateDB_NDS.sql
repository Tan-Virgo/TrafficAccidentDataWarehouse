CREATE DATABASE [DB_NDS]
GO

USE [DB_NDS]
GO

--=============== CREATE TABLES ===================
CREATE TABLE Sources_NDS
(
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	NameSource NVARCHAR(50),
	CreatedDate DATETIME,
	UpdatedDate DATETIME
)
GO

INSERT INTO Sources_NDS (NameSource, CreatedDate, UpdatedDate)
VALUES ('UK_CAR_Accident', GETDATE(), GETDATE())
INSERT INTO Sources_NDS(NameSource, CreatedDate, UpdatedDate)
VALUES ('UK_Postcode', GETDATE(), GETDATE())
INSERT INTO Sources_NDS(NameSource, CreatedDate, UpdatedDate)
VALUES ('UK_Postcode_Mapping', GETDATE(), GETDATE())

--DELETE [Country_NDS]
--DROP TABLE [Country_NDS]
CREATE TABLE [Country_NDS]
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
	[country_code] VARCHAR(50),
    [country_name] VARCHAR(50),
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID])
)
GO
INSERT INTO [Country_NDS] (country_code, country_name, SourceID, CreatedDate, UpdatedDate)
VALUES ('', '', 2, '1/1/2021', '1/1/2021')

--DELETE [Region_NDS]
--DROP TABLE [Region_NDS]
CREATE TABLE [Region_NDS]
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
	[region_code] VARCHAR(50),
    [region_name] VARCHAR(50),
	[ID_Country] INT,
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID]),
	FOREIGN KEY ([ID_Country]) REFERENCES [Country_NDS]([ID]),
)
GO
INSERT INTO [Region_NDS] (region_code, region_name, SourceID, CreatedDate, UpdatedDate)
VALUES ('', '', 2, '1/1/2021', '1/1/2021')

--DELETE [County_NDS]
--DROP TABLE [County_NDS]
CREATE TABLE [County_NDS]
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [county_name] VARCHAR(50),
	[ID_Region] INT,
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID]),
	FOREIGN KEY ([ID_Region]) REFERENCES [Region_NDS]([ID])
)
GO
INSERT INTO [County_NDS] (county_name, SourceID, CreatedDate, UpdatedDate)
VALUES ('', 2, '1/1/2021', '1/1/2021')


--DELETE [City_NDS]
--DROP TABLE [City_NDS]
CREATE TABLE [City_NDS]
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [city_name] VARCHAR(50),
	[ID_County] INT,
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID]),
	FOREIGN KEY ([ID_County]) REFERENCES [County_NDS]([ID])
)
GO
INSERT INTO [City_NDS] (city_name, SourceID, CreatedDate, UpdatedDate) 
VALUES ('', 2, '1/1/2021', '1/1/2021')





--DELETE [UK_Postcode_NDS]
--DROP TABLE [UK_Postcode_NDS]
CREATE TABLE [UK_Postcode_NDS]
(
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[postcode] VARCHAR(50),
    [easting] INT,
    [northing] INT,
    [latitude] FLOAT,
    [longitude] FLOAT,
    [ID_City] INT,
    [iso3166_2] VARCHAR(50),
	[SourceID] INT,
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME

	CONSTRAINT FK_City FOREIGN KEY (ID_City) REFERENCES [City_NDS]([ID]),
	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID])
)
GO


--DELETE [LSOA_Postcode_Mapping_NDS]
--DROP TABLE [LSOA_Postcode_Mapping_NDS]
CREATE TABLE [LSOA_Postcode_Mapping_NDS] 
(
	ID INT IDENTITY(1, 1) PRIMARY KEY,
    [LSOA_code] VARCHAR(50),
	[LSOA_name] VARCHAR(50),
	[Postcode] INT,
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID]),
	FOREIGN KEY ([Postcode]) REFERENCES [UK_Postcode_NDS]([ID])
)
GO

--DELETE [Accident_Severity]
--DROP TABLE [Accident_Severity]
CREATE TABLE [Accident_Severity_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
	[ID_AccidentSeverity] INT,
	[Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

--DELETE [Age_Band]
--DROP TABLE [Age_Band]
CREATE TABLE [Age_Band_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_AgeBand] INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

--DELETE [Casualty_Severity]
--DROP TABLE [Casualty_Severity]
CREATE TABLE [Casualty_Severity_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_CasualtySeverity] INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

--DELETE [Journey_Purpose]
--DROP TABLE [Journey_Purpose]
CREATE TABLE [Journey_Purpose_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_JourneyPurpose] INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

-- DELETE [Casualty_Type]
--DROP TABLE [Casualty_Type]
CREATE TABLE [Casualty_Type_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_CasualtyType]INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

--DELETE [Local_Authority_District]
--DROP TABLE [Local_Authority_District]
CREATE TABLE [Local_Authority_District_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
	[ID_LocalAuthorityDistrict] int,
	[Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

-- DELETE [Road_Type]
--DROP TABLE [Road_Type]
CREATE TABLE [Road_Type_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_RoadType] INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

--DELETE [Urban_Rural]
--DROP TABLE [Urban_Rural]
CREATE TABLE [Urban_Rural_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_UrbanRural] INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO

--DELETE [Vehicle_Type]
--DROP TABLE [Vehicle_Type]
CREATE TABLE [Vehicle_Type_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_VehicleType] INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO
-------------------------------------------------


--DELETE [Accidents_NDS]
--DROP TABLE [Accidents_NDS]
CREATE TABLE [Accidents_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [Accident_Index] VARCHAR(50),
    [Location_Easting_OSGR] INT,
    [Location_Northing_OSGR] INT,
    [Longitude] FLOAT,
    [Latitude] FLOAT,
    [Accident_Severity] INT,
    [Date] DATE,
    [Time] VARCHAR(50),
    [Local_Authority_(District)] INT,
    [Road_Type] INT,
    [Speed_limit] FLOAT,
    [Urban_or_Rural_Area] INT,
    [LSOA_of_Accident_Location] INT,
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,
	
	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID),
	FOREIGN KEY ([Accident_Severity]) REFERENCES [Accident_Severity_NDS](ID),
	FOREIGN KEY ([Local_Authority_(District)]) REFERENCES [Local_Authority_District_NDS](ID),
	FOREIGN KEY ([Road_Type]) REFERENCES [Road_Type_NDS](ID),
	FOREIGN KEY ([Urban_or_Rural_Area]) REFERENCES [Urban_Rural_NDS](ID),
	FOREIGN KEY ([LSOA_of_Accident_Location]) REFERENCES [LSOA_Postcode_Mapping_NDS](ID)
)
GO

--DELETE Vehicles_NDS
--DROP TABLE [Vehicles_NDS]
CREATE TABLE [Vehicles_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_Accident] INT,
	[Accident_Index] VARCHAR(100),
    [Vehicle_Reference] VARCHAR(50),
    [Vehicle_Type] INT,
    [Journey_Purpose_of_Driver] INT,
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,
	
	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID),
	FOREIGN KEY ([ID_Accident]) REFERENCES [Accidents_NDS](ID),
	FOREIGN KEY ([Vehicle_Type]) REFERENCES [Vehicle_Type_NDS](ID),
	FOREIGN KEY ([Journey_Purpose_of_Driver]) REFERENCES [Journey_Purpose_NDS](ID)
)
GO

--select * from Vehicles_NDS

-- DROP TABLE [Casualties_NDS]
CREATE TABLE [Casualties_NDS] 
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_Vehicles] INT,
	[Accident_Index] VARCHAR(100),
    [Vehicle_Reference] VARCHAR(50),
    [Casualty_Reference] VARCHAR(50),
    [Age_Band_of_Casualty] INT,
    [Casualty_Severity] INT,
    [Casualty_Type] INT,
	[Sex_of_Casualty] INT,
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,
	
	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID),
	FOREIGN KEY ([ID_Vehicles]) REFERENCES [Vehicles_NDS](ID),
	FOREIGN KEY ([Age_Band_of_Casualty]) REFERENCES [Age_Band_NDS](ID),
	FOREIGN KEY ([Casualty_Severity]) REFERENCES [Casualty_Severity_NDS](ID),
	FOREIGN KEY ([Casualty_Type]) REFERENCES [Casualty_Type_NDS](ID),
	FOREIGN KEY ([Sex_of_Casualty]) REFERENCES [Sex_of_Driver_NDS](ID)
)
GO

--SELECT * FROM Casualties_NDS

CREATE TABLE [Sex_of_Driver_NDS]
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [ID_SexOfDriver] INT,
    [Name] varchar(50),
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME,
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES Sources_NDS(ID)
)
GO