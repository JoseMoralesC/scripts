USE [PCS]
GO

/****** Object:  Table [dbo].[PagosRecurrentes]    Script Date: 1/7/2025 22:14:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PagosRecurrentes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCLU] [int] NOT NULL,
	[IdProveedor] [int] NULL,
	[NombrePago] [nvarchar](250) NULL,
	[Monto] [float] NOT NULL,
	[IdFrecuencia] [int] NOT NULL,
	[FechaProximoPago] [datetime] NOT NULL,
	[IdCategoria] [int] NULL,
	[UsuarioCreacion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioUltimaModificacion] [varchar](200) NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[Estado] [bit] NULL,
	[PagoFijo] [bit] NULL,
	[EsCredito] [bit] NULL,
	[Saldo] [float] NULL,
	[Plazo] [float] NULL,
	[Tasa] [varchar](20) NULL
) ON [PRIMARY]
GO


