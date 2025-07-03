CREATE PROC sp_GetAllCargasAdicionales
	@IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreCargaAdicional]
		,[TipoCargaAdicional]
		,[Porcentage]
		,[Monto]
		,[Descripcion]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[CargasAdicionales]
	WHERE
		IdCLU = @IdCLU
CREATE PROC sp_GetCargasAdicionales
	@Id INT, @IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreCargaAdicional]
		,[TipoCargaAdicional]
		,[Porcentage]
		,[Monto]
		,[Descripcion]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[CargasAdicionales]
	WHERE
		Id = @Id AND 
		IdCLU = @IdCLU
CREATE PROC sp_InsertCargasAdicionales
	@IdCLU INT
    ,@NombreCargaAdicional VARCHAR(255)
    ,@TipoCargaAdicional VARCHAR(100)
    ,@Porcentage DECIMAL(5, 2)
    ,@Monto DECIMAL(10, 2)
    ,@Descripcion VARCHAR(MAX)
    ,@UsuarioCreacion VARCHAR(200)
AS
	INSERT INTO [dbo].[CargasAdicionales]
           ([IdCLU]
           ,[NombreCargaAdicional]
           ,[TipoCargaAdicional]
           ,[Porcentage]
           ,[Monto]
           ,[Descripcion]
           ,[UsuarioCreacion]
           ,[FechaCreacion]
           ,[UsuarioUltimaModificacion]
           ,[Estado])
	 OUTPUT inserted.Id
     VALUES
           (@IdCLU
           ,@NombreCargaAdicional
           ,@TipoCargaAdicional
           ,@Porcentage
           ,@Monto
           ,@Descripcion
           ,@UsuarioCreacion
		   ,GETDATE() 
		   ,@UsuarioCreacion 
		   ,GETDATE() 
			,1) 
CREATE PROC sp_UpdateCargasAdicionales
	@Id INT
    ,@NombreCargaAdicional VARCHAR(255)
    ,@TipoCargaAdicional VARCHAR(100)
    ,@Porcentage DECIMAL(5, 2)
    ,@Monto DECIMAL(10, 2)
    ,@Descripcion VARCHAR(MAX)
    ,@UsuarioUltimaModificacion VARCHAR(200)
    ,@Estado BIT
AS
	UPDATE [dbo].[CargasAdicionales]
	   SET
		  [NombreCargaAdicional] = @NombreCargaAdicional
		  ,[TipoCargaAdicional] = @TipoCargaAdicional
		  ,[Porcentage] = @Porcentage
		  ,[Monto] = @Monto
		  ,[Descripcion] = @Descripcion
		  ,[UsuarioUltimaModificacion] = @UsuarioUltimaModificacion
		  ,[Estado] = @Estado
	 WHERE 
		Id = @Id
