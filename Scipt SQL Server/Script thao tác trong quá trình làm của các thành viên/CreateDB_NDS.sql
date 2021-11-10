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
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID])
)
GO
INSERT INTO [Region_NDS] (region_code, region_name, SourceID, CreatedDate, UpdatedDate)
VALUES ('', '', 2, '1/1/2021', '1/1/2021')

--DELETE [City_NDS]
--DROP TABLE [City_NDS]
CREATE TABLE [City_NDS]
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [city_name] VARCHAR(50),
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID])
)
GO
INSERT INTO [City_NDS] (city_name, SourceID, CreatedDate, UpdatedDate) 
VALUES ('', 2, '1/1/2021', '1/1/2021')



--DELETE [County_NDS]
--DROP TABLE [County_NDS]
CREATE TABLE [County_NDS]
(
	[ID] INT IDENTITY(1, 1) PRIMARY KEY,
    [county_name] VARCHAR(50),
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID])
)
GO
INSERT INTO [County_NDS] (county_name, SourceID, CreatedDate, UpdatedDate)
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
    [city] INT,
    [county] INT,
    [country] INT,
    [iso3166_2] VARCHAR(50),
	[region] INT,
	[SourceID] INT,
	[CreatedDate] DATETIME,
	[UpdatedDate] DATETIME

	CONSTRAINT FK_Country FOREIGN KEY ([country]) REFERENCES [Country_NDS]([ID]),
	CONSTRAINT FK_Region FOREIGN KEY ([region]) REFERENCES [Region_NDS]([ID]),
	CONSTRAINT FK_City FOREIGN KEY (city) REFERENCES [City_NDS]([ID]),
	CONSTRAINT FK_County FOREIGN KEY ([county]) REFERENCES [County_NDS]([ID]),
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
	[SourceID] INT,
	CreatedDate DATETIME,
	UpdatedDate DATETIME

	FOREIGN KEY ([SourceID]) REFERENCES [Sources_NDS]([ID]),
)

--DELETE [Accident_Severity]
--DROP TABLE [Accident_Severity]
CREATE TABLE [Accident_Severity] 
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
CREATE TABLE [Age_Band] 
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
CREATE TABLE [Casualty_Severity] 
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
CREATE TABLE [Journey_Purpose] 
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
CREATE TABLE [Casualty_Type] 
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
CREATE TABLE [Local_Authority_District] 
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
CREATE TABLE [Road_Type] 
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
CREATE TABLE [Urban_Rural] 
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
CREATE TABLE [Vehicle_Type] 
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
