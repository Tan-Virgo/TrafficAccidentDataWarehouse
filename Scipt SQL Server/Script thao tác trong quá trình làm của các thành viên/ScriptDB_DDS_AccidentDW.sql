USE [DB_MetaData]
GO

-- DROP TABLE [DB_DDS_AccidentDW]
CREATE TABLE [DB_DDS_AccidentDW]
(
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	TableName NVARCHAR(50),
	LSET DATETIME
)
GO

INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Accident_Severity', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Accidents', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Age_Band', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Casualty_Severity', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Casualty_Type', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('City', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Country', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('County', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Journey_Purpose', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Local_Authority_District', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('LSOA_Postcode_Mapping', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Region', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Road_Type', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Sources', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('UK_Postcode', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Urban_Rural', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Vehicle_Type', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('QuarterInYear', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('MonthInQuarter', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('DayInMonth', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('TimeInDay', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Speed', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Age', '1/1/2021')
INSERT INTO [DB_DDS_AccidentDW] (TableName, LSET)
VALUES ('Sex_of_Driver', '1/1/2021')



-- SELECT * FROM [DB_DDS_AccidentDW]


CREATE DATABASE [DB_DDS_AccidentDW]
GO

USE [DB_DDS_AccidentDW]
GO

CREATE TABLE [dim_Speed]
(
	ID_Speed INT IDENTITY (1, 1) PRIMARY KEY,
	Speed INT
)
GO

CREATE TABLE [dim_AgeOfCasualty]
(
	ID_AgeOfCasualty INT IDENTITY (1, 1) PRIMARY KEY,
	AgeOfCasualty INT
)
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


CREATE TABLE [dim_Country]
(
	[ID] INT PRIMARY KEY,
	[country_code] VARCHAR(50),
    [country_name] VARCHAR(50),
	[SourceID] INT

)
GO


CREATE TABLE [dim_Region]
(
	[ID] INT PRIMARY KEY,
	[region_code] VARCHAR(50),
    [region_name] VARCHAR(50),
	[ID_Country] INT,
	[SourceID] INT,

	FOREIGN KEY ([ID_Country]) REFERENCES [dim_Country]([ID])
)
GO


CREATE TABLE [dim_County]
(
	[ID] INT PRIMARY KEY,
    [county_name] VARCHAR(50),
	[ID_Region] INT,
	[SourceID] INT,
	
	FOREIGN KEY ([ID_Region]) REFERENCES [dim_Region]([ID])
)
GO

CREATE TABLE [dim_City]
(
	[ID] INT PRIMARY KEY,
    [city_name] VARCHAR(50),
	[ID_County] INT,
	[SourceID] INT,

	FOREIGN KEY ([ID_County]) REFERENCES [dim_County]([ID])
)
GO

CREATE TABLE [dim_Accident_Severity] 
(
	[ID] INT PRIMARY KEY,
	[ID_AccidentSeverity] INT,
	[Name] varchar(50),
	SourceID INT,

)
GO

CREATE TABLE [dim_Age_Band] 
(
	[ID] INT PRIMARY KEY,
    [ID_AgeBand] INT,
    [Name] varchar(50),
	SourceID INT,
)
GO


CREATE TABLE [dim_Casualty_Severity] 
(
	[ID] INT PRIMARY KEY,
    [ID_CasualtySeverity] INT,
    [Name] varchar(50),
	SourceID INT,
)
GO

CREATE TABLE [dim_Journey_Purpose] 
(
	[ID] INT PRIMARY KEY,
    [ID_JourneyPurpose] INT,
    [Name] varchar(50),
	SourceID INT,
)
GO


CREATE TABLE [dim_Casualty_Type] 
(
	[ID] INT PRIMARY KEY,
    [ID_CasualtyType]INT,
    [Name] varchar(50),
	SourceID INT,
)
GO

CREATE TABLE [dim_Local_Authority_District] 
(
	[ID] INT PRIMARY KEY,
	[ID_LocalAuthorityDistrict] int,
	[Name] varchar(50),
	SourceID INT,
)
GO


CREATE TABLE [dim_Road_Type] 
(
	[ID] INT PRIMARY KEY,
    [ID_RoadType] INT,
    [Name] varchar(50),
	SourceID INT,
)
GO

CREATE TABLE [dim_Urban_Rural] 
(
	[ID] INT PRIMARY KEY,
    [ID_UrbanRural] INT,
    [Name] varchar(50),
	SourceID INT,
)
GO

CREATE TABLE [dim_Vehicle_Type] 
(
	[ID] INT PRIMARY KEY,
    [ID_VehicleType] INT,
    [Name] varchar(50),
	SourceID INT,
)
GO

CREATE TABLE [dim_Sex_of_Driver]
(
	[ID] INT PRIMARY KEY,
    [ID_SexOfDriver] INT,
    [Name] varchar(50),
	SourceID INT,
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

	CONSTRAINT FK_City FOREIGN KEY (ID_City) REFERENCES [dim_City]([ID])
)
GO

CREATE TABLE [dim_LSOA_Postcode_Mapping] 
(
	ID INT PRIMARY KEY,
    [LSOA_code] VARCHAR(50),
	[LSOA_name] VARCHAR(50),
	[Postcode] INT,
	[SourceID] INT,
	FOREIGN KEY ([Postcode]) REFERENCES [dim_UK_Postcode]([ID])
)
------------------------------------------------------------------

-- DROP TABLE [fact_Accidents]
CREATE TABLE [fact_Accidents] 
(
	[ID_Fact] INT IDENTITY(1, 1) PRIMARY KEY,
    [Accident_Index] VARCHAR(50),
    [Location_Easting_OSGR] INT,
    [Location_Northing_OSGR] INT,
    [Longitude] FLOAT,
    [Latitude] FLOAT,
	[Number_of_Casualty] INT,
	[Number_of_Vehicle] INT,

	[ID_Speed] INT,
    [ID_AccidentSeverity] INT,
    [ID_TimeInDay] INT,
    [ID_LocalAuthorityDistrict] INT,
	[ID_UrbanRural] INT,
	[ID_CasualtySeverity] INT,
	[ID_SexOfDriver] INT,
	[ID_CasualtyType] INT,
	[ID_AgeBand] INT,
	[ID_RoadType]  INT,
	[ID_AgeOfCasualty] INT,
	[ID_JourneyPurpose] INT,
	[ID_VehicleType] INT,
    [ID_LSOA] INT,
	SourceID INT,
	
	FOREIGN KEY ([ID_AccidentSeverity]) REFERENCES dim_Accident_Severity(ID),
	FOREIGN KEY ([ID_TimeInDay]) REFERENCES dim_TimeInDay(ID_TimeInDay),
	FOREIGN KEY ([ID_LocalAuthorityDistrict]) REFERENCES dim_Local_Authority_District(ID),
	FOREIGN KEY ([ID_UrbanRural]) REFERENCES dim_Urban_Rural(ID),
	FOREIGN KEY ([ID_CasualtySeverity]) REFERENCES dim_Casualty_Severity(ID),
	FOREIGN KEY ([ID_SexOfDriver]) REFERENCES dim_Sex_of_Driver(ID),
	FOREIGN KEY ([ID_CasualtyType]) REFERENCES dim_Casualty_Type(ID),
	FOREIGN KEY ([ID_AgeBand]) REFERENCES dim_Age_Band(ID),
	FOREIGN KEY ([ID_RoadType]) REFERENCES dim_Road_Type(ID),
	FOREIGN KEY ([ID_AgeOfCasualty]) REFERENCES dim_AgeOfCasualty(ID_AgeOfCasualty),	
	FOREIGN KEY ([ID_JourneyPurpose]) REFERENCES dim_Journey_Purpose(ID),
	FOREIGN KEY ([ID_VehicleType]) REFERENCES dim_Vehicle_Type(ID),
	FOREIGN KEY ([ID_LSOA]) REFERENCES dim_LSOA_Postcode_Mapping(ID)
)
GO

ALTER TABLE fact_Accidents ADD
CONSTRAINT FK_Speed FOREIGN KEY (ID_Speed) REFERENCES dim_Speed(ID_Speed)


USE DB_DDS_AccidentDW
SELECT * FROM fact_Accidents


ALTER TABLE dim_TimeInDay ADD PeriodInDay NVARCHAR(50)
ALTER TABLE dim_AgeOfCasualty ADD AgeGroup NVARCHAR(50)
ALTER TABLE dim_Speed ADD BuiltUpRoad NVARCHAR(50)


-- Hàm cập nhật các buổi trong ngày
CREATE FUNCTION F_Update_PeriodInDay (@Time TIME)
RETURNS NVARCHAR(50)
AS
BEGIN
	DECLARE @KQ NVARCHAR(100) = ''
	
	IF (@Time >= '5:00' AND @Time < '12:00')
		SET @KQ = N'Morning'
	ELSE IF (@Time >= '12:00' AND @Time < '17:00')
		SET @KQ = N'Afternoon'
	ELSE IF (@Time >= '17:00' AND @Time < '21:00')
		SET @KQ = N'Evening'
	ELSE
		SET @KQ = N'Night'
	RETURN @KQ
END
GO

-- Hàm cập nhật Nhóm tuổi
CREATE FUNCTION F_Update_AgeGroup (@Age INT)
RETURNS NVARCHAR(50)
AS
BEGIN
	DECLARE @KQ NVARCHAR(100) = ''
	
	IF (@Age >= 0 AND @Age <= 15)
		SET @KQ = N'Children'
	ELSE IF (@Age >= 16 AND @Age <= 17)
		SET @KQ = N'Young adult'
	ELSE IF (@Age >= 18 AND @Age <= 59)
		SET @KQ = N'Adult'
	ELSE IF (@Age >= 60)
		SET @KQ = N'60 and over'
	ELSE 
		SET @KQ = N'Unknown'
	RETURN @KQ
END
GO


-- Hàm cập nhật BuiltUpRoad
CREATE FUNCTION F_Update_BuiltUpRoad (@speed FLOAT)
RETURNS NVARCHAR(50)
AS
BEGIN
	DECLARE @KQ NVARCHAR(100) = ''
	
	IF (@speed < 50)
		SET @KQ = N'Built-up Road'
	ELSE 
		SET @KQ = N'Non Built-up Road'
	RETURN @KQ
END
GO


UPDATE dim_TimeInDay SET PeriodInDay = dbo.F_Update_PeriodInDay(Time)
UPDATE dim_AgeOfCasualty SET AgeGroup = dbo.F_Update_AgeGroup(AgeOfCasualty)
UPDATE dim_Speed SET BuiltUpRoad = dbo.F_Update_BuiltUpRoad(Speed)

SELECT * FROM dim_TimeInDay
SELECT * FROM dim_AgeOfCasualty
SELECT * FROM dim_Speed