USE [PCS]
GO

/****** Object:  Table [dbo].[Categorias]    Script Date: 1/7/2025 21:59:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Descripcion] [nvarchar](4000) NULL,
	[DetailJson] [varchar](max) NOT NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL,
	[Moneda] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


