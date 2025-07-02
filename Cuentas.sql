USE [PCS]
GO

/****** Object:  Table [dbo].[Cuentas]    Script Date: 1/7/2025 22:02:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cuentas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[NombreCuenta] [varchar](100) NOT NULL,
	[TipoCuenta] [varchar](50) NOT NULL,
	[SaldoActual] [float] NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


