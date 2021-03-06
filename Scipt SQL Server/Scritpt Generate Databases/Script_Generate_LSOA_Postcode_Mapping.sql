CREATE DATABASE [LSOA_Postcode_Mapping]
go
USE [LSOA_Postcode_Mapping]
GO
/****** Object:  Table [LSOA_Postcode_Mapping]    Script Date: 08/11/2021 8:13:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LSOA_Postcode_Mapping](
	[pcd7] [varchar](50) NULL,
	[pcd8] [varchar](50) NULL,
	[pcds] [varchar](50) NULL,
	[dointr] [varchar](50) NULL,
	[doterm] [varchar](50) NULL,
	[usertype] [varchar](50) NULL,
	[oa11cd] [varchar](50) NULL,
	[lsoa11cd] [varchar](50) NULL,
	[msoa11cd] [varchar](50) NULL,
	[ladcd] [varchar](50) NULL,
	[lsoa11nm] [varchar](100) NULL,
	[msoa11nm] [varchar](100) NULL,
	[ladnm] [varchar](100) NULL,
	[ladnmw] [varchar](100) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [LSOA_Postcode_Mapping] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [LSOA_Postcode_Mapping] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
