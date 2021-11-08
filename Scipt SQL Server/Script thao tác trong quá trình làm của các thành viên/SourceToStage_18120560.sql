CREATE DATABASE [Stage]
GO

USE [DB_Stage]
GO

---------
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