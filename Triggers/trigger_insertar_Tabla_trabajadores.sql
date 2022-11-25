-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER tg_insert_trabajadores
on [dbo].[Datos_laborales] for insert
AS 
BEGIN
	
	declare @Fkdatos_domicilio int=(select max(Pkdatosdomicilio) from Datos_Domicilios)
	declare @Fkdatos_academicos int=(select max(PkDatosacademicos) from Datos_academicos)
	declare @Fkdatos_personales int=(select max(Pkdatospersonales) from datos_Personales)
	declare @Fk_perfil_trabajo int=(select max(PkPt) from Perfil_De_Trabajos)

	declare @Fkdatos_laborales int
	select @Fkdatos_laborales=Pkdatoslaborales from inserted

	insert into Trabajadores values(@Fkdatos_personales,@Fkdatos_domicilio,@Fkdatos_laborales,@Fkdatos_academicos,@Fk_perfil_trabajo)
END
GO
