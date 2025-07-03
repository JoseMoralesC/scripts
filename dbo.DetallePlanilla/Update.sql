CREATE PROC sp_GetAllDetallePlanilla
	@IdCLU INT
AS
	SELECT 
		[Id]
		,[IdPlanilla]
		,[IdEmpleado]
		,[SueldoBase]
		,[HorasExtras]
		,[Bonificaciones]
		,[Descuentos]
		,[TotalNeto]
		,[Estado]
	FROM 
	[dbo].[DetallePlanilla]
	WHERE
		IdCLU = @IdCLU
CREATE PROC sp_GetDetallePlanilla
	@Id INT, @IdCLU INT
AS
	SELECT 
		[Id]
		,[IdPlanilla]
		,[IdEmpleado]
		,[SueldoBase]
		,[HorasExtras]
		,[Bonificaciones]
		,[Descuentos]
		,[TotalNeto]
		,[Estado]
	FROM 
	[dbo].[DetallePlanilla]
	WHERE
		Id = @Id AND 
		IdCLU = @IdCLU
CREATE PROC sp_InsertDetallePlanilla
	@IdCLU INT
    ,@IdPlanilla INT
    ,@IdEmpleado INT
    ,@SueldoBase FLOAT
    ,@HorasExtras FLOAT
    ,@Bonificaciones FLOAT
    ,@Descuentos FLOAT
    ,@TotalNeto FLOAT
AS
	INSERT INTO [dbo].[DetallePlanilla]
           ([IdCLU]
           ,[IdPlanilla]
           ,[IdEmpleado]
           ,[SueldoBase]
           ,[HorasExtras]
           ,[Bonificaciones]
           ,[Descuentos]
           ,[TotalNeto]
           ,[Estado])
	 OUTPUT inserted.Id
     VALUES
           (@IdCLU
           ,@IdPlanilla
           ,@IdEmpleado
           ,@SueldoBase
           ,@HorasExtras
           ,@Bonificaciones
           ,@Descuentos
           ,@TotalNeto
           ,1) 
CREATE PROC sp_UpdateDetallePlanilla
	@Id INT
    ,@IdPlanilla INT
    ,@IdEmpleado INT
    ,@SueldoBase FLOAT
    ,@HorasExtras FLOAT
    ,@Bonificaciones FLOAT
    ,@Descuentos FLOAT
    ,@TotalNeto FLOAT
    ,@Estado BIT
AS
	UPDATE [dbo].[DetallePlanilla]
	   SET
		  [IdPlanilla] = @IdPlanilla
		  ,[IdEmpleado] = @IdEmpleado
		  ,[SueldoBase] = @SueldoBase
		  ,[HorasExtras] = @HorasExtras
		  ,[Bonificaciones] = @Bonificaciones
		  ,[Descuentos] = @Descuentos
		  ,[TotalNeto] = @TotalNeto
		  ,[Estado] = @Estado
     OUTPUT inserted.Id     
	 WHERE 
		Id = @Id

