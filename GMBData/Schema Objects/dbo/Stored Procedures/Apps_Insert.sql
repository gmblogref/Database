/*
	https://github.com/jonwagner/Insight.Database/wiki/Identity-Inserts
*/

CREATE PROCEDURE [dbo].[Apps_Insert]
(
	  @AppName		VARCHAR(50)
	, @AppDesc		VARCHAR(200)
)
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Apps]
	(
		 [AppName]
		,[AppDesc]
		,[CreatedOn]
		,[LastModifiedOn]
	)
	OUTPUT Inserted.AppsId
	VALUES
	(
		 @AppName
		,@AppDesc
		,GETDATE()
		,GETDATE()
	)

END