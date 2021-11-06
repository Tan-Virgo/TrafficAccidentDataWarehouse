CREATE TABLE [Road_Type] (
    [ID_RoadType] INT,
    [Name] varchar(50)
)

CREATE TABLE [Road_Accident_Safety_Data_Guide] (
    [ID_RoadAccidentSafetyDataGuide] INT,
    [Name] varchar(50)
)

CREATE TABLE [Sex_of_Driver] (
    [ID_SexOfDriver] INT,
    [Name] varchar(50)
)

CREATE TABLE [Urban_Rural] (
    [ID_UrbanRural] INT,
    [Name] varchar(50)
)
CREATE TABLE [Vehicle_Location] (
    [ID_VehicleLocation] INT,
    [Name] varchar(50)

)
CREATE TABLE [Vehicle_Manoeuvre] (
    [ID_VehicleManoeuvre] INT,
    [Name] varchar(50)

)
CREATE TABLE [Vehicle_Type] (
    [ID_VehicleType] INT,
    [Name] varchar(50)
)

CREATE TABLE [Vehicle] (
    [Accident_Index] varchar(50),
    [Vehicle_Reference] varchar(50),
    [Vehicle_Type] INT,
    [Towing_and_Articulation] varchar(50),
    [Vehicle_Manoeuvre] INT,
    [Vehicle_Location-Restricted_Lane] INT,
    [Junction_Location] INT,
    [Skidding_and_Overturning] varchar(50),
    [Hit_Object_in_Carriageway] varchar(50),
    [Vehicle_Leaving_Carriageway] varchar(50),
    [Hit_Object_off_Carriageway] varchar(50),
    [1st_Point_of_Impact] INT,
    [Was_Vehicle_Left_Hand_Drive?] varchar(50),
    [Journey_Purpose_of_Driver] INT,
    [Sex_of_Driver] INT,
    [Age_of_Driver] varchar(50),
    [Age_Band_of_Driver] INT,
    [Engine_Capacity_(CC)] varchar(50),
    [Propulsion_Code] varchar(50),
    [Age_of_Vehicle] varchar(50),
    [Driver_IMD_Decile] varchar(50),
    [Driver_Home_Area_Type] varchar(50)
)