USE [PCS]
GO

/****** Object:  Table [dbo].[Facturas]    Script Date: 1/7/2025 22:08:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Facturas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumeroFactura] [nvarchar](50) NOT NULL,
	[FechaEmision] [datetime] NOT NULL,
	[FechaVencimiento] [datetime] NULL,
	[IdProveedor] [int] NULL,
	[IdTransaccion] [int] NULL,
	[Estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


