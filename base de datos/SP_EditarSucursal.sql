USE [DbAsistQuala]
GO
/****** Object:  StoredProcedure [dbo].[SP_EditarSucursal]    Script Date: 28/05/2024 1:00:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonardo Amaya
-- Create date: 27-05-2024
-- Description:	Editar Sucursal
-- =============================================
CREATE PROCEDURE [dbo].[SP_EditarSucursal]
	-- Add the parameters for the stored procedure here
	@codigo int,
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
	UPDATE Sucursales
	set descripcion = @descripcion,
	direccion = @direccion,
	identificacion = @identificacion,
	idMoneda = @idMoneda,
	fechaCreacion = @fechaCreacion
	where codigo = @codigo
END
