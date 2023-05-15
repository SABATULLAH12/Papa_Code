/****** Object:  Table [dbo].[Cross-Channel Coherency View2_backup]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[distinct_channels_table]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[distinct_channels_table](
	[channel X-axis] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[distinctpackageschecktemp]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[distinctpackageschecktemp](
	[pricecurve_package] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equation]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Help text1]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Innovation Curve Plot]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Innovation Package View1]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Scenario_channel] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Innovation Package View2]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Innovation Package View3]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[InputBoxTable]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Output Charts]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[output_table_unpivot_backup]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Oz to others multiplier]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[PHRM View1]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[PHRM View1_abhinav]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[PHRM View2]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[PHRM View3]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[PHRM View4]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[PHRM View5]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[PHRM1_benchmark]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Pictures]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Index] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Pic] [nvarchar](550) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures v1]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures v1](
	[Index] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Pic] [nvarchar](550) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures_old]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Pictures2]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures2](
	[Index] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Pic] [nvarchar](550) NOT NULL,
	[Channel] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summary Sheet View1]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Summary Sheet View2_backup]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[Summary Sheet View3]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[temp1]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[tempp]    Script Date: 15-02-2021 11:24:45 ******/
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
/****** Object:  Table [dbo].[test1]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test1](
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
	[concat_new2] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TooltipImage]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TooltipImage](
	[Index] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Pic] [nvarchar](550) NOT NULL,
	[Packages] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TooltipImage v1]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TooltipImage v1](
	[Index] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Pic] [nvarchar](550) NOT NULL,
	[Packages] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
