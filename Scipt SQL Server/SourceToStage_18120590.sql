CREATE TABLE [Road_Type] (
    [ID_RoadType] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),

[Update_timestamp] datetime default getdate()
)
CREATE TABLE [Road_Accident_Safety_Data_Guide] (
    [ID_RoadAccidentSafetyDataGuide] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),

[Update_timestamp] datetime default getdate()
)
CREATE TABLE [Sex_of_Driver] (
    [ID_SexOfDriver] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),

[Update_timestamp] datetime default getdate()
)
CREATE TABLE [Urban_Rural] (
    [ID_UrbanRural] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()
)
CREATE TABLE [Vehicle_Location] (
    [ID_VehicleLocation] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()

)
CREATE TABLE [Vehicle_Manoeuvre] (
    [ID_VehicleManoeuvre] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()

)
CREATE TABLE [Vehicle_Type] (
    [ID_VehicleType] varchar(50),
    [Name] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()

)

CREATE TABLE [Vehicle] (
    [Accident_Index] varchar(50),
    [Vehicle_Reference] varchar(50),
    [Vehicle_Type] varchar(50),
    [Towing_and_Articulation] varchar(50),
    [Vehicle_Manoeuvre] varchar(50),
    [Vehicle_Location-Restricted_Lane] varchar(50),
    [Junction_Location] varchar(50),
    [Skidding_and_Overturning] varchar(50),
    [Hit_Object_in_Carriageway] varchar(50),
    [Vehicle_Leaving_Carriageway] varchar(50),
    [Hit_Object_off_Carriageway] varchar(50),
    [1st_Point_of_Impact] varchar(50),
    [Was_Vehicle_Left_Hand_Drive?] varchar(50),
    [Journey_Purpose_of_Driver] varchar(50),
    [Sex_of_Driver] varchar(50),
    [Age_of_Driver] varchar(50),
    [Age_Band_of_Driver] varchar(50),
    [Engine_Capacity_(CC)] varchar(50),
    [Propulsion_Code] varchar(50),
    [Age_of_Vehicle] varchar(50),
    [Driver_IMD_Decile] varchar(50),
    [Driver_Home_Area_Type] varchar(50),
[Create_timestamp] datetime default getdate(),
[Update_timestamp] datetime default getdate()

)