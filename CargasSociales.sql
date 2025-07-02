USE [PCS]
GO

/****** Object:  Table [dbo].[CargasSociales]    Script Date: 2/7/2025 13:42:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CargasSociales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreCargaSocial] [varchar](255) NOT NULL,
	[TipoCargaSocial] [varchar](100) NOT NULL,
	[Porcentaje] [decimal](5, 2) NOT NULL,
	[Monto] [decimal](10, 2) NULL,
	[Descripcion] [varchar](max) NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


