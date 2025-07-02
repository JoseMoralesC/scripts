USE [PCS]
GO

/****** Object:  Table [dbo].[ParametrosPlanilla]    Script Date: 1/7/2025 22:24:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ParametrosPlanilla](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Valor] [float] NOT NULL,
	[EsPorcentaje] [bit] NOT NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


