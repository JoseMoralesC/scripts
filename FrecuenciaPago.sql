USE [PCS]
GO

/****** Object:  Table [dbo].[FrecuenciaPago]    Script Date: 1/7/2025 22:12:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FrecuenciaPago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Codigo] [varchar](100) NULL
) ON [PRIMARY]
GO


