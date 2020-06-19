USE [INF2691]
GO

ALTER TABLE [PVF].[PRODUCT] DROP CONSTRAINT [pkplProduct]
GO

/****** Object:  Table [PVF].[PRODUCT]    Script Date: 2020/06/19 09:02:13 ******/
DROP TABLE [PVF].[PRODUCT]
GO

/****** Object:  Table [PVF].[PRODUCT]    Script Date: 2020/06/19 09:02:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS(
	SELECT 
		1
	FROM 
		sys.tables as st INNER JOIN sys.schemas as ss
	ON 
		ss.schema_id = st.schema_id
	WHERE 
		st.name = 'PRODUCT'
	AND 
		ss.name = 'PVF'
	)
BEGIN
	DROP TABLE PVF.PRODUCT
END
GO
CREATE TABLE [PVF].[PRODUCT](
	[productId] [numeric](11, 0) NOT NULL,
	[productLineId] [numeric](11, 0) NULL,
	[productDescription] [varchar](50) NULL,
	[productFinish] [varchar](20) NULL,
	[productStandardPrice] [decimal](6, 2) NULL,
 CONSTRAINT [pkProduct] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [PVF].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [pkplProduct] FOREIGN KEY([productLineId])
REFERENCES [PVF].[PRODUCTLINE] ([productLineId])
GO

ALTER TABLE [PVF].[PRODUCT] CHECK CONSTRAINT [pkplProduct]
GO


