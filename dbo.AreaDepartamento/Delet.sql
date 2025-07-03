CREATE PROC sp_GetAllAreaDepartamento
	@IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreAreaDepartamento]
		,[Descripcion]
		,[Responsable]
		,[FechaCreacion]
		,[UsuarioCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[AreaDepartamento]
	WHERE
		IdCLU = @IdCLU
CREATE PROC sp_GetAreaDepartamento
	@Id INT, @IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreAreaDepartamento]
		,[Descripcion]
		,[Responsable]
		,[FechaCreacion]
		,[UsuarioCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
	FROM 
	[dbo].[AreaDepartamento]
	WHERE
		Id = @Id AND 
		IdCLU = @IdCLU

CREATE PROC sp_InsertAreaDepartamento
	@IdCLU INT
    ,@NombreAreaDepartamento VARCHAR(255)
    ,@Descripcion VARCHAR(MAX)
    ,@Responsable VARCHAR(200)
    ,@UsuarioCreacion VARCHAR(200)
AS
	INSERT INTO [dbo].[AreaDepartamento]
           ([IdCLU]
           ,[NombreAreaDepartamento]
           ,[Descripcion]
           ,[Responsable]
           ,[FechaCreacion]
           ,[UsuarioCreacion]
           ,[UsuarioUltimaModificacion]
           ,[FechaUltimaModificacion]
           ,[Estado])
	 OUTPUT inserted.Id
     VALUES
           (@IdCLU
           ,@NombreAreaDepartamento
           ,@Descripcion
           ,@Responsable
           ,GETDATE() 
           ,@UsuarioCreacion
		   ,@UsuarioCreacion  
		   ,GETDATE() 
			,1) 


CREATE PROC sp_UpdateAreaDepartamento
	@Id INT
    ,@NombreAreaDepartamento VARCHAR(255)
    ,@Descripcion VARCHAR(MAX)
    ,@Responsable VARCHAR(200)
    ,@UsuarioUltimaModificacion VARCHAR(200)
    ,@Estado BIT
AS
	UPDATE [dbo].[AreaDepartamento]
	   SET
		  [NombreAreaDepartamento] = @NombreAreaDepartamento
		  ,[Descripcion] = @Descripcion
		  ,[Responsable] = @Responsable
		  ,[UsuarioUltimaModificacion] = @UsuarioUltimaModificacion
		  ,[FechaUltimaModificacion] = GETDATE()
		  ,[Estado] = @Estado
	 WHERE 
		Id = @Id

