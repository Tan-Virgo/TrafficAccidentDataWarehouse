USE [DB_MetaData]
GO

-- DROP TABLE [DB_DDS]
CREATE TABLE [DB_DDS]
(
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	TableName NVARCHAR(50),
	LSET DATETIME
)
GO

INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Accident_Severity', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Accidents', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Age_Band', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Casualties', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Casualty_Severity', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Casualty_Type', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('City', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Country', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('County', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Journey_Purpose', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Local_Authority_District', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('LSOA_Postcode_Mapping', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Region', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Road_Type', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Sources', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('UK_Postcode', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Urban_Rural', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Vehicle_Type', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('Vehicles', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('QuarterInYear', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('MonthInQuarter', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('DayInMonth', '1/1/2021')
INSERT INTO [DB_DDS] (TableName, LSET)
VALUES ('TimeInDay', '1/1/2021')

-- SELECT * FROM [DB_DDS]


CREATE DATABASE [DB_DDS]
GO

USE [DB_DDS]
GO

--DBCC CHECKIDENT ([dim_QuarterInYear], RESEED, 0)
-- DROP TABLE [dim_QuarterInYear]
CREATE TABLE [dim_QuarterInYear]
(
	ID_QuarterInYear INT IDENTITY (1, 1) PRIMARY KEY,
	Quarter INT,
	Year INT,
)
GO

--DBCC CHECKIDENT ([dim_MonthInQuarter], RESEED, 0)
-- DELETE [dim_MonthInQuarter]
--SELECT * FROM [dim_QuarterInYear]
-- DROP TABLE [dim_MonthInQuarter]
CREATE TABLE [dim_MonthInQuarter]
(
	ID_MonthInQuarter INT IDENTITY (1, 1) PRIMARY KEY,
	Month INT,
	ID_QuarterInYear INT,

	FOREIGN KEY (ID_QuarterInYear) REFERENCES [dim_QuarterInYear] (ID_QuarterInYear)
)
GO

--DROP TABLE [dim_DayInMonth]
CREATE TABLE [dim_DayInMonth]
(
	ID_DayInMonth INT IDENTITY (1, 1) PRIMARY KEY,
	Day INT,
	ID_MonthInQuarter INT,

	FOREIGN KEY (ID_MonthInQuarter) REFERENCES [dim_MonthInQuarter] (ID_MonthInQuarter)
)
GO

-- DROP TABLE [dim_TimeInDay]
CREATE TABLE [dim_TimeInDay]
(
	ID_TimeInDay INT IDENTITY (1, 1) PRIMARY KEY,
	Time TIME,
	ID_DayInMonth INT,

	FOREIGN KEY (ID_DayInMonth) REFERENCES [dim_DayInMonth] (ID_DayInMonth)
)
GO

--SELECT * FROM [dim_QuarterInYear]
--SELECT * FROM [dim_MonthInQuarter]
--SELECT * FROM [dim_DayInMonth]
--SELECT * FROM [dim_TimeInDay]

CREATE TABLE dim_Sources
(
	ID INT PRIMARY KEY,
	NameSource NVARCHAR(50)
)
GO


CREATE TABLE [dim_Country]
(
	[ID] INT PRIMARY KEY,
	[country_code] VARCHAR(50),
    [country_name] VARCHAR(50),
	[SourceID] INT

	FOREIGN KEY ([SourceID]) REFERENCES [dim_Sources]([ID])
)
GO


CREATE TABLE [dim_Region]
(
	[ID] INT PRIMARY KEY,
	[region_code] VARCHAR(50),
    [region_name] VARCHAR(50),
	[ID_Country] INT,
	[SourceID] INT,

	FOREIGN KEY ([SourceID]) REFERENCES [dim_Sources]([ID]),
	FOREIGN KEY ([ID_Country]) REFERENCES [dim_Country]([ID])
)
GO


CREATE TABLE [dim_County]
(
	[ID] INT PRIMARY KEY,
    [county_name] VARCHAR(50),
	[ID_Region] INT,
	[SourceID] INT,
	

	FOREIGN KEY ([SourceID]) REFERENCES [dim_Sources]([ID]),
	FOREIGN KEY ([ID_Region]) REFERENCES [dim_Region]([ID])
)
GO

CREATE TABLE [dim_City]
(
	[ID] INT PRIMARY KEY,
    [city_name] VARCHAR(50),
	[ID_County] INT,
	[SourceID] INT,

	FOREIGN KEY ([SourceID]) REFERENCES [dim_Sources]([ID]),
	FOREIGN KEY ([ID_County]) REFERENCES [dim_County]([ID])
)
GO

CREATE TABLE [dim_Accident_Severity] 
(
	[ID] INT PRIMARY KEY,
	[ID_AccidentSeverity] INT,
	[Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO

CREATE TABLE [dim_Age_Band] 
(
	[ID] INT PRIMARY KEY,
    [ID_AgeBand] INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO


CREATE TABLE [dim_Casualty_Severity] 
(
	[ID] INT PRIMARY KEY,
    [ID_CasualtySeverity] INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO

CREATE TABLE [dim_Journey_Purpose] 
(
	[ID] INT PRIMARY KEY,
    [ID_JourneyPurpose] INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO


CREATE TABLE [dim_Casualty_Type] 
(
	[ID] INT PRIMARY KEY,
    [ID_CasualtyType]INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO

CREATE TABLE [dim_Local_Authority_District] 
(
	[ID] INT PRIMARY KEY,
	[ID_LocalAuthorityDistrict] int,
	[Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO


CREATE TABLE [dim_Road_Type] 
(
	[ID] INT PRIMARY KEY,
    [ID_RoadType] INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO

CREATE TABLE [dim_Urban_Rural] 
(
	[ID] INT PRIMARY KEY,
    [ID_UrbanRural] INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO

CREATE TABLE [dim_Vehicle_Type] 
(
	[ID] INT PRIMARY KEY,
    [ID_VehicleType] INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO
-------------------------------------------------

CREATE TABLE [dim_UK_Postcode]
(
	ID INT PRIMARY KEY,
	[postcode] VARCHAR(50),
    [easting] INT,
    [northing] INT,
    [latitude] FLOAT,
    [longitude] FLOAT,
    [ID_City] INT,
    [iso3166_2] VARCHAR(50),
	[SourceID] INT,

	CONSTRAINT FK_City FOREIGN KEY (ID_City) REFERENCES [dim_City]([ID]),
	FOREIGN KEY ([SourceID]) REFERENCES [dim_Sources]([ID])
)
GO

CREATE TABLE [dim_LSOA_Postcode_Mapping] 
(
	ID INT PRIMARY KEY,
    [LSOA_code] VARCHAR(50),
	[LSOA_name] VARCHAR(50),
	[Postcode] INT,
	[SourceID] INT,

	FOREIGN KEY ([SourceID]) REFERENCES [dim_Sources]([ID]),
	FOREIGN KEY ([Postcode]) REFERENCES [dim_UK_Postcode]([ID])
)
------------------------------------------------------------------

-- DROP TABLE [fact_Accidents]
CREATE TABLE [fact_Accidents] 
(
	[ID] INT PRIMARY KEY,
    [Accident_Index] VARCHAR(50),
    [Location_Easting_OSGR] INT,
    [Location_Northing_OSGR] INT,
    [Longitude] FLOAT,
    [Latitude] FLOAT,
    [Accident_Severity] INT,
    [TimeInDay] INT,
    [Local_Authority_(District)] INT,
    [Road_Type] INT,
    [Speed_limit] FLOAT,
    [Urban_or_Rural_Area] INT,
    [LSOA_of_Accident_Location] INT,
	SourceID INT,
	
	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID),
	FOREIGN KEY ([Accident_Severity]) REFERENCES [dim_Accident_Severity](ID),
	FOREIGN KEY ([Local_Authority_(District)]) REFERENCES [dim_Local_Authority_District](ID),
	FOREIGN KEY ([Road_Type]) REFERENCES [dim_Road_Type](ID),
	FOREIGN KEY ([Urban_or_Rural_Area]) REFERENCES [dim_Urban_Rural](ID),
	FOREIGN KEY ([LSOA_of_Accident_Location]) REFERENCES [dim_LSOA_Postcode_Mapping](ID),
	FOREIGN KEY ([TimeInDay]) REFERENCES [dim_TimeInDay](ID_TimeInDay)
)
GO

--DROP TABLE [fact_Vehicles]
CREATE TABLE [fact_Vehicles] 
(
	[ID] INT PRIMARY KEY,
	[ID_Accident] INT,
    [Accident_Index] VARCHAR(50),
    [Vehicle_Reference] VARCHAR(50),
    [Vehicle_Type] INT,
    [Journey_Purpose_of_Driver] INT,
	SourceID INT,
	
	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID),
	FOREIGN KEY ([ID_Accident]) REFERENCES [fact_Accidents](ID),
	FOREIGN KEY ([Vehicle_Type]) REFERENCES [dim_Vehicle_Type](ID),
	FOREIGN KEY ([Journey_Purpose_of_Driver]) REFERENCES [dim_Journey_Purpose](ID)
)
GO

--DROP TABLE [fact_Casualties]
CREATE TABLE [fact_Casualties] 
(
	[ID] INT PRIMARY KEY,
    [ID_Vehicles] INT,
	[Accident_Index] VARCHAR(50),
    [Vehicle_Reference] VARCHAR(50),
    [Casualty_Reference] VARCHAR(50),
    [Age_Band_of_Casualty] INT,
    [Casualty_Severity] INT,
    [Casualty_Type] INT,
	[Sex_of_Casualty] INT,
	SourceID INT,
	
	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID),
	FOREIGN KEY ([ID_Vehicles]) REFERENCES [fact_Vehicles](ID),
	FOREIGN KEY ([Age_Band_of_Casualty]) REFERENCES [dim_Age_Band](ID),
	FOREIGN KEY ([Casualty_Severity]) REFERENCES [dim_Casualty_Severity](ID),
	FOREIGN KEY ([Casualty_Type]) REFERENCES [dim_Casualty_Type](ID),
	FOREIGN KEY ([Sex_of_Casualty]) REFERENCES [dim_Sex_of_Driver](ID)
)
GO

CREATE TABLE [dim_Sex_of_Driver]
(
	[ID] INT PRIMARY KEY,
    [ID_SexOfDriver] INT,
    [Name] varchar(50),
	SourceID INT,

	FOREIGN KEY (SourceID) REFERENCES dim_Sources(ID)
)
GO


-- 1. Thi
--==> Vô package: NDSToDDS_dim Reference Table not Foreign key - 1
--dim_Accident_Severity
--dim_Age_Band
--dim_Casualty_Severity
--dim_Casualty_Type
--dim_City
--dim_Country
--dim_County
--dim_Journey_Purpose

-- 2. Tiến
--==> Vô package: NDSToDDS_dim Reference Table not Foreign key - 2
--dim_Local_Authority_District
--dim_Region
--dim_Road_Type
--dim_Urban_Rural
--dim_Vehicle_Type
--dim_UK_Postcode 
--==> Vô package: NDSToDDS_dim_LSOA_Postcode_Mapping
--dim_LSOA_Postcode_Mapping (khóa ngoại đến UK_Postcode)

-- 3. Tần
--dim_Sources
--dim_DayInMonth
--dim_MonthInQuarter
--dim_QuarterInYear
--dim_TimeInDay
--fact_Accidents 

-- 4. Thanh
--=> Vô 2 package: NDSToDDS_fact_Casualties, NDSToDDS_fact_Vehicles
--fact_Casualties (Khóa ngoại)
--fact_Vehicles (Khóa ngoại)
