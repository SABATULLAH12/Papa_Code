/****** Object:  Table [dbo].[Competition Comparison View]    Script Date: 15-02-2021 11:24:45 ******/
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
	[DPSG Volume] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curve table1]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Retailer/Deadnet] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curve table2]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Type] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equationtable]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Scenario_channel] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Index]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Scenario_Channel_PriceUnit] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View2_new]    Script Date: 15-02-2021 11:24:45 ******/
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
	[AWR_CP] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View2_new_copy]    Script Date: 15-02-2021 11:24:45 ******/
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
	[AWR_CP] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Output Table]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[output_table_unpivot]    Script Date: 15-02-2021 11:24:45 ******/
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
	[value] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package Comparision View1]    Script Date: 15-02-2021 11:24:45 ******/
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
	[concat_new3] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package Comparision View2]    Script Date: 15-02-2021 11:24:45 ******/
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
	[concat_new3] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Select Scenario View1]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Select Scenario View2]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Select Scenario View3]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View1_new]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Optimized Bottler Revenue] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View1_unpivot]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Optimized value] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View2]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Timestamp] [varchar](255) NULL
) ON [PRIMARY]
GO
