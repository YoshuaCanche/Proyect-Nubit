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
CREATE TRIGGER tg_general_PT
on [dbo].[datos_Personales] for insert
AS 
BEGIN
	declare @user varchar(max)=(select (nombres+'@Nubit.com') from inserted)
	declare @Pasword varchar(max)=(select (apellidos+CONVERT(varchar,Pkdatospersonales)) from inserted)

	insert into Perfil_De_Trabajos values(@user,@Pasword,2)

END
GO
