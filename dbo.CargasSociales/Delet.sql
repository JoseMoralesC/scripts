CREATE PROC sp_GetAllCargasSociales
	@IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreCargaSocial]
		,[TipoCargaSocial]
		,[Porcentaje]
		,[Monto]
		,[Descripcion]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[CargasSociales]
	WHERE
		IdCLU = @IdCLU
CREATE PROC sp_GetCargasSociales
	@Id INT, @IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreCargaSocial]
		,[TipoCargaSocial]
		,[Porcentaje]
		,[Monto]
		,[Descripcion]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[CargasSociales]
	WHERE
		Id = @Id AND 
		IdCLU = @IdCLU
CREATE PROC sp_InsertCargasSociales
	@IdCLU INT
    ,@NombreCargaSocial VARCHAR(255)
    ,@TipoCargaSocial VARCHAR(100)
    ,@Porcentaje DECIMAL(5, 2)
    ,@Monto DECIMAL(10, 2)
    ,@Descripcion VARCHAR(MAX)
    ,@UsuarioCreacion VARCHAR(200)
AS
	INSERT INTO [dbo].[CargasSociales]
           ([IdCLU]
           ,[NombreCargaSocial]
           ,[TipoCargaSocial]
           ,[Porcentaje]
           ,[Monto]
           ,[Descripcion]
           ,[UsuarioCreacion]
           ,[FechaCreacion]
           ,[UsuarioUltimaModificacion]
           ,[FechaUltimaModificacion]
           ,[Estado])
	 OUTPUT inserted.Id
     VALUES
           (@IdCLU
           ,@NombreCargaSocial
           ,@TipoCargaSocial
           ,@Porcentaje
           ,@Monto
           ,@Descripcion
           ,@UsuarioCreacion
		   ,GETDATE()
		   ,@UsuarioCreacion 
		   ,GETDATE() 
			,1) 
CREATE PROC sp_UpdateCargasSociales
	@Id INT
    ,@NombreCargaSocial VARCHAR(255)
    ,@TipoCargaSocial VARCHAR(100)
    ,@Porcentaje DECIMAL(5, 2)
    ,@Monto DECIMAL(10, 2)
    ,@Descripcion VARCHAR(MAX)
    ,@UsuarioUltimaModificacion VARCHAR(200)
    ,@Estado BIT
AS
	UPDATE [dbo].[CargasSociales]
	   SET
		  [NombreCargaSocial] = @NombreCargaSocial
		  ,[TipoCargaSocial] = @TipoCargaSocial
		  ,[Porcentaje] = @Porcentaje
		  ,[Monto] = @Monto
		  ,[Descripcion] = @Descripcion
		  ,[UsuarioUltimaModificacion] = @UsuarioUltimaModificacion
		  ,[FechaUltimaModificacion] = GETDATE()
		  ,[Estado] = @Estado
	 WHERE 
		Id = @Id
