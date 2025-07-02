USE [PCS]
GO

/****** Object:  Table [dbo].[EstadoPago]    Script Date: 1/7/2025 22:07:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EstadoPago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Activo] [bit] NULL
) ON [PRIMARY]
GO


