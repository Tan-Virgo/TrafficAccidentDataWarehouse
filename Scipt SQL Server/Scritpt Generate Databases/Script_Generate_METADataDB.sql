Create database [DB_MetaData]
GO
USE [DB_MetaData]
GO
/****** Object:  Table [dbo].[DataFlow]    Script Date: 08/11/2021 8:15:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataFlow](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LSET] [datetime] NULL,
	[Source] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DataFlow] ON 

INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (34, N'Accident_Severity', CAST(N'2021-11-08T19:35:24.470' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (35, N'Age_Band', CAST(N'2021-11-08T19:35:25.463' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (36, N'Casualty_Class', CAST(N'2021-11-08T19:35:24.570' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (37, N'Casualty_Severity', CAST(N'2021-11-08T19:35:25.330' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (38, N'Journey_Purpose', CAST(N'2021-11-08T19:35:25.437' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (39, N'Day_of_Week', CAST(N'2021-11-08T19:35:25.623' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (40, N'Casualty_Type', CAST(N'2021-11-08T19:35:24.963' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (41, N'Casualties', CAST(N'2021-11-08T19:35:43.863' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (42, N'Accidents', CAST(N'2021-11-08T19:35:47.363' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (43, N'Junction_Control ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (44, N'Junction_Detail', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (45, N'Junction_Location ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (46, N'Light_Conditions ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (47, N'Local_Authority_District ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (48, N'Local_Authority_Highway', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (49, N'Ped_Cross_Human', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (50, N'UK_Postcode ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_Postcode')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (51, N'LSOA_Postcode_Mapping ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'LSOA_Postcode_Mapping')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (52, N'Ped_Cross_Physical ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (53, N'Ped_Location', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (54, N'Ped_Movement ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (55, N'Point_of_Impact ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (56, N'Police_Force', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (57, N'Police_Officer_Attend', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (58, N'Road_Class ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (59, N'Road_Type', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (60, N'Road_Accident_Safety_Data_Guide', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (61, N'Sex_of_Driver', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (62, N'Urban_Rural ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (63, N'Vehicle_Location', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (64, N'Vehicle_Manoeuvre ', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (65, N'Vehicle_Type', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
INSERT [dbo].[DataFlow] ([ID], [Name], [LSET], [Source]) VALUES (66, N'Vehicle', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'UK_CAR_Accident')
SET IDENTITY_INSERT [dbo].[DataFlow] OFF
