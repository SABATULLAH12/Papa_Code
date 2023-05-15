/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Curve_table1]    Script Date: 09-02-2021 15:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
ALTER PROCEDURE [dbo].[papafuncapp_addrows_Curve_table1]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Curve_table1] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Curve table1](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Curve_table1] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceCurve_Price Type(Wt,Promo,AWR)],
		[PriceCurve_Package],
		[PriceCurve_Xaxis],
		[PriceCurve_CurrentPrices],
		[PriceCurve_Optimized],
		[PriceCurve_Destination],
		[Timestamp],
		[Retailer/Deadnet], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Curve table1]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Curve table1]
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
		[PriceCurve_Price Type(Wt,Promo,AWR)],
		[PriceCurve_Package],
		[PriceCurve_Xaxis],
		[PriceCurve_CurrentPrices],
		[PriceCurve_Optimized],
		[PriceCurve_Destination],
		[Timestamp],
		[Retailer/Deadnet],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Curve table1] 
	select * from #temp

	--unpivot code starts

	IF EXISTS (SELECT * FROM [dbo].[Curve table2](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Curve_table2] 
	SELECT
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceCurve_Price Type(Wt,Promo,AWR)],
		[PriceCurve_Package],
		[PriceCurve_Xaxis],
		[Timestamp],
		[Retailer/Deadnet],
		[Value],
		[Type],
		[UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Curve table2]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Curve table2]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END

	Insert into [dbo].[Curve table2] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceCurve_Price Type(Wt,Promo,AWR)],
		[PriceCurve_Package],
		[PriceCurve_Xaxis],
		[Timestamp],
		[Retailer/Deadnet],
		[Value],
		CASE [Type_big]
           WHEN 'PriceCurve_CurrentPrices'
           THEN 'Current Price'
           WHEN 'PriceCurve_Optimized'
           THEN 'Optimized Price'
		   WHEN 'PriceCurve_Destination'
           THEN 'Destination Price'
           ELSE '!!!No Mapping!!!'
		END AS [Type],
		[UpdatedBy],
		[UpdatedTimeStamp]
	FROM #temp
	UNPIVOT
	(
		value
		FOR [Type_big] in (
		[PriceCurve_CurrentPrices],
		[PriceCurve_Optimized],
		[PriceCurve_Destination]
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
