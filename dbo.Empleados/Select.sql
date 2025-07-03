CREATE PROC sp_GetAllEmpleado
	@IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreCompleto]
		,[Identificacion]
		,[SueldoBase]
		,[Banco]
		,[NumeroCuenta]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
  FROM 
	[dbo].[Empleados]
  WHERE
	IdCLU = @IdCLU

CREATE PROC sp_GetEmpleado
	@Id INT, @IdCLU INT
AS
	SELECT 
		[Id]
		,[NombreCompleto]
		,[Identificacion]
		,[SueldoBase]
		,[Banco]
		,[NumeroCuenta]
		,[UsuarioCreacion]
		,[FechaCreacion]
		,[UsuarioUltimaModificacion]
		,[FechaUltimaModificacion]
		,[Estado]
  FROM 
	[dbo].[Empleados]
  WHERE
	Id = @Id AND 
	IdCLU = @IdCLU
  

CREATE PROC sp_InsertEmpleado
	@IdCLU int
    ,@NombreCompleto nvarchar(250)
    ,@Identificacion varchar(20)
    ,@SueldoBase float
    ,@Banco nvarchar(100)
    ,@NumeroCuenta nvarchar(100)
    ,@Usuario varchar(200)
AS
	INSERT INTO [dbo].[Empleados]
           ([IdCLU]
           ,[NombreCompleto]
           ,[Identificacion]
           ,[SueldoBase]
           ,[Banco]
           ,[NumeroCuenta]
           ,[UsuarioCreacion]
           ,[FechaCreacion]
           ,[UsuarioUltimaModificacion]
           ,[FechaUltimaModificacion]
           ,[Estado])
	 OUTPUT inserted.Id
     VALUES
           (@IdCLU
           ,@NombreCompleto
           ,@Identificacion
           ,@SueldoBase
           ,@Banco
           ,@NumeroCuenta
           ,@Usuario
		   ,GETDATE()
		   ,@Usuario
		   ,GETDATE()
			,1)
  

CREATE PROC sp_UpdateEmpleado 
	@Id int
    ,@NombreCompleto nvarchar(250)
    ,@Identificacion varchar(20)
    ,@SueldoBase float
    ,@Banco nvarchar(100)
    ,@NumeroCuenta nvarchar(100)
    ,@Usuario varchar(200)
	,@Estado BIT
AS
	UPDATE [dbo].[Empleados]
	   SET
		  [NombreCompleto] = @NombreCompleto
		  ,[Identificacion] = @Identificacion
		  ,[SueldoBase] = @SueldoBase
		  ,[Banco] = @Banco
		  ,[NumeroCuenta] = @NumeroCuenta
		  ,[UsuarioUltimaModificacion] = @Usuario
		  ,[FechaUltimaModificacion] = GETDATE()
		  ,[Estado] = @Estado
	 WHERE 
		Id = @Id
