﻿CREATE TABLE [dbo].[UserAccounts]
(
	 [UserAccountsId]   INT             IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL
    ,[UserName]         VARCHAR(50)     CONSTRAINT [DF_UserAccounts_UserName]       DEFAULT ('') NOT NULL
    ,[FirstName]        VARCHAR(150)    NULL 
    ,[LastName]         VARCHAR(150)    NULL 
    ,[Email]            VARCHAR(50)     CONSTRAINT [DF_UserAccounts_Email]          DEFAULT ('') NOT NULL 
    ,[Address]          VARCHAR(50)     CONSTRAINT [DF_UserAccounts_Address]        DEFAULT ('') NOT NULL 
    ,[City]             VARCHAR(50)     CONSTRAINT [DF_UserAccounts_City]           DEFAULT ('') NOT NULL 
    ,[State]            VARCHAR(2)      CONSTRAINT [DF_UserAccounts_State]          DEFAULT ('') NOT NULL 
    ,[Zip]              VARCHAR(10)     CONSTRAINT [DF_UserAccounts_Zip]            DEFAULT ('') NOT NULL 
    ,[BirthDate]        DATE            NULL
    ,[CreatedOn]        DATETIME2(7)    NOT NULL
    ,[LastModifiedOn]   DATETIME2       NOT NULL
    ,[Password]         VARCHAR(70)     NULL                                        DEFAULT (''), 
    CONSTRAINT [PK_UserAccounts] PRIMARY KEY CLUSTERED ([UserAccountsId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Email]
    ON [dbo].[UserAccounts]([Email] ASC)

