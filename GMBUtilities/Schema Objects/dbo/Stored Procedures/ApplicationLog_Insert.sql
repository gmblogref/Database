CREATE PROCEDURE [dbo].[ApplicationLog_Insert]
(
	 @AppId					SMALLINT
	,@ErrorLevel			NVARCHAR(50)
	,@ThrownException		NVARCHAR(4000)
	,@StackTrace			NVARCHAR(4000)
)
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dbo].[ApplicationLog]
	(
		 [AppId] 
		,[ErrorLevel]
		,[ThrownException] 
		,[StackTrace]    
		,[LogDate]
	)
	VALUES
	(
		 @AppId				
		,@ErrorLevel		
		,@ThrownException	
		,@StackTrace	  
		,GETDATE()
	)
END