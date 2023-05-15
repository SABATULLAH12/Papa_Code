/****** Object:  Table [dbo].[Cross-Channel Coherency View1]    Script Date: 15-02-2021 11:24:45 ******/
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
	[volume] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cross-Channel Coherency View2]    Script Date: 15-02-2021 11:24:45 ******/
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
	[Optimized Unit Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distinct_Scenario]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distinct_Scenario](
	[Scenario] [nvarchar](255) NULL,
	[Scenario description] [nvarchar](255) NULL,
	[Bottler] [nvarchar](255) NULL,
	[TimePeriod] [nvarchar](255) NULL,
	[TimeStamp] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 15-02-2021 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Scenario] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Image Name] [nvarchar](255) NULL,
	[Scenario-Group] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View1_new]    Script Date: 05-03-2021 12:19:56 ******/
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
	[Destination Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHRM View2_new]    Script Date: 05-03-2021 12:20:42 ******/
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
	[Channelnew] [nvarchar](255) NULL
) ON [PRIMARY]
GO
