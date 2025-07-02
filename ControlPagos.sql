USE [PCS]
GO

/****** Object:  Table [dbo].[ControlPagos]    Script Date: 1/7/2025 22:01:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ControlPagos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[NombrePago] [varchar](200) NOT NULL,
	[IdCuenta] [int] NULL,
	[IdCategoria] [int] NULL,
	[FechaVencimiento] [datetime] NULL,
	[FechaPago] [datetime] NULL,
	[Monto] [float] NULL,
	[EstadoPago] [varchar](150) NOT NULL,
	[Comentario] [varchar](2000) NULL,
	[Usuario] [varchar](100) NULL
) ON [PRIMARY]
GO


