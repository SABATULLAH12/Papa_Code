GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Alter PROCEDURE [dbo].[papafuncapp_addrows_Output_Table]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Output_Table] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Output Table](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Output_Table] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Type(OZ,EQ,Unit,SPC)],
		[Packages],
		[Premium-ness],
		[Current Price ($) - White Tag],
		[Current Price ($) - Promo],
		[Current Price ($) - AWR],
		[Optimized Price ($) - White Tag],
		[Optimized Price ($) - Promo],
		[Optimized Price ($) - AWR],
		[Destination Price ($) - White Tag],
		[Destination Price ($) - Promo],
		[Destination Price ($) - AWR],
		[Price Gap (Optimized) - White Tag],
		[Price Gap (Optimized) - Promo],
		[Price Gap (Optimized) - AWR],
		[Price Gap (Destination) - White Tag],
		[Price Gap (Destination) - Promo],
		[Price Gap (Destination) - AWR],
		[Optimized Price Indexed - White Tag],
		[Optimized Price Indexed - Promo],
		[Optimized Price Indexed - AWR],
		[Current Dead Net Price ($) - White Tag],
		[Current Dead Net Price ($) - Promo],
		[Current Dead Net Price ($) - AWR],
		[Optimized Dead Net Price ($) - White Tag],
		[Optimized Dead Net Price ($) - Promo],
		[Optimized Dead Net Price ($) - AWR],
		[Destination Dead Net Price ($) - White Tag],
		[Destination Dead Net Price ($) - Promo],
		[Destination Dead Net Price ($) - AWR],
		[Dead Net Price Gap (Optimized) - White Tag],
		[Dead Net Price Gap (Optimized) - Promo],
		[Dead Net Price Gap (Optimized) - AWR],
		[Dead Net Price Gap (Destination) - White Tag],
		[Dead Net Price Gap (Destination) - Promo],
		[Dead Net Price Gap (Destination) - AWR],
		[Optimized Dead Net Price Indexed - White Tag],
		[Optimized Dead Net Price Indexed - Promo],
		[Optimized Dead Net Price Indexed - AWR],
		[Timestamp], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Output Table]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Output Table]
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
		[Price Type(OZ,EQ,Unit,SPC)],
		[Packages],
		[Premium-ness],
		[Current Price ($) - White Tag],
		[Current Price ($) - Promo],
		[Current Price ($) - AWR],
		[Optimized Price ($) - White Tag],
		[Optimized Price ($) - Promo],
		[Optimized Price ($) - AWR],
		[Destination Price ($) - White Tag],
		[Destination Price ($) - Promo],
		[Destination Price ($) - AWR],
		[Price Gap (Optimized) - White Tag],
		[Price Gap (Optimized) - Promo],
		[Price Gap (Optimized) - AWR],
		[Price Gap (Destination) - White Tag],
		[Price Gap (Destination) - Promo],
		[Price Gap (Destination) - AWR],
		[Optimized Price Indexed - White Tag],
		[Optimized Price Indexed - Promo],
		[Optimized Price Indexed - AWR],
		[Current Dead Net Price ($) - White Tag],
		[Current Dead Net Price ($) - Promo],
		[Current Dead Net Price ($) - AWR],
		[Optimized Dead Net Price ($) - White Tag],
		[Optimized Dead Net Price ($) - Promo],
		[Optimized Dead Net Price ($) - AWR],
		[Destination Dead Net Price ($) - White Tag],
		[Destination Dead Net Price ($) - Promo],
		[Destination Dead Net Price ($) - AWR],
		[Dead Net Price Gap (Optimized) - White Tag],
		[Dead Net Price Gap (Optimized) - Promo],
		[Dead Net Price Gap (Optimized) - AWR],
		[Dead Net Price Gap (Destination) - White Tag],
		[Dead Net Price Gap (Destination) - Promo],
		[Dead Net Price Gap (Destination) - AWR],
		[Optimized Dead Net Price Indexed - White Tag],
		[Optimized Dead Net Price Indexed - Promo],
		[Optimized Dead Net Price Indexed - AWR],
		[Timestamp],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Output Table] 
	select * from #temp

	--unpivot code starts
	IF EXISTS (SELECT * FROM [dbo].[output_table_unpivot](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_output_table_unpivot] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Type(OZ,EQ,Unit,SPC)],
		[Packages],
		[Timestamp],
		[Column_name],
		[value], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[output_table_unpivot]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[output_table_unpivot]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END

	Insert into [dbo].[output_table_unpivot] 
	SELECT 
	[Scenario]
	,[Scenario Description]
	,[Time Period]
	,[Bottler]
	,[Channel]
	,[Concat_Sce_TP_Bott_Chan]
	,[Price Type(OZ,EQ,Unit,SPC)]
	,[Packages]
	,[Timestamp]
	,[Column_name]
	,[value]
	,@emailId
	,CURRENT_TIMESTAMP
	FROM #temp
	UNPIVOT
	(
		value
		FOR Column_name in (
		[Current Price ($) - White Tag],
		[Current Price ($) - Promo],
		[Current Price ($) - AWR],
		[Optimized Price ($) - White Tag],
		[Optimized Price ($) - Promo],
		[Optimized Price ($) - AWR],
		[Destination Price ($) - White Tag],
		[Destination Price ($) - Promo],
		[Destination Price ($) - AWR],
		[Price Gap (Optimized) - White Tag],
		[Price Gap (Optimized) - Promo],
		[Price Gap (Optimized) - AWR],
		[Price Gap (Destination) - White Tag],
		[Price Gap (Destination) - Promo],
		[Price Gap (Destination) - AWR],
		[Optimized Price Indexed - White Tag],
		[Optimized Price Indexed - Promo],
		[Optimized Price Indexed - AWR],
		[Current Dead Net Price ($) - White Tag],
		[Current Dead Net Price ($) - Promo],
		[Current Dead Net Price ($) - AWR],
		[Optimized Dead Net Price ($) - White Tag],
		[Optimized Dead Net Price ($) - Promo],
		[Optimized Dead Net Price ($) - AWR],
		[Destination Dead Net Price ($) - White Tag],
		[Destination Dead Net Price ($) - Promo],
		[Destination Dead Net Price ($) - AWR],
		[Dead Net Price Gap (Optimized) - White Tag],
		[Dead Net Price Gap (Optimized) - Promo],
		[Dead Net Price Gap (Optimized) - AWR],
		[Dead Net Price Gap (Destination) - White Tag],
		[Dead Net Price Gap (Destination) - Promo],
		[Dead Net Price Gap (Destination) - AWR],
		[Optimized Dead Net Price Indexed - White Tag],
		[Optimized Dead Net Price Indexed - Promo],
		[Optimized Dead Net Price Indexed - AWR]
		)
	) AS piv

	COMMIT TRANSACTION 
	END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION MySavePoint;
        END
    END CATCH
END
GO
