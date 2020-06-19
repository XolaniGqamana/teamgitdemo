USE [INF2691]
GO

/****** Object:  Table [PVF].[CUSTOMER]    Script Date: 2020/06/19 08:49:32 ******/
DROP TABLE [PVF].[CUSTOMER]
GO

/****** Object:  Table [PVF].[CUSTOMER]    Script Date: 2020/06/19 08:49:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [PVF].[CUSTOMER](
	[customerId] [numeric](11, 0) NOT NULL,
	[customerName] [varchar](25) NOT NULL,
	[customerAddress] [varchar](30) NULL,
	[customerCity] [varchar](20) NULL,
	[customerProvince] [char](2) NULL,
	[customerPostalCode] [varchar](10) NULL,
 CONSTRAINT [pkCustomer] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


