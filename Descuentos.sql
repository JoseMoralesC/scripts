USE [PCS]
GO

/****** Object:  Table [dbo].[Descuentos]    Script Date: 1/7/2025 22:04:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Descuentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdPlanilla] [int] NULL,
	[NombreDescuento] [nvarchar](200) NOT NULL,
	[Monto] [float] NOT NULL,
	[EsRecurrente] [bit] NOT NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


