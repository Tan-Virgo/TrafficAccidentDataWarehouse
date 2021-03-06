CREATE DATABASE [UK_Postcode]
go
USE [UK_Postcode]
GO
/****** Object:  Table [UK_Postcode]    Script Date: 08/11/2021 8:07:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [UK_Postcode](
	[postcode] [varchar](50) NULL,
	[easting] [varchar](50) NULL,
	[northing] [varchar](50) NULL,
	[latitude] [varchar](50) NULL,
	[longitude] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[county] [varchar](50) NULL,
	[country_code] [varchar](50) NULL,
	[country_name] [varchar](50) NULL,
	[iso3166-2] [varchar](50) NULL,
	[region_code] [varchar](50) NULL,
	[region_name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [UK_Postcode] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [UK_Postcode] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
