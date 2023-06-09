/****** Object:  UserDefinedTableType [dbo].[Competition_Comparison_View]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Competition_Comparison_View] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Price type] [nvarchar](255) NULL,
	[Current Prices on the Curve(Oz Price)] [float] NULL,
	[Oz to UP mutiplier] [float] NULL,
	[Current Prices on the Curve(Unit Price)] [float] NULL,
	[Nearest Major Competitor] [nvarchar](255) NULL,
	[Comp# Current Prices on the Curve(Unit Price)] [float] NULL,
	[Relative Price Index] [float] NULL,
	[NAOU Volume Share] [float] NULL,
	[Rate Guidance based on Competition] [nvarchar](255) NULL,
	[PBNA vol# share] [float] NULL,
	[DPSG vol# share] [float] NULL,
	[RecoID] [float] NULL,
	[NAOU value Share] [float] NULL,
	[PBNA value share] [float] NULL,
	[DPSG value share] [float] NULL,
	[NAOU_currentvol] [float] NULL,
	[PBNA Price] [float] NULL,
	[DPSG Price] [float] NULL,
	[PBNA Volume] [float] NULL,
	[DPSG Volume] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Cross_Channel_Coherency_View1]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Cross_Channel_Coherency_View1] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Package Filter] [nvarchar](255) NULL,
	[Price Type (OP,Curr)] [nvarchar](255) NULL,
	[Channel X-Axis] [nvarchar](255) NULL,
	[Price kind(WT-Promo-AWR)] [nvarchar](255) NULL,
	[Price value] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Oz_to_UP_m] [float] NULL,
	[Oz_to_SPC_m] [float] NULL,
	[Price value_UnitPrice] [float] NULL,
	[volume] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Cross_Channel_Coherency_View2]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Cross_Channel_Coherency_View2] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Type(WT, Promo, AWR)] [nvarchar](255) NULL,
	[Package] [nvarchar](255) NULL,
	[X-axis(PMI)] [float] NULL,
	[Y-axis(Gap to curve)] [float] NULL,
	[Legend(Channel)] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[rank] [float] NULL,
	[Current Oz Price] [float] NULL,
	[Optimized Oz Price] [float] NULL,
	[Current Unit Price] [float] NULL,
	[Optimized Unit Price] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Curve_table1]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Curve_table1] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[PriceCurve_Price Type(Wt,Promo,AWR)] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[PriceCurve_Xaxis] [float] NULL,
	[PriceCurve_CurrentPrices] [float] NULL,
	[PriceCurve_Optimized] [float] NULL,
	[PriceCurve_Destination] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Retailer/Deadnet] [nvarchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Curve_table2]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Curve_table2] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[PriceCurve_Price Type(Wt,Promo,AWR)] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[PriceCurve_Xaxis] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Retailer/Deadnet] [nvarchar](255) NULL,
	[Value] [float] NULL,
	[Type] [nvarchar](128) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Distinct_Scenario]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Distinct_Scenario] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario description] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[TimePeriod] [nvarchar](255) NULL,
	[TimeStamp] [nvarchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Equationtable]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Equationtable] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [nvarchar](255) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[Combo] [nvarchar](255) NULL,
	[Slope] [float] NULL,
	[Intercept] [float] NULL,
	[Scenario_channel] [varchar](200) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Image_type]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Image_type] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Image Name] [nvarchar](255) NULL,
	[Scenario-Group] [nvarchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Innovation_Index]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Innovation_Index] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[PriceChart_Price_Type_WT_Promo_AWR] [nvarchar](255) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[Scenario_channel] [nvarchar](255) NULL,
	[Scenario_Channel_PriceType] [nvarchar](255) NULL,
	[Scenario_Channel_PriceUnit] [nvarchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Innovation_Package_View1]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Innovation_Package_View1] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Names] [nvarchar](255) NULL,
	[Package Name] [nvarchar](255) NULL,
	[Proposed Premium Index] [float] NULL,
	[Oz per Unit] [float] NULL,
	[Units per Pack] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel] [varchar](200) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Innovation_Package_View2_new]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Innovation_Package_View2_new] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario_Description] [nvarchar](255) NULL,
	[Time_Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](500) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[Premiumness_Index] [float] NULL,
	[White_Tag] [float] NULL,
	[Promo] [float] NULL,
	[AWR] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel_PriceUnit] [nvarchar](500) NULL,
	[White_Tag_CP] [float] NULL,
	[Promo_CP] [float] NULL,
	[AWR_CP] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Innovation_Package_View2_new_copy]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Innovation_Package_View2_new_copy] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario_Description] [nvarchar](255) NULL,
	[Time_Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](500) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[Premiumness_Index] [float] NULL,
	[White_Tag] [float] NULL,
	[Promo] [float] NULL,
	[AWR] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel_PriceUnit] [nvarchar](500) NULL,
	[White_Tag_CP] [float] NULL,
	[Promo_CP] [float] NULL,
	[AWR_CP] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Output_Table]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Output_Table] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type(OZ,EQ,Unit,SPC)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[Premium-ness] [float] NULL,
	[Current Price ($) - White Tag] [float] NULL,
	[Current Price ($) - Promo] [float] NULL,
	[Current Price ($) - AWR] [float] NULL,
	[Optimized Price ($) - White Tag] [float] NULL,
	[Optimized Price ($) - Promo] [float] NULL,
	[Optimized Price ($) - AWR] [float] NULL,
	[Destination Price ($) - White Tag] [float] NULL,
	[Destination Price ($) - Promo] [float] NULL,
	[Destination Price ($) - AWR] [float] NULL,
	[Price Gap (Optimized) - White Tag] [float] NULL,
	[Price Gap (Optimized) - Promo] [float] NULL,
	[Price Gap (Optimized) - AWR] [float] NULL,
	[Price Gap (Destination) - White Tag] [float] NULL,
	[Price Gap (Destination) - Promo] [float] NULL,
	[Price Gap (Destination) - AWR] [float] NULL,
	[Optimized Price Indexed - White Tag] [float] NULL,
	[Optimized Price Indexed - Promo] [float] NULL,
	[Optimized Price Indexed - AWR] [float] NULL,
	[Current Dead Net Price ($) - White Tag] [float] NULL,
	[Current Dead Net Price ($) - Promo] [float] NULL,
	[Current Dead Net Price ($) - AWR] [float] NULL,
	[Optimized Dead Net Price ($) - White Tag] [float] NULL,
	[Optimized Dead Net Price ($) - Promo] [float] NULL,
	[Optimized Dead Net Price ($) - AWR] [float] NULL,
	[Destination Dead Net Price ($) - White Tag] [float] NULL,
	[Destination Dead Net Price ($) - Promo] [float] NULL,
	[Destination Dead Net Price ($) - AWR] [float] NULL,
	[Dead Net Price Gap (Optimized) - White Tag] [float] NULL,
	[Dead Net Price Gap (Optimized) - Promo] [float] NULL,
	[Dead Net Price Gap (Optimized) - AWR] [float] NULL,
	[Dead Net Price Gap (Destination) - White Tag] [float] NULL,
	[Dead Net Price Gap (Destination) - Promo] [float] NULL,
	[Dead Net Price Gap (Destination) - AWR] [float] NULL,
	[Optimized Dead Net Price Indexed - White Tag] [float] NULL,
	[Optimized Dead Net Price Indexed - Promo] [float] NULL,
	[Optimized Dead Net Price Indexed - AWR] [float] NULL,
	[Timestamp] [varchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[output_table_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[output_table_unpivot] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type(OZ,EQ,Unit,SPC)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[Timestamp] [varchar](255) NULL,
	[Column_name] [nvarchar](255) NULL,
	[value] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Package_Comparision_View1]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Package_Comparision_View1] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type] [varchar](255) NULL,
	[Conversion] [varchar](255) NULL,
	[Metric_ID] [int] NULL,
	[Metric] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[concat_new] [varchar](255) NULL,
	[concat_new2] [varchar](255) NULL,
	[concat_new3] [varchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Package_Comparision_View2]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Package_Comparision_View2] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type] [varchar](255) NULL,
	[Conversion] [varchar](255) NULL,
	[Metric_ID] [int] NULL,
	[Metric] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[concat_new] [varchar](255) NULL,
	[concat_new2] [varchar](255) NULL,
	[concat_new3] [varchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[PHRM_View1_new]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[PHRM_View1_new] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[flag] [varchar](50) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Current Volume] [float] NULL,
	[Y1 Volume] [float] NULL,
	[Y2 Volume] [float] NULL,
	[Y3 Volume] [float] NULL,
	[Conversion Factor] [float] NULL,
	[Current Price] [float] NULL,
	[Current Price y1] [float] NULL,
	[Current Price y2] [float] NULL,
	[Current Price y3] [float] NULL,
	[Destination Price] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[PHRM_View2_new]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[PHRM_View2_new] AS TABLE(
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[Flag] [nvarchar](255) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Falg 2] [nvarchar](255) NULL,
	[Current Volume] [float] NULL,
	[Y1 Volume] [float] NULL,
	[Y2 Volume] [float] NULL,
	[Y3 Volume] [float] NULL,
	[Conversion Factor] [float] NULL,
	[Current Price] [float] NULL,
	[Current Price y1] [float] NULL,
	[Current Price y2] [float] NULL,
	[Current Price y3] [float] NULL,
	[Destination Price] [float] NULL,
	[Channelnew] [nvarchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Select_Scenario_View1]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Select_Scenario_View1] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Package Name] [varchar](255) NULL,
	[Include for Optimization?] [varchar](255) NULL,
	[Include for Promo Modelling] [varchar](255) NULL,
	[Premium-ness] [float] NULL,
	[White Tag Elasticity] [float] NULL,
	[Promo Elasticity] [float] NULL,
	[AWR Elasticity] [float] NULL,
	[White Tag Margins] [float] NULL,
	[Promo Margins] [float] NULL,
	[AWR Price Margins] [float] NULL,
	[Min Price Increase on White Tag Price] [float] NULL,
	[Min Price Increase on Promo Price] [float] NULL,
	[Max Price Increase on White Tag price] [float] NULL,
	[Max Price Increase on Promo price] [float] NULL,
	[Max Allowed decline in White Tag Volume_Package] [float] NULL,
	[Max Allowed decline in Promo Volume_Package] [float] NULL,
	[Timestamp] [varchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Select_Scenario_View2]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Select_Scenario_View2] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Volume Mix_Perc] [float] NULL,
	[Bounds_Include_Exclude] [varchar](255) NULL,
	[Maximum allowed decline in White Tag Volume_Rate change] [float] NULL,
	[Maximum allowed decline in Promo Volume_Rate change] [float] NULL,
	[YOY Year 1] [float] NULL,
	[YOY Year 2] [float] NULL,
	[YOY Year 3] [float] NULL,
	[Momentum_Enable_Disable] [varchar](255) NULL,
	[PackageLevel_VolConst_Enable_Disable] [varchar](255) NULL,
	[Timestamp] [varchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Select_Scenario_View3]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Select_Scenario_View3] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Sl. No.] [int] NULL,
	[Available Package Group in Channels] [varchar](255) NULL,
	[User Input Groups] [varchar](255) NULL,
	[Momentum_Value] [float] NULL,
	[Timestamp] [varchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Summary_Sheet_View1_new]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Summary_Sheet_View1_new] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[VolGraph_ X-axis(Wt,Pro,Tot)] [varchar](255) NULL,
	[Current Total Volume] [float] NULL,
	[Optimized Total Volume] [float] NULL,
	[Change in Volume] [float] NULL,
	[Current Total Revenue] [float] NULL,
	[Optimized Total Revenue] [float] NULL,
	[Change in Revenue] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[Current Bottler Revenue] [float] NULL,
	[Optimized Bottler Revenue] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Summary_Sheet_View1_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Summary_Sheet_View1_unpivot] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [nvarchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[VolGraph_ X-axis(Wt,Pro,Tot)] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Measure] [nvarchar](255) NULL,
	[Current value] [float] NULL,
	[Optimized value] [float] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Summary_Sheet_View2]    Script Date: 07-04-2021 10:16:56 ******/
CREATE TYPE [dbo].[Summary_Sheet_View2] AS TABLE(
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [varchar](255) NULL,
	[PriceChart_Conversion] [varchar](255) NULL,
	[PriceChart_Packages] [varchar](255) NULL,
	[PriceChart_Current Price] [float] NULL,
	[PriceChart_Optimized Price] [float] NULL,
	[Price Gap(Current vs Optimized) MIN] [float] NULL,
	[Price Gap(Current vs Optimized) MAX] [float] NULL,
	[Price Gap(Current vs Optimized) delta] [float] NULL,
	[Price Gap(Current vs Destination) MIN] [float] NULL,
	[Price Gap(Current vs Destination) MAX] [float] NULL,
	[Price Gap(Current vs Destination) delta] [float] NULL,
	[Price Gap(Current vs Optimized) Delta negative] [float] NULL,
	[Price Gap(Current vs Optimized) Delta positive] [float] NULL,
	[Price Gap(Current vs Destination) Delta negative] [float] NULL,
	[Price Gap(Current vs Destination) Delta positive] [float] NULL,
	[Destination Price] [float] NULL,
	[Timestamp] [varchar](255) NULL
)
GO
/****** Object:  Table [dbo].[Competition Comparison View]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competition Comparison View](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Price type] [nvarchar](255) NULL,
	[Current Prices on the Curve(Oz Price)] [float] NULL,
	[Oz to UP mutiplier] [float] NULL,
	[Current Prices on the Curve(Unit Price)] [float] NULL,
	[Nearest Major Competitor] [nvarchar](255) NULL,
	[Comp# Current Prices on the Curve(Unit Price)] [float] NULL,
	[Relative Price Index] [float] NULL,
	[NAOU Volume Share] [float] NULL,
	[Rate Guidance based on Competition] [nvarchar](255) NULL,
	[PBNA vol# share] [float] NULL,
	[DPSG vol# share] [float] NULL,
	[RecoID] [float] NULL,
	[NAOU value Share] [float] NULL,
	[PBNA value share] [float] NULL,
	[DPSG value share] [float] NULL,
	[NAOU_currentvol] [float] NULL,
	[PBNA Price] [float] NULL,
	[DPSG Price] [float] NULL,
	[PBNA Volume] [float] NULL,
	[DPSG Volume] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competition Comparison View_bkp_07042021]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competition Comparison View_bkp_07042021](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Price type] [nvarchar](255) NULL,
	[Current Prices on the Curve(Oz Price)] [float] NULL,
	[Oz to UP mutiplier] [float] NULL,
	[Current Prices on the Curve(Unit Price)] [float] NULL,
	[Nearest Major Competitor] [nvarchar](255) NULL,
	[Comp# Current Prices on the Curve(Unit Price)] [float] NULL,
	[Relative Price Index] [float] NULL,
	[NAOU Volume Share] [float] NULL,
	[Rate Guidance based on Competition] [nvarchar](255) NULL,
	[PBNA vol# share] [float] NULL,
	[DPSG vol# share] [float] NULL,
	[RecoID] [float] NULL,
	[NAOU value Share] [float] NULL,
	[PBNA value share] [float] NULL,
	[DPSG value share] [float] NULL,
	[NAOU_currentvol] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cross-Channel Coherency View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cross-Channel Coherency View1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Package Filter] [nvarchar](255) NULL,
	[Price Type (OP,Curr)] [nvarchar](255) NULL,
	[Channel X-Axis] [nvarchar](255) NULL,
	[Price kind(WT-Promo-AWR)] [nvarchar](255) NULL,
	[Price value] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Oz_to_UP_m] [float] NULL,
	[Oz_to_SPC_m] [float] NULL,
	[Price value_UnitPrice] [float] NULL,
	[volume] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cross-Channel Coherency View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cross-Channel Coherency View2](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Type(WT, Promo, AWR)] [nvarchar](255) NULL,
	[Package] [nvarchar](255) NULL,
	[X-axis(PMI)] [float] NULL,
	[Y-axis(Gap to curve)] [float] NULL,
	[Legend(Channel)] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[rank] [float] NULL,
	[Current Oz Price] [float] NULL,
	[Optimized Oz Price] [float] NULL,
	[Current Unit Price] [float] NULL,
	[Optimized Unit Price] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cross-Channel Coherency View2_backup]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cross-Channel Coherency View2_backup](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Type(WT, Promo, AWR)] [nvarchar](255) NULL,
	[Package] [nvarchar](255) NULL,
	[X-axis(PMI)] [float] NULL,
	[Y-axis(Gap to curve)] [float] NULL,
	[Legend(Channel)] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[rank] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curve table1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curve table1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[PriceCurve_Price Type(Wt,Promo,AWR)] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[PriceCurve_Xaxis] [float] NULL,
	[PriceCurve_CurrentPrices] [float] NULL,
	[PriceCurve_Optimized] [float] NULL,
	[PriceCurve_Destination] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Retailer/Deadnet] [nvarchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curve table2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curve table2](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[PriceCurve_Price Type(Wt,Promo,AWR)] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[PriceCurve_Xaxis] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Retailer/Deadnet] [nvarchar](255) NULL,
	[Value] [float] NULL,
	[Type] [nvarchar](128) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Competition_Comparison_View]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Competition_Comparison_View](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Price type] [nvarchar](255) NULL,
	[Current Prices on the Curve(Oz Price)] [float] NULL,
	[Oz to UP mutiplier] [float] NULL,
	[Current Prices on the Curve(Unit Price)] [float] NULL,
	[Nearest Major Competitor] [nvarchar](255) NULL,
	[Comp# Current Prices on the Curve(Unit Price)] [float] NULL,
	[Relative Price Index] [float] NULL,
	[NAOU Volume Share] [float] NULL,
	[Rate Guidance based on Competition] [nvarchar](255) NULL,
	[PBNA vol# share] [float] NULL,
	[DPSG vol# share] [float] NULL,
	[RecoID] [float] NULL,
	[NAOU value Share] [float] NULL,
	[PBNA value share] [float] NULL,
	[DPSG value share] [float] NULL,
	[NAOU_currentvol] [float] NULL,
	[PBNA Price] [float] NULL,
	[DPSG Price] [float] NULL,
	[PBNA Volume] [float] NULL,
	[DPSG Volume] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Cross_Channel_Coherency_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Cross_Channel_Coherency_View1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Package Filter] [nvarchar](255) NULL,
	[Price Type (OP,Curr)] [nvarchar](255) NULL,
	[Channel X-Axis] [nvarchar](255) NULL,
	[Price kind(WT-Promo-AWR)] [nvarchar](255) NULL,
	[Price value] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Oz_to_UP_m] [float] NULL,
	[Oz_to_SPC_m] [float] NULL,
	[Price value_UnitPrice] [float] NULL,
	[volume] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Cross_Channel_Coherency_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Cross_Channel_Coherency_View2](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Type(WT, Promo, AWR)] [nvarchar](255) NULL,
	[Package] [nvarchar](255) NULL,
	[X-axis(PMI)] [float] NULL,
	[Y-axis(Gap to curve)] [float] NULL,
	[Legend(Channel)] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[rank] [float] NULL,
	[Current Oz Price] [float] NULL,
	[Optimized Oz Price] [float] NULL,
	[Current Unit Price] [float] NULL,
	[Optimized Unit Price] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Curve_table1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Curve_table1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[PriceCurve_Price Type(Wt,Promo,AWR)] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[PriceCurve_Xaxis] [float] NULL,
	[PriceCurve_CurrentPrices] [float] NULL,
	[PriceCurve_Optimized] [float] NULL,
	[PriceCurve_Destination] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Retailer/Deadnet] [nvarchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Curve_table2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Curve_table2](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[PriceCurve_Price Type(Wt,Promo,AWR)] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[PriceCurve_Xaxis] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Retailer/Deadnet] [nvarchar](255) NULL,
	[Value] [float] NULL,
	[Type] [nvarchar](128) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Distinct_Scenario]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Distinct_Scenario](
	[Scenario] [nvarchar](255) NULL,
	[Scenario description] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[TimePeriod] [nvarchar](255) NULL,
	[TimeStamp] [nvarchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Equationtable]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Equationtable](
	[Scenario] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [nvarchar](255) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[Combo] [nvarchar](255) NULL,
	[Slope] [float] NULL,
	[Intercept] [float] NULL,
	[Scenario_channel] [varchar](200) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Image]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Image](
	[Scenario] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Image Name] [nvarchar](255) NULL,
	[Scenario-Group] [nvarchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Innovation_Index]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Innovation_Index](
	[Scenario] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[PriceChart_Price_Type_WT_Promo_AWR] [nvarchar](255) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[Scenario_channel] [nvarchar](255) NULL,
	[Scenario_Channel_PriceType] [nvarchar](255) NULL,
	[Scenario_Channel_PriceUnit] [nvarchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Innovation_Package_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Innovation_Package_View1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Names] [nvarchar](255) NULL,
	[Package Name] [nvarchar](255) NULL,
	[Proposed Premium Index] [float] NULL,
	[Oz per Unit] [float] NULL,
	[Units per Pack] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel] [varchar](200) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Innovation_Package_View2_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Innovation_Package_View2_new](
	[Scenario] [nvarchar](255) NULL,
	[Scenario_Description] [nvarchar](255) NULL,
	[Time_Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](500) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[Premiumness_Index] [float] NULL,
	[White_Tag] [float] NULL,
	[Promo] [float] NULL,
	[AWR] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel_PriceUnit] [nvarchar](500) NULL,
	[White_Tag_CP] [float] NULL,
	[Promo_CP] [float] NULL,
	[AWR_CP] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Innovation_Package_View2_new_copy]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Innovation_Package_View2_new_copy](
	[Scenario] [nvarchar](255) NULL,
	[Scenario_Description] [nvarchar](255) NULL,
	[Time_Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](500) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[Premiumness_Index] [float] NULL,
	[White_Tag] [float] NULL,
	[Promo] [float] NULL,
	[AWR] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel_PriceUnit] [nvarchar](500) NULL,
	[White_Tag_CP] [float] NULL,
	[Promo_CP] [float] NULL,
	[AWR_CP] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Output_Table]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Output_Table](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type(OZ,EQ,Unit,SPC)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[Premium-ness] [float] NULL,
	[Current Price ($) - White Tag] [float] NULL,
	[Current Price ($) - Promo] [float] NULL,
	[Current Price ($) - AWR] [float] NULL,
	[Optimized Price ($) - White Tag] [float] NULL,
	[Optimized Price ($) - Promo] [float] NULL,
	[Optimized Price ($) - AWR] [float] NULL,
	[Destination Price ($) - White Tag] [float] NULL,
	[Destination Price ($) - Promo] [float] NULL,
	[Destination Price ($) - AWR] [float] NULL,
	[Price Gap (Optimized) - White Tag] [float] NULL,
	[Price Gap (Optimized) - Promo] [float] NULL,
	[Price Gap (Optimized) - AWR] [float] NULL,
	[Price Gap (Destination) - White Tag] [float] NULL,
	[Price Gap (Destination) - Promo] [float] NULL,
	[Price Gap (Destination) - AWR] [float] NULL,
	[Optimized Price Indexed - White Tag] [float] NULL,
	[Optimized Price Indexed - Promo] [float] NULL,
	[Optimized Price Indexed - AWR] [float] NULL,
	[Current Dead Net Price ($) - White Tag] [float] NULL,
	[Current Dead Net Price ($) - Promo] [float] NULL,
	[Current Dead Net Price ($) - AWR] [float] NULL,
	[Optimized Dead Net Price ($) - White Tag] [float] NULL,
	[Optimized Dead Net Price ($) - Promo] [float] NULL,
	[Optimized Dead Net Price ($) - AWR] [float] NULL,
	[Destination Dead Net Price ($) - White Tag] [float] NULL,
	[Destination Dead Net Price ($) - Promo] [float] NULL,
	[Destination Dead Net Price ($) - AWR] [float] NULL,
	[Dead Net Price Gap (Optimized) - White Tag] [float] NULL,
	[Dead Net Price Gap (Optimized) - Promo] [float] NULL,
	[Dead Net Price Gap (Optimized) - AWR] [float] NULL,
	[Dead Net Price Gap (Destination) - White Tag] [float] NULL,
	[Dead Net Price Gap (Destination) - Promo] [float] NULL,
	[Dead Net Price Gap (Destination) - AWR] [float] NULL,
	[Optimized Dead Net Price Indexed - White Tag] [float] NULL,
	[Optimized Dead Net Price Indexed - Promo] [float] NULL,
	[Optimized Dead Net Price Indexed - AWR] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_output_table_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_output_table_unpivot](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type(OZ,EQ,Unit,SPC)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[Timestamp] [varchar](255) NULL,
	[Column_name] [nvarchar](255) NULL,
	[value] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Package_Comparision_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Package_Comparision_View1](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type] [varchar](255) NULL,
	[Conversion] [varchar](255) NULL,
	[Metric_ID] [int] NULL,
	[Metric] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[concat_new] [varchar](255) NULL,
	[concat_new2] [varchar](255) NULL,
	[concat_new3] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Package_Comparision_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Package_Comparision_View2](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type] [varchar](255) NULL,
	[Conversion] [varchar](255) NULL,
	[Metric_ID] [int] NULL,
	[Metric] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[concat_new] [varchar](255) NULL,
	[concat_new2] [varchar](255) NULL,
	[concat_new3] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_PHRM_View1_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_PHRM_View1_new](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[flag] [varchar](50) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Current Volume] [float] NULL,
	[Y1 Volume] [float] NULL,
	[Y2 Volume] [float] NULL,
	[Y3 Volume] [float] NULL,
	[Conversion Factor] [float] NULL,
	[Current Price] [float] NULL,
	[Current Price y1] [float] NULL,
	[Current Price y2] [float] NULL,
	[Current Price y3] [float] NULL,
	[Destination Price] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_PHRM_View1_new_bkp19032021]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_PHRM_View1_new_bkp19032021](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[flag] [varchar](50) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_PHRM_View2_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_PHRM_View2_new](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[Flag] [nvarchar](255) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Falg 2] [nvarchar](255) NULL,
	[Current Volume] [float] NULL,
	[Y1 Volume] [float] NULL,
	[Y2 Volume] [float] NULL,
	[Y3 Volume] [float] NULL,
	[Conversion Factor] [float] NULL,
	[Current Price] [float] NULL,
	[Current Price y1] [float] NULL,
	[Current Price y2] [float] NULL,
	[Current Price y3] [float] NULL,
	[Destination Price] [float] NULL,
	[Channelnew] [nvarchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_PHRM_View2_new_bkp19032021]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_PHRM_View2_new_bkp19032021](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[Flag] [nvarchar](255) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Falg 2] [nvarchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Select_Scenario_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Select_Scenario_View1](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Package Name] [varchar](255) NULL,
	[Include for Optimization?] [varchar](255) NULL,
	[Include for Promo Modelling] [varchar](255) NULL,
	[Premium-ness] [float] NULL,
	[White Tag Elasticity] [float] NULL,
	[Promo Elasticity] [float] NULL,
	[AWR Elasticity] [float] NULL,
	[White Tag Margins] [float] NULL,
	[Promo Margins] [float] NULL,
	[AWR Price Margins] [float] NULL,
	[Min Price Increase on White Tag Price] [float] NULL,
	[Min Price Increase on Promo Price] [float] NULL,
	[Max Price Increase on White Tag price] [float] NULL,
	[Max Price Increase on Promo price] [float] NULL,
	[Max Allowed decline in White Tag Volume_Package] [float] NULL,
	[Max Allowed decline in Promo Volume_Package] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Select_Scenario_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Select_Scenario_View2](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Volume Mix_Perc] [float] NULL,
	[Bounds_Include_Exclude] [varchar](255) NULL,
	[Maximum allowed decline in White Tag Volume_Rate change] [float] NULL,
	[Maximum allowed decline in Promo Volume_Rate change] [float] NULL,
	[YOY Year 1] [float] NULL,
	[YOY Year 2] [float] NULL,
	[YOY Year 3] [float] NULL,
	[Momentum_Enable_Disable] [varchar](255) NULL,
	[PackageLevel_VolConst_Enable_Disable] [varchar](255) NULL,
	[Timestamp] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Select_Scenario_View3]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Select_Scenario_View3](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Sl. No.] [int] NULL,
	[Available Package Group in Channels] [varchar](255) NULL,
	[User Input Groups] [varchar](255) NULL,
	[Momentum_Value] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Summary_Sheet_View1_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Summary_Sheet_View1_new](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[VolGraph_ X-axis(Wt,Pro,Tot)] [varchar](255) NULL,
	[Current Total Volume] [float] NULL,
	[Optimized Total Volume] [float] NULL,
	[Change in Volume] [float] NULL,
	[Current Total Revenue] [float] NULL,
	[Optimized Total Revenue] [float] NULL,
	[Change in Revenue] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[Current Bottler Revenue] [float] NULL,
	[Optimized Bottler Revenue] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Summary_Sheet_View1_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Summary_Sheet_View1_unpivot](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [nvarchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[VolGraph_ X-axis(Wt,Pro,Tot)] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Measure] [nvarchar](255) NULL,
	[Current value] [float] NULL,
	[Optimized value] [float] NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Summary_Sheet_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Summary_Sheet_View2](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [varchar](255) NULL,
	[PriceChart_Conversion] [varchar](255) NULL,
	[PriceChart_Packages] [varchar](255) NULL,
	[PriceChart_Current Price] [float] NULL,
	[PriceChart_Optimized Price] [float] NULL,
	[Price Gap(Current vs Optimized) MIN] [float] NULL,
	[Price Gap(Current vs Optimized) MAX] [float] NULL,
	[Price Gap(Current vs Optimized) delta] [float] NULL,
	[Price Gap(Current vs Destination) MIN] [float] NULL,
	[Price Gap(Current vs Destination) MAX] [float] NULL,
	[Price Gap(Current vs Destination) delta] [float] NULL,
	[Price Gap(Current vs Optimized) Delta negative] [float] NULL,
	[Price Gap(Current vs Optimized) Delta positive] [float] NULL,
	[Price Gap(Current vs Destination) Delta negative] [float] NULL,
	[Price Gap(Current vs Destination) Delta positive] [float] NULL,
	[Destination Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[CreatedTimestamp] [datetime] NULL,
	[ReplacedBy] [varchar](255) NULL,
	[ReplacedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[distinct_channels_table]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[distinct_channels_table](
	[channel X-axis] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distinct_Scenario]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distinct_Scenario](
	[Scenario] [nvarchar](255) NULL,
	[Scenario description] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[TimePeriod] [nvarchar](255) NULL,
	[TimeStamp] [nvarchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[distinctpackageschecktemp]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[distinctpackageschecktemp](
	[pricecurve_package] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equation]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equation](
	[Scenario] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Price Type] [nvarchar](255) NULL,
	[Slope] [float] NULL,
	[Intercept] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equationtable]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equationtable](
	[Scenario] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [nvarchar](255) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[Combo] [nvarchar](255) NULL,
	[Slope] [float] NULL,
	[Intercept] [float] NULL,
	[Scenario_channel] [varchar](200) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Help text1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Help text1](
	[Module] [nvarchar](255) NULL,
	[Item] [nvarchar](255) NULL,
	[Help text] [nvarchar](255) NULL,
	[Donut value] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Scenario] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Image Name] [nvarchar](255) NULL,
	[Scenario-Group] [nvarchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Curve Plot]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innovation Curve Plot](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [nvarchar](255) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[PriceChart_Current Price] [float] NULL,
	[PriceCurve_Optimized] [float] NULL,
	[Destination Price] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[PriceCurve_Xaxis] [float] NULL,
	[Premiumness Index] [float] NULL,
	[ln(1-PMI)] [float] NULL,
	[Combo] [nvarchar](255) NULL,
	[Scenario_channel_Pricetype] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Index]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innovation Index](
	[Scenario] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[PriceChart_Price_Type_WT_Promo_AWR] [nvarchar](255) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[Scenario_channel] [nvarchar](255) NULL,
	[Scenario_Channel_PriceType] [nvarchar](255) NULL,
	[Scenario_Channel_PriceUnit] [nvarchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innovation Package View1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Names] [nvarchar](255) NULL,
	[Package Name] [nvarchar](255) NULL,
	[Proposed Premium Index] [float] NULL,
	[Oz per Unit] [float] NULL,
	[Units per Pack] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel] [varchar](200) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innovation Package View2](
	[Scenario] [nvarchar](50) NOT NULL,
	[Scenario_Description] [nvarchar](500) NOT NULL,
	[Time_Period] [nvarchar](50) NOT NULL,
	[Bottler] [nvarchar](50) NOT NULL,
	[Channel] [nvarchar](50) NOT NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](50) NOT NULL,
	[Price_Type_OZ_EQ_Unit] [nvarchar](50) NOT NULL,
	[Package_Names] [nvarchar](50) NOT NULL,
	[Index] [float] NOT NULL,
	[White_Tag_Value] [float] NOT NULL,
	[Promo_Value] [float] NOT NULL,
	[AWR_Value] [float] NOT NULL,
	[Timestamp] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View2_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innovation Package View2_new](
	[Scenario] [nvarchar](255) NULL,
	[Scenario_Description] [nvarchar](255) NULL,
	[Time_Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](500) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[Premiumness_Index] [float] NULL,
	[White_Tag] [float] NULL,
	[Promo] [float] NULL,
	[AWR] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel_PriceUnit] [nvarchar](500) NULL,
	[White_Tag_CP] [float] NULL,
	[Promo_CP] [float] NULL,
	[AWR_CP] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View2_new_copy]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innovation Package View2_new_copy](
	[Scenario] [nvarchar](255) NULL,
	[Scenario_Description] [nvarchar](255) NULL,
	[Time_Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](500) NULL,
	[PriceChart_Conversion] [nvarchar](255) NULL,
	[PriceCurve_Package] [nvarchar](255) NULL,
	[Premiumness_Index] [float] NULL,
	[White_Tag] [float] NULL,
	[Promo] [float] NULL,
	[AWR] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel_PriceUnit] [nvarchar](500) NULL,
	[White_Tag_CP] [float] NULL,
	[Promo_CP] [float] NULL,
	[AWR_CP] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View3]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innovation Package View3](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Premiumness Index (X Axis)] [float] NULL,
	[Price Type ( White Tag Price, Promo, AWR)] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InputBoxTable]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InputBoxTable](
	[Names] [nvarchar](255) NULL,
	[Package_Name] [nvarchar](255) NULL,
	[Proposed_Premium_Index] [nvarchar](255) NULL,
	[White_Tag] [nvarchar](255) NULL,
	[Promo] [nvarchar](255) NULL,
	[AWR] [nvarchar](255) NULL,
	[Oz_per_Unit] [nvarchar](255) NULL,
	[Units_per_Pack] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Output Charts]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Output Charts](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price(Curr,Opt,DNNSI)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[X-axis(PI)] [float] NULL,
	[Price Type ( White Tag Price, Promo, AWR)] [varchar](255) NULL,
	[Value] [float] NULL,
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Output Table]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Output Table](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type(OZ,EQ,Unit,SPC)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[Premium-ness] [float] NULL,
	[Current Price ($) - White Tag] [float] NULL,
	[Current Price ($) - Promo] [float] NULL,
	[Current Price ($) - AWR] [float] NULL,
	[Optimized Price ($) - White Tag] [float] NULL,
	[Optimized Price ($) - Promo] [float] NULL,
	[Optimized Price ($) - AWR] [float] NULL,
	[Destination Price ($) - White Tag] [float] NULL,
	[Destination Price ($) - Promo] [float] NULL,
	[Destination Price ($) - AWR] [float] NULL,
	[Price Gap (Optimized) - White Tag] [float] NULL,
	[Price Gap (Optimized) - Promo] [float] NULL,
	[Price Gap (Optimized) - AWR] [float] NULL,
	[Price Gap (Destination) - White Tag] [float] NULL,
	[Price Gap (Destination) - Promo] [float] NULL,
	[Price Gap (Destination) - AWR] [float] NULL,
	[Optimized Price Indexed - White Tag] [float] NULL,
	[Optimized Price Indexed - Promo] [float] NULL,
	[Optimized Price Indexed - AWR] [float] NULL,
	[Current Dead Net Price ($) - White Tag] [float] NULL,
	[Current Dead Net Price ($) - Promo] [float] NULL,
	[Current Dead Net Price ($) - AWR] [float] NULL,
	[Optimized Dead Net Price ($) - White Tag] [float] NULL,
	[Optimized Dead Net Price ($) - Promo] [float] NULL,
	[Optimized Dead Net Price ($) - AWR] [float] NULL,
	[Destination Dead Net Price ($) - White Tag] [float] NULL,
	[Destination Dead Net Price ($) - Promo] [float] NULL,
	[Destination Dead Net Price ($) - AWR] [float] NULL,
	[Dead Net Price Gap (Optimized) - White Tag] [float] NULL,
	[Dead Net Price Gap (Optimized) - Promo] [float] NULL,
	[Dead Net Price Gap (Optimized) - AWR] [float] NULL,
	[Dead Net Price Gap (Destination) - White Tag] [float] NULL,
	[Dead Net Price Gap (Destination) - Promo] [float] NULL,
	[Dead Net Price Gap (Destination) - AWR] [float] NULL,
	[Optimized Dead Net Price Indexed - White Tag] [float] NULL,
	[Optimized Dead Net Price Indexed - Promo] [float] NULL,
	[Optimized Dead Net Price Indexed - AWR] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[output_table_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[output_table_unpivot](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type(OZ,EQ,Unit,SPC)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[Timestamp] [varchar](255) NULL,
	[Column_name] [nvarchar](255) NULL,
	[value] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[output_table_unpivot_backup]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[output_table_unpivot_backup](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type(OZ,EQ,Unit,SPC)] [varchar](255) NULL,
	[Packages] [varchar](255) NULL,
	[Timestamp] [varchar](255) NULL,
	[Column_name] [nvarchar](128) NULL,
	[value] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oz to others multiplier]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oz to others multiplier](
	[Friendly Package Name] [nvarchar](255) NULL,
	[Package Size] [float] NULL,
	[Oz to SPC] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package Comparision View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package Comparision View1](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type] [varchar](255) NULL,
	[Conversion] [varchar](255) NULL,
	[Metric_ID] [int] NULL,
	[Metric] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[concat_new] [varchar](255) NULL,
	[concat_new2] [varchar](255) NULL,
	[concat_new3] [varchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package Comparision View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package Comparision View2](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type] [varchar](255) NULL,
	[Conversion] [varchar](255) NULL,
	[Metric_ID] [int] NULL,
	[Metric] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[concat_new] [varchar](255) NULL,
	[concat_new2] [varchar](255) NULL,
	[concat_new3] [varchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View1_abhinav]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View1_abhinav](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[flag] [varchar](50) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View1_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View1_new](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[flag] [varchar](50) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Current Volume] [float] NULL,
	[Y1 Volume] [float] NULL,
	[Y2 Volume] [float] NULL,
	[Y3 Volume] [float] NULL,
	[Conversion Factor] [float] NULL,
	[Current Price] [float] NULL,
	[Current Price y1] [float] NULL,
	[Current Price y2] [float] NULL,
	[Current Price y3] [float] NULL,
	[Destination Price] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View1_new_bkp19032021]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View1_new_bkp19032021](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[flag] [varchar](50) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View2](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[Other Group ] [nvarchar](255) NULL,
	[Other Package] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View2_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View2_new](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[Flag] [nvarchar](255) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Falg 2] [nvarchar](255) NULL,
	[Current Volume] [float] NULL,
	[Y1 Volume] [float] NULL,
	[Y2 Volume] [float] NULL,
	[Y3 Volume] [float] NULL,
	[Conversion Factor] [float] NULL,
	[Current Price] [float] NULL,
	[Current Price y1] [float] NULL,
	[Current Price y2] [float] NULL,
	[Current Price y3] [float] NULL,
	[Destination Price] [float] NULL,
	[Channelnew] [nvarchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View2_new_bkp19032021]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View2_new_bkp19032021](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[Flag] [nvarchar](255) NULL,
	[rankyear1] [float] NULL,
	[rankyear2] [float] NULL,
	[rankyear3] [float] NULL,
	[Falg 2] [nvarchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View3]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View3](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Year Filter] [nvarchar](255) NULL,
	[YOY] [float] NULL,
	[Timestamp] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View4]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View4](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Sl#No] [float] NULL,
	[Year Filter] [nvarchar](255) NULL,
	[YOY] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View5]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM View5](
	[Scenario] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Img] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM1_benchmark]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHRM1_benchmark](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Price Change Option(Retailer,Deadnet)] [nvarchar](255) NULL,
	[Data Channel] [nvarchar](255) NULL,
	[Packages] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Price Growth] [float] NULL,
	[Adjusted Price Growth] [float] NULL,
	[Index] [float] NULL,
	[Volume] [float] NULL,
	[Year 1] [float] NULL,
	[Year 2] [float] NULL,
	[Year 3] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario-grp] [nvarchar](255) NULL,
	[flag] [varchar](9) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Index] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Pic] [nvarchar](550) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures_old]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures_old](
	[Index] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Pic] [nvarchar](550) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures2](
	[Index] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Pic] [nvarchar](550) NULL,
	[Channel] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Select Scenario View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Select Scenario View1](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Package Name] [varchar](255) NULL,
	[Include for Optimization?] [varchar](255) NULL,
	[Include for Promo Modelling] [varchar](255) NULL,
	[Premium-ness] [float] NULL,
	[White Tag Elasticity] [float] NULL,
	[Promo Elasticity] [float] NULL,
	[AWR Elasticity] [float] NULL,
	[White Tag Margins] [float] NULL,
	[Promo Margins] [float] NULL,
	[AWR Price Margins] [float] NULL,
	[Min Price Increase on White Tag Price] [float] NULL,
	[Min Price Increase on Promo Price] [float] NULL,
	[Max Price Increase on White Tag price] [float] NULL,
	[Max Price Increase on Promo price] [float] NULL,
	[Max Allowed decline in White Tag Volume_Package] [float] NULL,
	[Max Allowed decline in Promo Volume_Package] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Select Scenario View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Select Scenario View2](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Volume Mix_Perc] [float] NULL,
	[Bounds_Include_Exclude] [varchar](255) NULL,
	[Maximum allowed decline in White Tag Volume_Rate change] [float] NULL,
	[Maximum allowed decline in Promo Volume_Rate change] [float] NULL,
	[YOY Year 1] [float] NULL,
	[YOY Year 2] [float] NULL,
	[YOY Year 3] [float] NULL,
	[Momentum_Enable_Disable] [varchar](255) NULL,
	[PackageLevel_VolConst_Enable_Disable] [varchar](255) NULL,
	[Timestamp] [varchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Select Scenario View3]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Select Scenario View3](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Sl. No.] [int] NULL,
	[Available Package Group in Channels] [varchar](255) NULL,
	[User Input Groups] [varchar](255) NULL,
	[Momentum_Value] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summary Sheet View1](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[VolGraph_ X-axis(Wt,Pro,Tot)] [varchar](255) NULL,
	[Current Total Volume] [float] NULL,
	[Optimized Total Volume] [float] NULL,
	[Change in Volume] [float] NULL,
	[Current Total Revenue] [float] NULL,
	[Optimized Total Revenue] [float] NULL,
	[Change in Revenue] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[Current Bottler Revenue] [float] NULL,
	[Optimized Bottler Revenue] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View1_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summary Sheet View1_new](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[VolGraph_ X-axis(Wt,Pro,Tot)] [varchar](255) NULL,
	[Current Total Volume] [float] NULL,
	[Optimized Total Volume] [float] NULL,
	[Change in Volume] [float] NULL,
	[Current Total Revenue] [float] NULL,
	[Optimized Total Revenue] [float] NULL,
	[Change in Revenue] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[Current Bottler Revenue] [float] NULL,
	[Optimized Bottler Revenue] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View1_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summary Sheet View1_unpivot](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [nvarchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[VolGraph_ X-axis(Wt,Pro,Tot)] [nvarchar](255) NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Measure] [nvarchar](255) NULL,
	[Current value] [float] NULL,
	[Optimized value] [float] NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summary Sheet View2](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [varchar](255) NULL,
	[PriceChart_Conversion] [varchar](255) NULL,
	[PriceChart_Packages] [varchar](255) NULL,
	[PriceChart_Current Price] [float] NULL,
	[PriceChart_Optimized Price] [float] NULL,
	[Price Gap(Current vs Optimized) MIN] [float] NULL,
	[Price Gap(Current vs Optimized) MAX] [float] NULL,
	[Price Gap(Current vs Optimized) delta] [float] NULL,
	[Price Gap(Current vs Destination) MIN] [float] NULL,
	[Price Gap(Current vs Destination) MAX] [float] NULL,
	[Price Gap(Current vs Destination) delta] [float] NULL,
	[Price Gap(Current vs Optimized) Delta negative] [float] NULL,
	[Price Gap(Current vs Optimized) Delta positive] [float] NULL,
	[Price Gap(Current vs Destination) Delta negative] [float] NULL,
	[Price Gap(Current vs Destination) Delta positive] [float] NULL,
	[Destination Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[UpdatedBy] [varchar](255) NULL,
	[UpdatedTimestamp] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View2_backup]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summary Sheet View2_backup](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[PriceChart_Price Type(WT,Promo,AWR)] [varchar](255) NULL,
	[PriceChart_Conversion] [varchar](255) NULL,
	[PriceChart_Packages] [varchar](255) NULL,
	[PriceChart_Current Price] [float] NULL,
	[PriceChart_Optimized Price] [float] NULL,
	[Price Gap(Current vs Optimized) MIN] [float] NULL,
	[Price Gap(Current vs Optimized) MAX] [float] NULL,
	[Price Gap(Current vs Optimized) delta] [float] NULL,
	[Price Gap(Current vs Destination) MIN] [float] NULL,
	[Price Gap(Current vs Destination) MAX] [float] NULL,
	[Price Gap(Current vs Destination) delta] [float] NULL,
	[Price Gap(Current vs Optimized) Delta negative] [float] NULL,
	[Price Gap(Current vs Optimized) Delta positive] [float] NULL,
	[Price Gap(Current vs Destination) Delta negative] [float] NULL,
	[Price Gap(Current vs Destination) Delta positive] [float] NULL,
	[Destination Price] [float] NULL,
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View3]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summary Sheet View3](
	[Scenario] [varchar](255) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[PriceCurve_Price Type(Wt,Promo,AWR)] [varchar](255) NULL,
	[PriceCurve_Package] [varchar](255) NULL,
	[Price Curve_X - axis] [float] NULL,
	[PriceCurve_Current Prices] [float] NULL,
	[PriceCurve_Optimized] [float] NULL,
	[PriceCurve_Destination] [float] NULL,
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp1](
	[Scenario] [nvarchar](255) NULL,
	[Scenario description] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[TimePeriod] [nvarchar](255) NULL,
	[TimeStamp] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempp]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempp](
	[Scenario] [nvarchar](255) NULL,
	[Scenario Description] [nvarchar](255) NULL,
	[Time Period] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [nvarchar](255) NULL,
	[Names] [nvarchar](255) NULL,
	[Package Name] [nvarchar](255) NULL,
	[Proposed Premium Index] [float] NULL,
	[Oz per Unit] [float] NULL,
	[Units per Pack] [float] NULL,
	[Timestamp] [nvarchar](255) NULL,
	[Scenario_channel] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test1](
	[Scenario] [varchar](500) NULL,
	[Scenario Description] [varchar](500) NULL,
	[Time Period] [varchar](255) NULL,
	[Bottler] [varchar](255) NULL,
	[Channel] [varchar](255) NULL,
	[Concat_Sce_TP_Bott_Chan] [varchar](255) NULL,
	[Price Type] [varchar](255) NULL,
	[Conversion] [varchar](255) NULL,
	[Metric_ID] [int] NULL,
	[Metric] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Price] [float] NULL,
	[Timestamp] [varchar](255) NULL,
	[concat_new] [varchar](255) NULL,
	[concat_new2] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TooltipImage]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TooltipImage](
	[Index] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Pic] [nvarchar](550) NULL,
	[Packages] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TooltipImage_bkp19032021]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TooltipImage_bkp19032021](
	[Index] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Pic] [nvarchar](550) NULL,
	[Packages] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Competition_Comparison_View]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Competition_Comparison_View]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Competition_Comparison_View] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Competition Comparison View](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Competition_Comparison_View] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Packages],
		[Timestamp],
		[Price type],
		[Current Prices on the Curve(Oz Price)],
		[Oz to UP mutiplier],
		[Current Prices on the Curve(Unit Price)],
		[Nearest Major Competitor],
		[Comp# Current Prices on the Curve(Unit Price)],
		[Relative Price Index],
		[NAOU Volume Share],
		[Rate Guidance based on Competition],
		[PBNA vol# share],
		[DPSG vol# share],
		[RecoID],
		[NAOU value Share],
		[PBNA value share],
		[DPSG value share],
		[NAOU_currentvol],
		[PBNA Price],
		[DPSG Price],
		[PBNA Volume],
		[DPSG Volume], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Competition Comparison View]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Competition Comparison View]
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
		[Packages],
		[Timestamp],
		[Price type],
		[Current Prices on the Curve(Oz Price)],
		[Oz to UP mutiplier],
		[Current Prices on the Curve(Unit Price)],
		[Nearest Major Competitor],
		[Comp# Current Prices on the Curve(Unit Price)],
		[Relative Price Index],
		[NAOU Volume Share],
		[Rate Guidance based on Competition],
		[PBNA vol# share],
		[DPSG vol# share],
		[RecoID],
		[NAOU value Share],
		[PBNA value share],
		[DPSG value share],
		[NAOU_currentvol],
		[PBNA Price],
		[DPSG Price],
		[PBNA Volume],
		[DPSG Volume],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Competition Comparison View] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Cross_Channel_Coherency_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Cross_Channel_Coherency_View1]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Cross_Channel_Coherency_View1] ReadOnly,
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
	BEGIN TRY 
	set @Scenario = (select Distinct TOP(1) [Scenario] from @tvpTable);
	--THROW 60000,@channel,1;
	IF EXISTS (SELECT * FROM [dbo].[Cross-Channel Coherency View1](nolock) WHERE [Scenario] = @Scenario)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Cross_Channel_Coherency_View1] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Package Filter],
		[Price Type (OP,Curr)],
		[Channel X-Axis],
		[Price kind(WT-Promo-AWR)],
		[Price value],
		[Timestamp],
		[Oz_to_UP_m],
		[Oz_to_SPC_m],
		[Price value_UnitPrice],
		[volume], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Cross-Channel Coherency View1]
	WHERE [Scenario] = @Scenario;

	DELETE FROM [dbo].[Cross-Channel Coherency View1]
	WHERE [Scenario] = @Scenario;
	END
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Package Filter],
		[Price Type (OP,Curr)],
		[Channel X-Axis],
		[Price kind(WT-Promo-AWR)],
		[Price value],
		[Timestamp],
		[Oz_to_UP_m],
		[Oz_to_SPC_m],
		[Price value_UnitPrice],
		[volume],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario;
	
	insert into [dbo].[Cross-Channel Coherency View1] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Cross_Channel_Coherency_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Cross_Channel_Coherency_View2]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Cross_Channel_Coherency_View2] ReadOnly,
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
	BEGIN TRY 
	set @Scenario = (select Distinct TOP(1) [Scenario] from @tvpTable);
	--THROW 60000,@channel,1;
	IF EXISTS (SELECT * FROM [dbo].[Cross-Channel Coherency View2](nolock) WHERE [Scenario] = @Scenario)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Cross_Channel_Coherency_View2] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Type(WT, Promo, AWR)],
		[Package],
		[X-axis(PMI)],
		[Y-axis(Gap to curve)],
		[Legend(Channel)],
		[Timestamp],
		[rank],
		[Current Oz Price],
		[Optimized Oz Price],
		[Current Unit Price],
		[Optimized Unit Price], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Cross-Channel Coherency View2]
	WHERE [Scenario] = @Scenario;

	DELETE FROM [dbo].[Cross-Channel Coherency View2]
	WHERE [Scenario] = @Scenario;
	END
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Type(WT, Promo, AWR)],
		[Package],
		[X-axis(PMI)],
		[Y-axis(Gap to curve)],
		[Legend(Channel)],
		[Timestamp],
		[rank],
		[Current Oz Price],
		[Optimized Oz Price],
		[Current Unit Price],
		[Optimized Unit Price],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario;
	
	insert into [dbo].[Cross-Channel Coherency View2] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Curve_table1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
CREATE PROCEDURE [dbo].[papafuncapp_addrows_Curve_table1]
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
GO
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Curve_table2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Curve_table2]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Curve_table2] ReadOnly,
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
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Curve table2] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Distinct_Scenario]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Distinct_Scenario]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Distinct_Scenario] ReadOnly,
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
	BEGIN TRY 
	set @Scenario = (select Distinct TOP(1) [Scenario] from @tvpTable);
	--THROW 60000,@channel,1;
	IF EXISTS (SELECT * FROM [dbo].[Distinct_Scenario](nolock) WHERE [Scenario] = @Scenario)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Distinct_Scenario] 
	SELECT 
		[Scenario],
		[Scenario description],
		[Bottler],
		[TimePeriod],
		[TimeStamp], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Distinct_Scenario]
	WHERE [Scenario] = @Scenario;

	DELETE FROM [dbo].[Distinct_Scenario]
	WHERE [Scenario] = @Scenario;
	END
	SELECT 
		[Scenario],
		[Scenario description],
		[Bottler],
		[TimePeriod],
		[TimeStamp],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario;
	
	insert into [dbo].[Distinct_Scenario] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Equationtable]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Equationtable]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Equationtable] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Equationtable](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Equationtable] 
	SELECT 
		[Scenario],
		[Channel],
		[PriceChart_Price Type(WT,Promo,AWR)],
		[PriceChart_Conversion],
		[Combo],
		[Slope],
		[Intercept],
		[Scenario_channel], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Equationtable]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Equationtable]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END
	SELECT 
		[Scenario],
		[Channel],
		[PriceChart_Price Type(WT,Promo,AWR)],
		[PriceChart_Conversion],
		[Combo],
		[Slope],
		[Intercept],
		[Scenario_channel],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Equationtable] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Image]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Image]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Image_type] ReadOnly,
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
	BEGIN TRY 
	set @Scenario = (select Distinct TOP(1) [Scenario] from @tvpTable);
	--THROW 60000,@channel,1;
	IF EXISTS (SELECT * FROM [dbo].[Image](nolock) WHERE [Scenario] = @Scenario)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Image] 
	SELECT 
		[Scenario],
		[Group],
		[Image Name],
		[Scenario-Group], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Image]
	WHERE [Scenario] = @Scenario;

	DELETE FROM [dbo].[Image]
	WHERE [Scenario] = @Scenario;
	END
	SELECT 
		[Scenario],
		[Group],
		[Image Name],
		[Scenario-Group],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario;
	
	insert into [dbo].[Image] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Innovation_Index]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Innovation_Index]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Innovation_Index] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Innovation Index](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Innovation_Index] 
	SELECT 
		[Scenario],
		[Channel],
		[PriceChart_Price_Type_WT_Promo_AWR],
		[PriceChart_Conversion],
		[Scenario_channel],
		[Scenario_Channel_PriceType],
		[Scenario_Channel_PriceUnit], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Innovation Index]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Innovation Index]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END
	SELECT 
		[Scenario],
		[Channel],
		[PriceChart_Price_Type_WT_Promo_AWR],
		[PriceChart_Conversion],
		[Scenario_channel],
		[Scenario_Channel_PriceType],
		[Scenario_Channel_PriceUnit],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Innovation Index] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Innovation_Package_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Innovation_Package_View1]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Innovation_Package_View1] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Innovation_Package_View1](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Innovation_Package_View1] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Names],
		[Package Name],
		[Proposed Premium Index],
		[Oz per Unit],
		[Units per Pack],
		[Timestamp],
		[Scenario_channel], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Innovation_Package_View1]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Innovation_Package_View1]
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
		[Names],
		[Package Name],
		[Proposed Premium Index],
		[Oz per Unit],
		[Units per Pack],
		[Timestamp],
		[Scenario_channel],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Innovation_Package_View1] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Innovation_Package_View2_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Innovation_Package_View2_new]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Innovation_Package_View2_new] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Innovation Package View2_new](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Innovation_Package_View2_new] 
	SELECT 
		[Scenario],
		[Scenario_Description],
		[Time_Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceChart_Conversion],
		[PriceCurve_Package],
		[Premiumness_Index],
		[White_Tag],
		[Promo],
		[AWR],
		[Timestamp],
		[Scenario_channel_PriceUnit],
		[White_Tag_CP],
		[Promo_CP],
		[AWR_CP], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Innovation Package View2_new]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Innovation Package View2_new]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END
	SELECT 
		[Scenario],
		[Scenario_Description],
		[Time_Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceChart_Conversion],
		[PriceCurve_Package],
		[Premiumness_Index],
		[White_Tag],
		[Promo],
		[AWR],
		[Timestamp],
		[Scenario_channel_PriceUnit],
		[White_Tag_CP],
		[Promo_CP],
		[AWR_CP],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Innovation Package View2_new] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Innovation_Package_View2_new_copy]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Innovation_Package_View2_new_copy]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Innovation_Package_View2_new_copy] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Innovation Package View2_new_copy](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Innovation_Package_View2_new_copy] 
	SELECT 
		[Scenario],
		[Scenario_Description],
		[Time_Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceChart_Conversion],
		[PriceCurve_Package],
		[Premiumness_Index],
		[White_Tag],
		[Promo],
		[AWR],
		[Timestamp],
		[Scenario_channel_PriceUnit],
		[White_Tag_CP],
		[Promo_CP],
		[AWR_CP], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Innovation Package View2_new_copy]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Innovation Package View2_new_copy]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;
	END
	SELECT 
		[Scenario],
		[Scenario_Description],
		[Time_Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceChart_Conversion],
		[PriceCurve_Package],
		[Premiumness_Index],
		[White_Tag],
		[Promo],
		[AWR],
		[Timestamp],
		[Scenario_channel_PriceUnit],
		[White_Tag_CP],
		[Promo_CP],
		[AWR_CP],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Innovation Package View2_new_copy] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Output_Table]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
CREATE PROCEDURE [dbo].[papafuncapp_addrows_Output_Table]
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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_output_table_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_output_table_unpivot]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[output_table_unpivot] ReadOnly,
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
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[output_table_unpivot] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Package_Comparision_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Package_Comparision_View1]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Package_Comparision_View1] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Package Comparision View1](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Package_Comparision_View1] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Type],
		[Conversion],
		[Metric_ID],
		[Metric],
		[Product],
		[Price],
		[Timestamp],
		[concat_new],
		[concat_new2],
		[concat_new3], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Package Comparision View1]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Package Comparision View1]
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
		[Price Type],
		[Conversion],
		[Metric_ID],
		[Metric],
		[Product],
		[Price],
		[Timestamp],
		[concat_new],
		[concat_new2],
		[concat_new3],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Package Comparision View1] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Package_Comparision_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Package_Comparision_View2]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Package_Comparision_View2] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Package Comparision View2](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Package_Comparision_View2] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Type],
		[Conversion],
		[Metric_ID],
		[Metric],
		[Product],
		[Price],
		[Timestamp],
		[concat_new],
		[concat_new2],
		[concat_new3], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Package Comparision View2]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Package Comparision View2]
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
		[Price Type],
		[Conversion],
		[Metric_ID],
		[Metric],
		[Product],
		[Price],
		[Timestamp],
		[concat_new],
		[concat_new2],
		[concat_new3],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Package Comparision View2] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_PHRM_View1_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_PHRM_View1_new]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[PHRM_View1_new] ReadOnly,
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
	BEGIN TRY 
	set @Scenario = (select Distinct TOP(1) [Scenario] from @tvpTable);
	--THROW 60000,@channel,1;
	IF EXISTS (SELECT * FROM [dbo].[PHRM View1_new](nolock) WHERE [Scenario] = @Scenario)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_PHRM_View1_new] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Change Option(Retailer,Deadnet)],
		[Data Channel],
		[Packages],
		[Group],
		[Price Growth],
		[Adjusted Price Growth],
		[Index],
		[Volume],
		[Year 1],
		[Year 2],
		[Year 3],
		[Timestamp],
		[Scenario-grp],
		[flag],
		[rankyear1],
		[rankyear2],
		[rankyear3],
		[Current Volume],
		[Y1 Volume],
		[Y2 Volume],
		[Y3 Volume],
		[Conversion Factor],
		[Current Price],
		[Current Price y1],
		[Current Price y2],
		[Current Price y3],
		[Destination Price], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[PHRM View1_new]
	WHERE [Scenario] = @Scenario;

	DELETE FROM [dbo].[PHRM View1_new]
	WHERE [Scenario] = @Scenario;
	END
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Change Option(Retailer,Deadnet)],
		[Data Channel],
		[Packages],
		[Group],
		[Price Growth],
		[Adjusted Price Growth],
		[Index],
		[Volume],
		[Year 1],
		[Year 2],
		[Year 3],
		[Timestamp],
		[Scenario-grp],
		[flag],
		[rankyear1],
		[rankyear2],
		[rankyear3],
		[Current Volume],
		[Y1 Volume],
		[Y2 Volume],
		[Y3 Volume],
		[Conversion Factor],
		[Current Price],
		[Current Price y1],
		[Current Price y2],
		[Current Price y3],
		[Destination Price],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario;
	
	insert into [dbo].[PHRM View1_new] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_PHRM_View2_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_PHRM_View2_new]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[PHRM_View2_new] ReadOnly,
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
	BEGIN TRY 
	set @Scenario = (select Distinct TOP(1) [Scenario] from @tvpTable);
	--THROW 60000,@channel,1;
	IF EXISTS (SELECT * FROM [dbo].[PHRM View2_new](nolock) WHERE [Scenario] = @Scenario)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_PHRM_View2_new] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Change Option(Retailer,Deadnet)],
		[Data Channel],
		[Packages],
		[Group],
		[Price Growth],
		[Adjusted Price Growth],
		[Index],
		[Volume],
		[Year 1],
		[Year 2],
		[Year 3],
		[Timestamp],
		[Scenario-grp],
		[Flag],
		[rankyear1],
		[rankyear2],
		[rankyear3],
		[Falg 2],
		[Current Volume],
		[Y1 Volume],
		[Y2 Volume],
		[Y3 Volume],
		[Conversion Factor],
		[Current Price],
		[Current Price y1],
		[Current Price y2],
		[Current Price y3],
		[Destination Price],
		[Channelnew],
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[PHRM View2_new]
	WHERE [Scenario] = @Scenario;

	DELETE FROM [dbo].[PHRM View2_new]
	WHERE [Scenario] = @Scenario;
	END
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Price Change Option(Retailer,Deadnet)],
		[Data Channel],
		[Packages],
		[Group],
		[Price Growth],
		[Adjusted Price Growth],
		[Index],
		[Volume],
		[Year 1],
		[Year 2],
		[Year 3],
		[Timestamp],
		[Scenario-grp],
		[Flag],
		[rankyear1],
		[rankyear2],
		[rankyear3],
		[Falg 2],
		[Current Volume],
		[Y1 Volume],
		[Y2 Volume],
		[Y3 Volume],
		[Conversion Factor],
		[Current Price],
		[Current Price y1],
		[Current Price y2],
		[Current Price y3],
		[Destination Price],
		[Channelnew],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario;
	
	insert into [dbo].[PHRM View2_new] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Select_Scenario_View1]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Select_Scenario_View1]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Select_Scenario_View1] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Select Scenario View1](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Select_Scenario_View1] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Package Name],
		[Include for Optimization?],
		[Include for Promo Modelling],
		[Premium-ness],
		[White Tag Elasticity],
		[Promo Elasticity],
		[AWR Elasticity],
		[White Tag Margins],
		[Promo Margins],
		[AWR Price Margins],
		[Min Price Increase on White Tag Price],
		[Min Price Increase on Promo Price],
		[Max Price Increase on White Tag price],
		[Max Price Increase on Promo price],
		[Max Allowed decline in White Tag Volume_Package],
		[Max Allowed decline in Promo Volume_Package],
		[Timestamp], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Select Scenario View1]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Select Scenario View1]
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
		[Package Name],
		[Include for Optimization?],
		[Include for Promo Modelling],
		[Premium-ness],
		[White Tag Elasticity],
		[Promo Elasticity],
		[AWR Elasticity],
		[White Tag Margins],
		[Promo Margins],
		[AWR Price Margins],
		[Min Price Increase on White Tag Price],
		[Min Price Increase on Promo Price],
		[Max Price Increase on White Tag price],
		[Max Price Increase on Promo price],
		[Max Allowed decline in White Tag Volume_Package],
		[Max Allowed decline in Promo Volume_Package],
		[Timestamp],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Select Scenario View1] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Select_Scenario_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Select_Scenario_View2]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Select_Scenario_View2] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Select Scenario View2](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Select_Scenario_View2] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Volume Mix_Perc],
		[Bounds_Include_Exclude],
		[Maximum allowed decline in White Tag Volume_Rate change],
		[Maximum allowed decline in Promo Volume_Rate change],
		[YOY Year 1],
		[YOY Year 2],
		[YOY Year 3],
		[Momentum_Enable_Disable],
		[PackageLevel_VolConst_Enable_Disable],
		[Timestamp], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Select Scenario View2]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Select Scenario View2]
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
		[Volume Mix_Perc],
		[Bounds_Include_Exclude],
		[Maximum allowed decline in White Tag Volume_Rate change],
		[Maximum allowed decline in Promo Volume_Rate change],
		[YOY Year 1],
		[YOY Year 2],
		[YOY Year 3],
		[Momentum_Enable_Disable],
		[PackageLevel_VolConst_Enable_Disable],
		[Timestamp],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Select Scenario View2] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Select_Scenario_View3]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Select_Scenario_View3]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Select_Scenario_View3] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Select Scenario View3](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Select_Scenario_View3] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[Sl. No.],
		[Available Package Group in Channels],
		[User Input Groups],
		[Momentum_Value],
		[Timestamp], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Select Scenario View3]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Select Scenario View3]
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
		[Sl. No.],
		[Available Package Group in Channels],
		[User Input Groups],
		[Momentum_Value],
		[Timestamp],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Select Scenario View3] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Summary_Sheet_View1_new]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
CREATE PROCEDURE [dbo].[papafuncapp_addrows_Summary_Sheet_View1_new]
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
GO
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Summary_Sheet_View1_unpivot]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Summary_Sheet_View1_unpivot]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Summary_Sheet_View1_unpivot] ReadOnly,
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
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Summary Sheet View1_unpivot] 
	select * from #temp

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
/****** Object:  StoredProcedure [dbo].[papafuncapp_addrows_Summary_Sheet_View2]    Script Date: 07-04-2021 10:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: PaPA CodeGenerator
-- =============================================
Create PROCEDURE [dbo].[papafuncapp_addrows_Summary_Sheet_View2]
(
    -- Add the parameters for the stored procedure here
    @tvpTable [dbo].[Summary_Sheet_View2] ReadOnly,
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
	IF EXISTS (SELECT * FROM [dbo].[Summary Sheet View2](nolock) WHERE [Scenario] = @Scenario AND [Channel] = @channel)
	BEGIN
	
	INSERT INTO [dbo].[Deleted_Summary_Sheet_View2] 
	SELECT 
		[Scenario],
		[Scenario Description],
		[Time Period],
		[Bottler],
		[Channel],
		[Concat_Sce_TP_Bott_Chan],
		[PriceChart_Price Type(WT,Promo,AWR)],
		[PriceChart_Conversion],
		[PriceChart_Packages],
		[PriceChart_Current Price],
		[PriceChart_Optimized Price],
		[Price Gap(Current vs Optimized) MIN],
		[Price Gap(Current vs Optimized) MAX],
		[Price Gap(Current vs Optimized) delta],
		[Price Gap(Current vs Destination) MIN],
		[Price Gap(Current vs Destination) MAX],
		[Price Gap(Current vs Destination) delta],
		[Price Gap(Current vs Optimized) Delta negative],
		[Price Gap(Current vs Optimized) Delta positive],
		[Price Gap(Current vs Destination) Delta negative],
		[Price Gap(Current vs Destination) Delta positive],
		[Destination Price],
		[Timestamp], 
        [UpdatedBy],
		[UpdatedTimeStamp],
		@emailId,
		CURRENT_TIMESTAMP
	FROM [dbo].[Summary Sheet View2]
	WHERE [Scenario] = @Scenario
	AND [Channel] = @channel;

	DELETE FROM [dbo].[Summary Sheet View2]
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
		[PriceChart_Price Type(WT,Promo,AWR)],
		[PriceChart_Conversion],
		[PriceChart_Packages],
		[PriceChart_Current Price],
		[PriceChart_Optimized Price],
		[Price Gap(Current vs Optimized) MIN],
		[Price Gap(Current vs Optimized) MAX],
		[Price Gap(Current vs Optimized) delta],
		[Price Gap(Current vs Destination) MIN],
		[Price Gap(Current vs Destination) MAX],
		[Price Gap(Current vs Destination) delta],
		[Price Gap(Current vs Optimized) Delta negative],
		[Price Gap(Current vs Optimized) Delta positive],
		[Price Gap(Current vs Destination) Delta negative],
		[Price Gap(Current vs Destination) Delta positive],
		[Destination Price],
		[Timestamp],
		@emailId as [UpdatedBy],
		CURRENT_TIMESTAMP as [UpdatedTimeStamp]
		into #temp
	FROM @tvpTable
	where [Scenario] = @Scenario
	AND [Channel] = @channel;
	
	insert into [dbo].[Summary Sheet View2] 
	select * from #temp

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
