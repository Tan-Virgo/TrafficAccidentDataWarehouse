

Create database [DB_Stage]
GO
USE [DB_Stage]
GO
/****** Object:  Table [dbo].[Accident_Severity]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Severity](
	[ID_AccidentSeverity] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accidents]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accidents](
	[Accident_Index] [varchar](50) NULL,
	[Location_Easting_OSGR] [varchar](50) NULL,
	[Location_Northing_OSGR] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Police_Force] [int] NULL,
	[Accident_Severity] [int] NULL,
	[Number_of_Vehicles] [varchar](50) NULL,
	[Number_of_Casualties] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Day_of_Week] [int] NULL,
	[Time] [varchar](50) NULL,
	[Local_Authority_(District)] [int] NULL,
	[Local_Authority_(Highway)] [varchar](50) NULL,
	[1st_Road_Class] [int] NULL,
	[1st_Road_Number] [varchar](50) NULL,
	[Road_Type] [int] NULL,
	[Speed_limit] [varchar](50) NULL,
	[Junction_Detail] [int] NULL,
	[Junction_Control] [int] NULL,
	[2nd_Road_Class] [int] NULL,
	[2nd_Road_Number] [varchar](50) NULL,
	[Pedestrian_Crossing-Human_Control] [int] NULL,
	[Pedestrian_Crossing-Physical_Facilities] [int] NULL,
	[Light_Conditions] [int] NULL,
	[Weather_Conditions] [varchar](50) NULL,
	[Road_Surface_Conditions] [varchar](50) NULL,
	[Special_Conditions_at_Site] [varchar](50) NULL,
	[Carriageway_Hazards] [varchar](50) NULL,
	[Urban_or_Rural_Area] [int] NULL,
	[Did_Police_Officer_Attend_Scene_of_Accident] [int] NULL,
	[LSOA_of_Accident_Location] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_Band]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_Band](
	[ID_AgeBand] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualties]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualties](
	[Accident_Index] [varchar](100) NULL,
	[Vehicle_Reference] [int] NULL,
	[Casualty_Reference] [int] NULL,
	[Casualty_Class] [int] NULL,
	[Sex_of_Casualty] [int] NULL,
	[Age_of_Casualty] [int] NULL,
	[Age_Band_of_Casualty] [int] NULL,
	[Casualty_Severity] [int] NULL,
	[Pedestrian_Location] [int] NULL,
	[Pedestrian_Movement] [int] NULL,
	[Car_Passenger] [int] NULL,
	[Bus_or_Coach_Passenger] [int] NULL,
	[Pedestrian_Road_Maintenance_Worker] [int] NULL,
	[Casualty_Type] [int] NULL,
	[Casualty_Home_Area_Type] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Class]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Class](
	[ID_CasualtyClass] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Severity]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Severity](
	[ID_CasualtySeverity] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Type]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Type](
	[ID_CasualtyType] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Day_of_Week]    Script Date: 08/11/2021 8:14:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Day_of_Week](
	[ID_DayofWeek] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journey_Purpose]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journey_Purpose](
	[ID_JourneyPurpose] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Junction_Control]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Junction_Control](
	[ID_ JunctionControl] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Junction_Detail]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Junction_Detail](
	[ID_JunctionDetail] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Junction_Location]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Junction_Location](
	[ID_JunctionLocation] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Light_Conditions]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Light_Conditions](
	[ID_LightConditions] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local_Authority_District]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local_Authority_District](
	[ID_LocalAuthorityDistrict] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local_Authority_Highway]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local_Authority_Highway](
	[ID_LocalAuthorityHighway] [varchar](50) NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LSOA_Postcode_Mapping]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LSOA_Postcode_Mapping](
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
	[ladnmw] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ped_Cross_Human]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ped_Cross_Human](
	[ID_PedCrossHuman] [varchar](50) NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ped_Cross_Physical]    Script Date: 08/11/2021 8:14:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ped_Cross_Physical](
	[ID_PedCrossPhysical] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ped_Location]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ped_Location](
	[ID_PedLocation] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ped_Movement]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ped_Movement](
	[ID_PedMovement] [int] NULL,
	[Name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point_of_Impact]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point_of_Impact](
	[ID_PointofImpact] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Police_Force]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Police_Force](
	[ID_PoliceForce] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Police_Officer_Attend]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Police_Officer_Attend](
	[ID_PoliceOfficerAttend] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Road_Accident_Safety_Data_Guide]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Road_Accident_Safety_Data_Guide](
	[ID_RoadAccidentSafetyDataGuide] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Road_Class]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Road_Class](
	[ID_RoadClass] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Road_Type]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Road_Type](
	[ID_RoadType] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex_of_Driver]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex_of_Driver](
	[ID_SexOfDriver] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UK_Postcode]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UK_Postcode](
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
	[region_name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urban_Rural]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urban_Rural](
	[ID_UrbanRural] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Accident_Index] [varchar](50) NULL,
	[Vehicle_Reference] [varchar](50) NULL,
	[Vehicle_Type] [int] NULL,
	[Towing_and_Articulation] [varchar](50) NULL,
	[Vehicle_Manoeuvre] [int] NULL,
	[Vehicle_Location-Restricted_Lane] [int] NULL,
	[Junction_Location] [int] NULL,
	[Skidding_and_Overturning] [varchar](50) NULL,
	[Hit_Object_in_Carriageway] [varchar](50) NULL,
	[Vehicle_Leaving_Carriageway] [varchar](50) NULL,
	[Hit_Object_off_Carriageway] [varchar](50) NULL,
	[1st_Point_of_Impact] [int] NULL,
	[Was_Vehicle_Left_Hand_Drive?] [varchar](50) NULL,
	[Journey_Purpose_of_Driver] [int] NULL,
	[Sex_of_Driver] [int] NULL,
	[Age_of_Driver] [varchar](50) NULL,
	[Age_Band_of_Driver] [int] NULL,
	[Engine_Capacity_(CC)] [varchar](50) NULL,
	[Propulsion_Code] [varchar](50) NULL,
	[Age_of_Vehicle] [varchar](50) NULL,
	[Driver_IMD_Decile] [varchar](50) NULL,
	[Driver_Home_Area_Type] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Location]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Location](
	[ID_VehicleLocation] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Manoeuvre]    Script Date: 08/11/2021 8:14:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Manoeuvre](
	[ID_VehicleManoeuvre] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Type]    Script Date: 08/11/2021 8:14:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Type](
	[ID_VehicleType] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
