﻿CREATE TABLE [dbo].[Table]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
	[UserID] int FOREIGN KEY REFERENCES UserRegistration(ID),
    [Level] NCHAR(10) NULL
)