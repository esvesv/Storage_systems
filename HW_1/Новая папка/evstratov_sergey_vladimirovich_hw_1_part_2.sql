CREATE TABLE Attendance ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	Registration_Date    DATE     ,
	Var1                 INTEGER     ,
	Var2                 INTEGER     ,
	Var3                 INTEGER     ,
	Var4                 INTEGER     ,
	Var5                 INTEGER     ,
	CONSTRAINT pk_Attendance PRIMARY KEY ( Patient_ID, Health_Camp_ID )
 );

CREATE UNIQUE INDEX unq_Health_Camp_ID ON Attendance ( Health_Camp_ID );

CREATE UNIQUE INDEX unq_Patient_ID ON Attendance ( Patient_ID );

CREATE TABLE First_Health_Camp_Attended ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	Donation             INTEGER     ,
	Health_Score         DECIMAL(7)     ,
	CONSTRAINT pk_First_Health_Camp_Attended PRIMARY KEY ( Patient_ID, Health_Camp_ID )
 );

CREATE UNIQUE INDEX unq_Patient_ID ON First_Health_Camp_Attended ( Patient_ID );

CREATE UNIQUE INDEX unq_Health_Camp_ID ON First_Health_Camp_Attended ( Health_Camp_ID );

CREATE TABLE Health_Camp_Detail ( 
	Health_Camp_ID       INTEGER NOT NULL    ,
	Camp_Start_Date      DATE     ,
	Camp_End_Date        DATE     ,
	Category1            VARCHAR(10)     ,
	Category2            CHAR(1)     ,
	Category3            INTEGER     
 );

CREATE TABLE Patient_Profile ( 
	Patient_ID           INTEGER NOT NULL    ,
	Online_Follower      INTEGER     ,
	LinkedIn_Shared      INTEGER     ,
	Twitter_Shared       INTEGER     ,
	Facebook_Shared      INTEGER     ,
	Income               INTEGER     ,
	Education_Score      DECIMAL(11)     ,
	Age                  INTEGER     ,
	First_Interaction    DATE     ,
	City_Type            CHAR(1)     ,
	Employer_Category    VARCHAR(30)     
 );

CREATE TABLE Second_Health_Camp_Attended ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	Health_Score         DECIMAL(7)     ,
	CONSTRAINT pk_Second_Health_Camp_Attended PRIMARY KEY ( Patient_ID, Health_Camp_ID )
 );

CREATE UNIQUE INDEX unq_Patient_ID ON Second_Health_Camp_Attended ( Patient_ID );

CREATE UNIQUE INDEX unq_Health_Camp_ID ON Second_Health_Camp_Attended ( Health_Camp_ID );

CREATE TABLE Third_Health_Camp_Attended ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	Number_of_stall_visited INTEGER     ,
	Last_Stall_Visited_Number INTEGER     ,
	CONSTRAINT pk_Third_Health_Camp_Attended PRIMARY KEY ( Patient_ID, Health_Camp_ID )
 );

CREATE UNIQUE INDEX unq_Patient_ID ON Third_Health_Camp_Attended ( Patient_ID );

CREATE UNIQUE INDEX unq_Health_Camp_ID ON Third_Health_Camp_Attended ( Health_Camp_ID );
