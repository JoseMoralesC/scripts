CREATE PROC sp_GetAllEmpleadoPlanilla
	@IdCLU INT, @IdPlanilla INT
AS
	SELECT 
		[Id],
		[IdEmpleado],
		[IdPlanilla]
	FROM 
	[dbo].[EmpleadoPlanilla]
	WHERE
		IdCLU = @IdCLU, IdPlanilla = @IdPlanilla

CREATE PROC sp_GetEmpleadoPlanilla
	@IdCLU INT, @Id INT, @IdEmpleado INT, @IdPlanilla INT
AS
	SELECT 
		[Id],
		[IdEmpleado],
		[IdPlanilla]
	FROM 
	[dbo].[EmpleadoPlanilla]
	WHERE
		Id = @Id AND 
		IdCLU = @IdCLU AND
		IdEmpleado = @IdEmpleado AND
		IdPlanilla = @IdPlanilla

CREATE PROC sp_InsertEmpleadoPlanilla
	@IdCLU int,
	@IdEmpleado INT,
	@IdPlanilla INT,
	@Usuario VARCHAR(200)
AS
	INSERT INTO [dbo].[EmpleadoPlanilla]
			([IdCLU],
			[IdEmpleado],
            [IdPlanilla],
            [UsuarioCreacion],
            [FechaCreacion],
            [UsuarioUltimaModificacion],
            [FechaUltimaModificacion])
	 
     VALUES
           (@IdEmpleado,
            @IdPlanilla,
            @Usuario,
            GETDATE(),
            @Usuario,
            GETDATE())


CREATE PROC sp_UpdateEmpleadoPlanilla
	@Id INT, @IdEmpleado INT, @IdPlanilla INT,
	@Usuario VARCHAR(200)
AS
	UPDATE [dbo].[EmpleadoPlanilla]
	   SET
		  [IdEmpleado] = @IdEmpleado,
		  [IdPlanilla] = @IdPlanilla,
		  [UsuarioUltimaModificacion] = @Usuario,
		  [FechaUltimaModificacion] = GETDATE()

	 WHERE 
		Id = @Id




GO
