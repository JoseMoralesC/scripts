CREATE PROC sp_GetAllPlanillas
	@IdCLU INT
AS
	SELECT 
		[Id]
		,[IdCLU]
		,[Mes]
		,[Anio]
		,[FechaGeneracion]
		,[TotalPagado]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[Planillas]
	WHERE
		IdCLU = @IdCLU
CREATE PROC sp_GetPlanilla
	@Id INT, @IdCLU INT
AS
	SELECT 
		[Id]
		,[IdCLU]
		,[Mes]
		,[Anio]
		,[FechaGeneracion]
		,[TotalPagado]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[Planillas]
	WHERE
		Id = @Id AND 
		IdCLU = @IdCLU
CREATE PROC sp_InsertPlanilla
	@IdCLU INT
    ,@Mes INT
    ,@Anio INT
    ,@FechaGeneracion DATETIME
    ,@TotalPagado FLOAT
    ,@UsuarioCreacion VARCHAR(200)
AS
	INSERT INTO [dbo].[Planillas]
           ([IdCLU]
           ,[Mes]
           ,[Anio]
           ,[FechaGeneracion]
           ,[TotalPagado]
           ,[UsuarioCreacion]
           ,[FechaCreacion]
           ,[UsuarioUltimaModificacion]
           ,[FechaUltimaModificacion]
           ,[Estado])
	 OUTPUT inserted.Id
     VALUES
           (@IdCLU
           ,@Mes
           ,@Anio
           ,@FechaGeneracion
           ,@TotalPagado
           ,@UsuarioCreacion
		   ,GETDATE() 
		   ,@UsuarioCreacion 
		   ,GETDATE() 
			,1) 
CREATE PROC sp_UpdatePlanilla
	@Id INT
    ,@Mes INT
    ,@Anio INT
    ,@FechaGeneracion DATETIME
    ,@TotalPagado FLOAT
    ,@UsuarioUltimaModificacion VARCHAR(200)
    ,@Estado BIT
AS
	UPDATE [dbo].[Planillas]
	   SET
		  [Mes] = @Mes
		  ,[Anio] = @Anio
		  ,[FechaGeneracion] = @FechaGeneracion
		  ,[TotalPagado] = @TotalPagado
		  ,[UsuarioUltimaModificacion] = @UsuarioUltimaModificacion
		  ,[FechaUltimaModificacion] = GETDATE()
		  ,[Estado] = @Estado
	 WHERE 
		Id = @Id
	
