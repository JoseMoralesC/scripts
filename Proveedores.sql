USE [PCS]
GO

/****** Object:  Table [dbo].[Proveedores]    Script Date: 1/7/2025 22:27:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Proveedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[Nombre] [nvarchar](150) NULL,
	[Descripcion] [varchar](2000) NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


