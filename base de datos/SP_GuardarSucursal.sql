USE [DbAsistQuala]
GO
/****** Object:  StoredProcedure [dbo].[SP_GuardarSucursal]    Script Date: 27/05/2024 11:33:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonardo Amaya
-- Create date: 27-05-2024
-- Description:	Guardar Sucursal
-- =============================================
ALTER PROCEDURE [dbo].[SP_GuardarSucursal]
	-- Add the parameters for the stored procedure here
	--@codigo int,
	@descripcion varchar(250),
	@direccion varchar(250),
	@identificacion varchar(50),
	@fechaCreacion datetime,
	@idMoneda int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Sucursales(
	descripcion,
	direccion,
	identificacion,
	fechaCreacion,
	idMoneda)
	VALUES
	(
	@descripcion,
	@direccion,
	@identificacion,
	@fechaCreacion,
	@idMoneda)
END
