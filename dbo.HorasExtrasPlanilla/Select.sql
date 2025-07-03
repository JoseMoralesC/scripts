CREATE PROC sp_GetAllHorasExtraPlanilla
	@IdCLU INT
AS
	SELECT 
		[Id],
		[IdDetallePlanilla],
		[CantidadHoras],
		[Multiplicador]
	FROM 
	[dbo].[HorasExtraPlanilla]
	WHERE
		IdCLU = @IdCLU

CREATE PROC sp_GetHorasExtraPlanilla
	@Id INT, @IdCLU INT
AS
	SELECT 
		[Id],
		[IdDetallePlanilla],
		[CantidadHoras],
		[Multiplicador]
	FROM 
	[dbo].[HorasExtraPlanilla]
	WHERE
		Id = @Id AND 
		IdCLU = @IdCLU

CREATE PROC sp_InsertHorasExtraPlanilla
	@IdCLU INT,
    @IdDetallePlanilla INT,
    @CantidadHoras FLOAT,
    @Multiplicador FLOAT,
    @Usuario VARCHAR(200)
AS
	INSERT INTO [dbo].[HorasExtraPlanilla]
           ([IdCLU], 
            [IdDetallePlanilla],
            [CantidadHoras],
            [Multiplicador],
            [UsuarioCreacion],
            [FechaCreacion],
            [UsuarioUltimaModificacion],
            [FechaUltimaModificacion])
	 OUTPUT inserted.Id
     VALUES
           (@IdCLU, 
            @IdDetallePlanilla,
            @CantidadHoras,
            @Multiplicador,
            @Usuario,
				GETDATE(),
				@Usuario,
				GETDATE()
					1,)

CREATE PROC sp_UpdateHorasExtraPlanilla
	@Id INT,
    @CantidadHoras FLOAT,
    @Multiplicador FLOAT,
    @Usuario VARCHAR(200)
AS
	UPDATE [dbo].[HorasExtraPlanilla]
	   SET
		  [CantidadHoras] = @CantidadHoras,
		  [Multiplicador] = @Multiplicador,
		  [UsuarioUltimaModificacion] = @Usuario,
		  [FechaUltimaModificacion] = GETDATE()
	 WHERE 
		Id = @Id





Go
