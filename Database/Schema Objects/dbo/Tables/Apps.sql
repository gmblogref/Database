CREATE TABLE [dbo].[Apps]
(
	 [AppsId]           INT             IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL
    ,[AppName]          VARCHAR (50)    CONSTRAINT [DF_Apps_AppName] DEFAULT ('') NOT NULL
    ,[AppDesc]          VARCHAR (200)   NOT NULL
    ,[CreatedOn]        DATETIME2(7)    NOT NULL
    ,[LastModifiedOn]   DATETIME2       NOT NULL
    ,CONSTRAINT [PK_Apps] PRIMARY KEY CLUSTERED ([AppsId] ASC)
)
