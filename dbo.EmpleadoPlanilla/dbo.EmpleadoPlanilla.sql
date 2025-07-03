USE [PCS]
GO

/****** Object:  Table [dbo].[EmpleadoPlanilla]    Script Date: 2/7/2025 21:51:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmpleadoPlanilla](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdPlanilla] [int] NOT NULL
) ON [PRIMARY]
GO


