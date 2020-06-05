CREATE PROCEDURE [dbo].[ApplicationLog_Insert]
(
	 @AppId					SMALLINT
	,@ErrorLevel			NVARCHAR(50)
	,@ExceptionMessge		NVARCHAR(4000)
	,@StackTrace			NVARCHAR(4000)
)
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dbo].[ApplicationLog]
	(
		 [AppId] 
		,[ErrorLevel]
		,[ExceptionMessge] 
		,[StackTrace]    
		,[LogDate]
	)
	OUTPUT Inserted.ApplicationLogId
	VALUES
	(
		 @AppId				
		,@ErrorLevel		
		,@ExceptionMessge	
		,@StackTrace	  
		,GETDATE()
	)

END