CREATE TABLE [dbo].[ApplicationLog]
(
	 [ApplicationLogId]		INT             IDENTITY (1, 1) NOT NULL
	,[AppId]				SMALLINT		NULL
	,[ErrorLevel]			NVARCHAR(50)	NULL
	,[ThrownException]		NVARCHAR(4000)	NULL
	,[StackTrace]			NVARCHAR(4000)	NULL
	,[LogDate]				DATETIME2(0)	NULL
	,CONSTRAINT [PK_ApplicationLog] PRIMARY KEY CLUSTERED ([ApplicationLogId] ASC)
)
