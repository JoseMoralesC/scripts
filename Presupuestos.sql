USE [PCS]
GO

/****** Object:  Table [dbo].[Presupuestos]    Script Date: 1/7/2025 22:25:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Presupuestos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[MontoPlanificado] [decimal](18, 2) NOT NULL,
	[Periodo] [nvarchar](50) NOT NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


