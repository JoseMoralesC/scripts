USE [PCS]
GO

/****** Object:  Table [dbo].[Empleados]    Script Date: 1/7/2025 22:06:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Empleados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[NombreCompleto] [nvarchar](250) NOT NULL,
	[Identificacion] [varchar](20) NOT NULL,
	[Cargo] [nvarchar](100) NULL,
	[SueldoBase] [float] NOT NULL,
	[TipoContrato] [nvarchar](50) NULL,
	[Banco] [nvarchar](100) NULL,
	[NumeroCuenta] [nvarchar](100) NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


