CREATE DATABASE [UK_CAR_Accident]
go
USE [UK_CAR_Accident]
GO
/****** Object:  Table [Accident_Severity]    Script Date: 08/11/2021 8:08:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Accident_Severity](
	[ID_AccidentSeverity] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Accidents]    Script Date: 08/11/2021 8:08:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Accidents](
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
	[LSOA_of_Accident_Location] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Age_Band]    Script Date: 08/11/2021 8:08:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Age_Band](
	[ID_AgeBand] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Casualties]    Script Date: 08/11/2021 8:08:34 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Casualties](
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
	[Casualty_Home_Area_Type] [int] NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Casualty_Class]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Casualty_Class](
	[ID_CasualtyClass] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Casualty_Severity]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Casualty_Severity](
	[ID_CasualtySeverity] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Casualty_Type]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Casualty_Type](
	[ID_CasualtyType] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Day_of_Week]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Day_of_Week](
	[ID_DayofWeek] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Journey_Purpose]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Journey_Purpose](
	[ID_JourneyPurpose] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Junction_Control]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Junction_Control](
	[ID_ JunctionControl] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Junction_Detail]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Junction_Detail](
	[ID_JunctionDetail] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Junction_Location]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Junction_Location](
	[ID_JunctionLocation] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Light_Conditions]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Light_Conditions](
	[ID_LightConditions] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Local_Authority_District]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Local_Authority_District](
	[ID_LocalAuthorityDistrict] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Local_Authority_Highway]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Local_Authority_Highway](
	[ID_LocalAuthorityHighway] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Ped_Cross_Human]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ped_Cross_Human](
	[ID_PedCrossHuman] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Ped_Cross_Physical]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ped_Cross_Physical](
	[ID_PedCrossPhysical] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Ped_Location]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ped_Location](
	[ID_PedLocation] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Ped_Movement]    Script Date: 08/11/2021 8:08:35 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ped_Movement](
	[ID_PedMovement] [int] NULL,
	[Name] [varchar](100) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Point_of_Impact]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Point_of_Impact](
	[ID_PointofImpact] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Police_Force]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Police_Force](
	[ID_PoliceForce] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Police_Officer_Attend]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Police_Officer_Attend](
	[ID_PoliceOfficerAttend] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Road_Accident_Safety_Data_Guide]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Road_Accident_Safety_Data_Guide](
	[ID_RoadAccidentSafetyDataGuide] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Road_Class]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Road_Class](
	[ID_RoadClass] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Road_Type]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Road_Type](
	[ID_RoadType] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sex_of_Driver]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sex_of_Driver](
	[ID_SexOfDriver] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Urban_Rural]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Urban_Rural](
	[ID_UrbanRural] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle](
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
	[Driver_Home_Area_Type] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle_Location]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle_Location](
	[ID_VehicleLocation] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle_Manoeuvre]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle_Manoeuvre](
	[ID_VehicleManoeuvre] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle_Type]    Script Date: 08/11/2021 8:08:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle_Type](
	[ID_VehicleType] [int] NULL,
	[Name] [varchar](50) NULL,
	[Create_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Accident_Severity] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Accident_Severity] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Accidents] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Accidents] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Age_Band] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Age_Band] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Casualties] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Casualties] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Casualty_Class] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Casualty_Class] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Casualty_Severity] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Casualty_Severity] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Casualty_Type] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Casualty_Type] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Day_of_Week] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Day_of_Week] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Journey_Purpose] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Journey_Purpose] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Junction_Control] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Junction_Control] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Junction_Detail] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Junction_Detail] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Junction_Location] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Junction_Location] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Light_Conditions] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Light_Conditions] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Local_Authority_District] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Local_Authority_District] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Local_Authority_Highway] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Local_Authority_Highway] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Ped_Cross_Human] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Ped_Cross_Human] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Ped_Cross_Physical] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Ped_Cross_Physical] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Ped_Location] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Ped_Location] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Ped_Movement] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Ped_Movement] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Point_of_Impact] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Point_of_Impact] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Police_Force] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Police_Force] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Police_Officer_Attend] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Police_Officer_Attend] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Road_Accident_Safety_Data_Guide] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Road_Accident_Safety_Data_Guide] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Road_Class] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Road_Class] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Road_Type] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Road_Type] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Sex_of_Driver] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Sex_of_Driver] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Urban_Rural] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Urban_Rural] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Vehicle] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Vehicle] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Vehicle_Location] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Vehicle_Location] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Vehicle_Manoeuvre] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Vehicle_Manoeuvre] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
ALTER TABLE [Vehicle_Type] ADD  DEFAULT (getdate()) FOR [Create_Timestamp]
GO
ALTER TABLE [Vehicle_Type] ADD  DEFAULT (getdate()) FOR [Update_Timestamp]
GO
