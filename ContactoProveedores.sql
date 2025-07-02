USE [PCS]
GO

/****** Object:  Table [dbo].[ContactoProveedores]    Script Date: 1/7/2025 22:00:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ContactoProveedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NULL,
	[Nombre] [nvarchar](150) NULL,
	[Contacto] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Telefono] [nvarchar](15) NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


