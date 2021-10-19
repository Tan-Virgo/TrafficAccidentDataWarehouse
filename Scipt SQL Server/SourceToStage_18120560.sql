CREATE DATABASE [Stage]
GO

USE [Stage]
GO

---------
CREATE TABLE [Junction_Control] (
	[ID_ JunctionControl] varchar(50),
	[Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate())


CREATE TABLE [Junction_Detail] (
	[ID_JunctionDetail] varchar(50),
	[Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)


CREATE TABLE [Junction_Location] (
	[ID_JunctionLocation] varchar(50),
	[Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)


CREATE TABLE [Light_Conditions] (
	[ID_LightConditions] varchar(50),
	[Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)


CREATE TABLE [Local_Authority_District] (
	[ID_LocalAuthorityDistrict] varchar(50),
	[Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)


CREATE TABLE [Local_Authority_Highway] (
	[ID_LocalAuthorityHighway] varchar(50),
	[Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)


CREATE TABLE [Ped_Cross_Human] (
	[ID_PedCrossHuman] varchar(50),
	[Name] varchar(50),
	[Create_timestamp] datetime default getdate(),
    [Update_timestamp] datetime default getdate()
)