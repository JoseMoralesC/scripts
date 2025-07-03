USE [PCS]
GO

/****** Object:  Table [dbo].[HorasExtraPlanilla]    Script Date: 2/7/2025 20:26:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HorasExtraPlanilla](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDetallePlanilla] [int] NULL,
	[CantidadHoras] [float] NULL,
	[Multiplicador] [float] NULL
) ON [PRIMARY]
GO


