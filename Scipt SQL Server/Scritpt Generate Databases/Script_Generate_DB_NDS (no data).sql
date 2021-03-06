USE [DB_NDS]
GO
/****** Object:  Table [dbo].[Accident_Severity_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Severity_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_AccidentSeverity] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accidents_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accidents_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Index] [varchar](50) NULL,
	[Location_Easting_OSGR] [int] NULL,
	[Location_Northing_OSGR] [int] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[Accident_Severity] [int] NULL,
	[Date] [date] NULL,
	[Time] [varchar](50) NULL,
	[Local_Authority_(District)] [int] NULL,
	[Road_Type] [int] NULL,
	[Speed_limit] [float] NULL,
	[Urban_or_Rural_Area] [int] NULL,
	[LSOA_of_Accident_Location] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_Band_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_Band_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_AgeBand] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualties_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualties_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Vehicles] [int] NULL,
	[Accident_Index] [int] NULL,
	[Vehicle_Reference] [varchar](50) NULL,
	[Casualty_Reference] [int] NULL,
	[Age_Band_of_Casualty] [int] NULL,
	[Casualty_Severity] [int] NULL,
	[Casualty_Type] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Severity_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Severity_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_CasualtySeverity] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Type_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Type_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_CasualtyType] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [varchar](50) NULL,
	[SourceID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[country_code] [varchar](50) NULL,
	[country_name] [varchar](50) NULL,
	[SourceID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[county_name] [varchar](50) NULL,
	[SourceID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journey_Purpose_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journey_Purpose_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_JourneyPurpose] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local_Authority_District_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local_Authority_District_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_LocalAuthorityDistrict] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LSOA_Postcode_Mapping_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LSOA_Postcode_Mapping_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LSOA_code] [varchar](50) NULL,
	[LSOA_name] [varchar](50) NULL,
	[Postcode] [int] NULL,
	[SourceID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[region_code] [varchar](50) NULL,
	[region_name] [varchar](50) NULL,
	[SourceID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Road_Type_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Road_Type_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_RoadType] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sources_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sources_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameSource] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UK_Postcode_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UK_Postcode_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[postcode] [varchar](50) NULL,
	[easting] [int] NULL,
	[northing] [int] NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[city] [int] NULL,
	[county] [int] NULL,
	[country] [int] NULL,
	[iso3166_2] [varchar](50) NULL,
	[region] [int] NULL,
	[SourceID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urban_Rural_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urban_Rural_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_UrbanRural] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Type_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Type_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_VehicleType] [int] NULL,
	[Name] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles_NDS]    Script Date: 29/11/2021 12:28:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles_NDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Index] [int] NULL,
	[Vehicle_Reference] [varchar](50) NULL,
	[Vehicle_Type] [int] NULL,
	[Journey_Purpose_of_Driver] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SourceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accident_Severity_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Accidents_NDS]  WITH CHECK ADD FOREIGN KEY([Accident_Severity])
REFERENCES [dbo].[Accident_Severity_NDS] ([ID])
GO
ALTER TABLE [dbo].[Accidents_NDS]  WITH CHECK ADD FOREIGN KEY([Local_Authority_(District)])
REFERENCES [dbo].[Local_Authority_District_NDS] ([ID])
GO
ALTER TABLE [dbo].[Accidents_NDS]  WITH CHECK ADD FOREIGN KEY([LSOA_of_Accident_Location])
REFERENCES [dbo].[LSOA_Postcode_Mapping_NDS] ([ID])
GO
ALTER TABLE [dbo].[Accidents_NDS]  WITH CHECK ADD FOREIGN KEY([Road_Type])
REFERENCES [dbo].[Road_Type_NDS] ([ID])
GO
ALTER TABLE [dbo].[Accidents_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Accidents_NDS]  WITH CHECK ADD FOREIGN KEY([Urban_or_Rural_Area])
REFERENCES [dbo].[Urban_Rural_NDS] ([ID])
GO
ALTER TABLE [dbo].[Age_Band_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Casualties_NDS]  WITH CHECK ADD FOREIGN KEY([Age_Band_of_Casualty])
REFERENCES [dbo].[Age_Band_NDS] ([ID])
GO
ALTER TABLE [dbo].[Casualties_NDS]  WITH CHECK ADD FOREIGN KEY([Casualty_Severity])
REFERENCES [dbo].[Casualty_Severity_NDS] ([ID])
GO
ALTER TABLE [dbo].[Casualties_NDS]  WITH CHECK ADD FOREIGN KEY([Casualty_Type])
REFERENCES [dbo].[Casualty_Type_NDS] ([ID])
GO
ALTER TABLE [dbo].[Casualties_NDS]  WITH CHECK ADD FOREIGN KEY([ID_Vehicles])
REFERENCES [dbo].[Vehicles_NDS] ([ID])
GO
ALTER TABLE [dbo].[Casualties_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Casualty_Severity_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Casualty_Type_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[City_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Country_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[County_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Journey_Purpose_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Local_Authority_District_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[LSOA_Postcode_Mapping_NDS]  WITH CHECK ADD FOREIGN KEY([Postcode])
REFERENCES [dbo].[UK_Postcode_NDS] ([ID])
GO
ALTER TABLE [dbo].[LSOA_Postcode_Mapping_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Region_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Road_Type_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[UK_Postcode_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[UK_Postcode_NDS]  WITH CHECK ADD  CONSTRAINT [FK_City] FOREIGN KEY([city])
REFERENCES [dbo].[City_NDS] ([ID])
GO
ALTER TABLE [dbo].[UK_Postcode_NDS] CHECK CONSTRAINT [FK_City]
GO
ALTER TABLE [dbo].[UK_Postcode_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Country] FOREIGN KEY([country])
REFERENCES [dbo].[Country_NDS] ([ID])
GO
ALTER TABLE [dbo].[UK_Postcode_NDS] CHECK CONSTRAINT [FK_Country]
GO
ALTER TABLE [dbo].[UK_Postcode_NDS]  WITH CHECK ADD  CONSTRAINT [FK_County] FOREIGN KEY([county])
REFERENCES [dbo].[County_NDS] ([ID])
GO
ALTER TABLE [dbo].[UK_Postcode_NDS] CHECK CONSTRAINT [FK_County]
GO
ALTER TABLE [dbo].[UK_Postcode_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Region] FOREIGN KEY([region])
REFERENCES [dbo].[Region_NDS] ([ID])
GO
ALTER TABLE [dbo].[UK_Postcode_NDS] CHECK CONSTRAINT [FK_Region]
GO
ALTER TABLE [dbo].[Urban_Rural_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Vehicle_Type_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Vehicles_NDS]  WITH CHECK ADD FOREIGN KEY([Accident_Index])
REFERENCES [dbo].[Accidents_NDS] ([ID])
GO
ALTER TABLE [dbo].[Vehicles_NDS]  WITH CHECK ADD FOREIGN KEY([Journey_Purpose_of_Driver])
REFERENCES [dbo].[Journey_Purpose_NDS] ([ID])
GO
ALTER TABLE [dbo].[Vehicles_NDS]  WITH CHECK ADD FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources_NDS] ([ID])
GO
ALTER TABLE [dbo].[Vehicles_NDS]  WITH CHECK ADD FOREIGN KEY([Vehicle_Type])
REFERENCES [dbo].[Vehicle_Type_NDS] ([ID])
GO
