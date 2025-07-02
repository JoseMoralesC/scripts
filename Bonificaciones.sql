USE [PCS]
GO

/****** Object:  Table [dbo].[Bonificaciones]    Script Date: 1/7/2025 21:29:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bonificaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdPlanilla] [int] NULL,
	[NombreBonificacion] [nvarchar](200) NOT NULL,
	[Monto] [float] NOT NULL,
	[EsRecurrente] [bit] NOT NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


