USE [PCS]
GO

/****** Object:  Table [dbo].[CargasAdicionales]    Script Date: 2/7/2025 13:42:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CargasAdicionales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreCargaAdicional] [varchar](255) NOT NULL,
	[TipoCargaAdicional] [varchar](100) NOT NULL,
	[Porcentage] [decimal](5, 2) NULL,
	[Monto] [decimal](10, 2) NULL,
	[Descripcion] [varchar](max) NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


