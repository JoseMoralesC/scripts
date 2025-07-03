USE [PCS]
GO

/****** Object:  Table [dbo].[AreaDepartamento]    Script Date: 2/7/2025 13:41:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AreaDepartamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreAreaDepartamento] [varchar](255) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Responsable] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


