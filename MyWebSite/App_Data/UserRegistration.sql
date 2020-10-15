CREATE TABLE [dbo].[UserRegistration] (
    [ID]       INT        IDENTITY (1, 1) NOT NULL,
	[GUID] NCHAR(50) NULL, 
    [UserName] NCHAR (20) NULL,
    [Email]    NCHAR (50) NULL,
    [Password] NCHAR (20) NULL,
    [Country]  NCHAR (15) NULL,
    
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

