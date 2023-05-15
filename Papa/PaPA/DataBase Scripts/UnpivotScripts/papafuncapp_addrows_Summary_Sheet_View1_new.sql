/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Summary_Sheet_View1_new]    Script Date: 09-02-2021 14:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
ALTER PROCEDURE [dbo].[papafuncapp_addrows_Summary_Sheet_View1_new]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Summary_Sheet_View1_new] ReadOnly,
	@emailId VARCHAR(255)
)
AS
BEGIN
    BEGIN TRANSACTION;
    SAVE TRANSACTION MySavePoint;
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
	Declare @Scenario VARCHAR(255);
	Declare @channel VARCHAR(255);
	BEGIN TRY 
	set @Scenario = (select Distinct TOP(1) [Scenario] from @tvpTable);
	set @channel = (select Distinct TOP(1) [channel] from @tvpTable where [Scenario] = @Scenario);
	--THROW 60000,@channel,1;
	IF EXISTS (SELECT * FROM [dbo].[Summary Sheet View1_new](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Summary_Sheet_View1_new] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[VolGraph_ X-axis(Wt,Pro,Tot)],
		[Current Total Volume],
		[Optimized Total Volume],
		[Change in Volume],
		[Current Total Revenue],
		[Optimized Total Revenue],
		[Change in Revenue],
		[Timestamp],
		[Current Bottler Revenue],
		[Optimized Bottler Revenue], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Summary Sheet View1_new]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Summary Sheet View1_new]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[VolGraph_ X-axis(Wt,Pro,Tot)],
		[Current Total Volume],
		[Optimized Total Volume],
		[Change in Volume],
		[Current Total Revenue],
		[Optimized Total Revenue],
		[Change in Revenue],
		[Timestamp],
		[Current Bottler Revenue],
		[Optimized Bottler Revenue],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Summary Sheet View1_new] 
	select * from #temp

	--unpivot code starts
	IF EXISTS (SELECT * FROM [dbo].[Summary Sheet View1_unpivot](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Summary_Sheet_View1_unpivot] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[VolGraph_ X-axis(Wt,Pro,Tot)],
		[Timestamp],
		[Measure],
		[Current value],
		[Optimized value],
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Summary Sheet View1_unpivot]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Summary Sheet View1_unpivot]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END
	
	Insert into [dbo].[Summary Sheet View1_unpivot] 
	SELECT 
	[Scenario],
	[Scenario Description],
	[Time Period],
	[Bottler],
	[Channel],
	[Concat_Sce_TP_Bott_Chan],
	[VolGraph_ X-axis(Wt,Pro,Tot)],
	[Timestamp],
	c.[Measure],
	c.[Current value],
	c.[Optimized value],
	@emailId,
	CURRENT_TIMESTAMP
	FROM #temp
	cross apply
	(VALUES ('volume',[Current Total volume],[Optimized total volume])
	,('Retail revenue',[Current Total Revenue],[Optimized total Revenue])
	,('Bottler revenue',[Current Bottler Revenue],[Optimized Bottler Revenue])
	)c([Measure],[Current value],[Optimized value])
	
	COMMIT TRANSACTION 
	END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION MySavePoint;
        END
    END CATCH
END
