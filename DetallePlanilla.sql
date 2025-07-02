USE [PCS]
GO

/****** Object:  Table [dbo].[DetallePlanilla]    Script Date: 1/7/2025 22:05:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DetallePlanilla](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPlanilla] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[SueldoBase] [float] NOT NULL,
	[HorasExtras] [float] NULL,
	[Bonificaciones] [float] NULL,
	[Descuentos] [float] NULL,
	[TotalNeto] [float] NOT NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO


