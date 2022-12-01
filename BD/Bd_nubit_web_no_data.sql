USE [master]
GO
/****** Object:  Database [Bd_nubit_web]    Script Date: 30/11/2022 09:47:03 p. m. ******/
CREATE DATABASE [Bd_nubit_web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bd_nubit_web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Bd_nubit_web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bd_nubit_web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Bd_nubit_web_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Bd_nubit_web] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bd_nubit_web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bd_nubit_web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bd_nubit_web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bd_nubit_web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bd_nubit_web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bd_nubit_web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bd_nubit_web] SET  MULTI_USER 
GO
ALTER DATABASE [Bd_nubit_web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bd_nubit_web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bd_nubit_web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bd_nubit_web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bd_nubit_web] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bd_nubit_web] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Bd_nubit_web] SET QUERY_STORE = OFF
GO
USE [Bd_nubit_web]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datos_academicos]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos_academicos](
	[PkDatosacademicos] [int] IDENTITY(1,1) NOT NULL,
	[nombrescuela] [nvarchar](max) NULL,
	[gradoegresado] [nvarchar](max) NULL,
	[especialidad] [nvarchar](max) NULL,
 CONSTRAINT [PK_Datos_academicos] PRIMARY KEY CLUSTERED 
(
	[PkDatosacademicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datos_Domicilios]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos_Domicilios](
	[Pkdatosdomicilio] [int] IDENTITY(1,1) NOT NULL,
	[direccion] [nvarchar](max) NULL,
	[cp] [nvarchar](max) NULL,
	[referencia] [nvarchar](max) NULL,
 CONSTRAINT [PK_Datos_Domicilios] PRIMARY KEY CLUSTERED 
(
	[Pkdatosdomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datos_laborales]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos_laborales](
	[Pkdatoslaborales] [int] IDENTITY(1,1) NOT NULL,
	[Nombrempresa] [nvarchar](max) NULL,
	[lugartrabajo] [nvarchar](max) NULL,
	[puestoempeñado] [nvarchar](max) NULL,
	[tiempoprestado] [nvarchar](max) NULL,
 CONSTRAINT [PK_Datos_laborales] PRIMARY KEY CLUSTERED 
(
	[Pkdatoslaborales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datos_Personales]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datos_Personales](
	[Pkdatospersonales] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](max) NULL,
	[apellidos] [nvarchar](max) NULL,
	[nacionalidad] [nvarchar](max) NULL,
	[fechadenacimiento] [nvarchar](max) NULL,
	[telefono] [nvarchar](max) NULL,
 CONSTRAINT [PK_datos_Personales] PRIMARY KEY CLUSTERED 
(
	[Pkdatospersonales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleo]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleo](
	[Pk_empleo] [int] IDENTITY(1,1) NOT NULL,
	[categorias] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Foto_servicio] [nvarchar](max) NULL,
 CONSTRAINT [PK_Empleo] PRIMARY KEY CLUSTERED 
(
	[Pk_empleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleoXtrabajos]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleoXtrabajos](
	[PkEmpxTra] [int] IDENTITY(1,1) NOT NULL,
	[Fk_trabajador] [int] NULL,
	[Fk_empleo] [int] NULL,
 CONSTRAINT [PK_EmpleoXtrabajos] PRIMARY KEY CLUSTERED 
(
	[PkEmpxTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil_De_Trabajos]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil_De_Trabajos](
	[PkPt] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](max) NULL,
	[Contraseña] [nvarchar](max) NULL,
	[Fk_rol] [int] NOT NULL,
 CONSTRAINT [PK_Perfil_De_Trabajos] PRIMARY KEY CLUSTERED 
(
	[PkPt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Pkrol] [int] IDENTITY(1,1) NOT NULL,
	[Asignacion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Pkrol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Serviciosofrecidos]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serviciosofrecidos](
	[Pkserofre] [int] IDENTITY(1,1) NOT NULL,
	[Fk_empleo] [int] NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Serviciosofrecidos] PRIMARY KEY CLUSTERED 
(
	[Pkserofre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[PkTrabajador] [int] IDENTITY(1,1) NOT NULL,
	[Fkdatospersonales] [int] NULL,
	[Fkdatosdomicilio] [int] NULL,
	[Fkdatoslaborales] [int] NULL,
	[FkDatosacademicos] [int] NULL,
	[FkPt] [int] NULL,
 CONSTRAINT [PK_Trabajadores] PRIMARY KEY CLUSTERED 
(
	[PkTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleoXtrabajos_Fk_empleo]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_EmpleoXtrabajos_Fk_empleo] ON [dbo].[EmpleoXtrabajos]
(
	[Fk_empleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleoXtrabajos_Fk_trabajador]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_EmpleoXtrabajos_Fk_trabajador] ON [dbo].[EmpleoXtrabajos]
(
	[Fk_trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Perfil_De_Trabajos_Fk_rol]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Perfil_De_Trabajos_Fk_rol] ON [dbo].[Perfil_De_Trabajos]
(
	[Fk_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Serviciosofrecidos_Fk_empleo]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Serviciosofrecidos_Fk_empleo] ON [dbo].[Serviciosofrecidos]
(
	[Fk_empleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_FkDatosacademicos]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_FkDatosacademicos] ON [dbo].[Trabajadores]
(
	[FkDatosacademicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatosdomicilio]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatosdomicilio] ON [dbo].[Trabajadores]
(
	[Fkdatosdomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatoslaborales]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatoslaborales] ON [dbo].[Trabajadores]
(
	[Fkdatoslaborales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatospersonales]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatospersonales] ON [dbo].[Trabajadores]
(
	[Fkdatospersonales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_FkPt]    Script Date: 30/11/2022 09:47:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_FkPt] ON [dbo].[Trabajadores]
(
	[FkPt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmpleoXtrabajos]  WITH CHECK ADD  CONSTRAINT [FK_EmpleoXtrabajos_Empleo_Fk_empleo] FOREIGN KEY([Fk_empleo])
REFERENCES [dbo].[Empleo] ([Pk_empleo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpleoXtrabajos] CHECK CONSTRAINT [FK_EmpleoXtrabajos_Empleo_Fk_empleo]
GO
ALTER TABLE [dbo].[EmpleoXtrabajos]  WITH CHECK ADD  CONSTRAINT [FK_EmpleoXtrabajos_Trabajadores_Fk_trabajador] FOREIGN KEY([Fk_trabajador])
REFERENCES [dbo].[Trabajadores] ([PkTrabajador])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpleoXtrabajos] CHECK CONSTRAINT [FK_EmpleoXtrabajos_Trabajadores_Fk_trabajador]
GO
ALTER TABLE [dbo].[Perfil_De_Trabajos]  WITH CHECK ADD  CONSTRAINT [FK_Perfil_De_Trabajos_Roles_Fk_rol] FOREIGN KEY([Fk_rol])
REFERENCES [dbo].[Roles] ([Pkrol])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Perfil_De_Trabajos] CHECK CONSTRAINT [FK_Perfil_De_Trabajos_Roles_Fk_rol]
GO
ALTER TABLE [dbo].[Serviciosofrecidos]  WITH CHECK ADD  CONSTRAINT [FK_Serviciosofrecidos_Empleo_Fk_empleo] FOREIGN KEY([Fk_empleo])
REFERENCES [dbo].[Empleo] ([Pk_empleo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Serviciosofrecidos] CHECK CONSTRAINT [FK_Serviciosofrecidos_Empleo_Fk_empleo]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK_Trabajadores_Datos_academicos_FkDatosacademicos] FOREIGN KEY([FkDatosacademicos])
REFERENCES [dbo].[Datos_academicos] ([PkDatosacademicos])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK_Trabajadores_Datos_academicos_FkDatosacademicos]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK_Trabajadores_Datos_Domicilios_Fkdatosdomicilio] FOREIGN KEY([Fkdatosdomicilio])
REFERENCES [dbo].[Datos_Domicilios] ([Pkdatosdomicilio])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK_Trabajadores_Datos_Domicilios_Fkdatosdomicilio]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK_Trabajadores_Datos_laborales_Fkdatoslaborales] FOREIGN KEY([Fkdatoslaborales])
REFERENCES [dbo].[Datos_laborales] ([Pkdatoslaborales])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK_Trabajadores_Datos_laborales_Fkdatoslaborales]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK_Trabajadores_datos_Personales_Fkdatospersonales] FOREIGN KEY([Fkdatospersonales])
REFERENCES [dbo].[datos_Personales] ([Pkdatospersonales])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK_Trabajadores_datos_Personales_Fkdatospersonales]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK_Trabajadores_Perfil_De_Trabajos_FkPt] FOREIGN KEY([FkPt])
REFERENCES [dbo].[Perfil_De_Trabajos] ([PkPt])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK_Trabajadores_Perfil_De_Trabajos_FkPt]
GO
/****** Object:  StoredProcedure [dbo].[addFK_empleo]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addFK_empleo]
@Pk_empleo int
AS
BEGIN
declare @Fk_trabajador int=(select max(PkTrabajador)from Trabajadores)
 declare @Fkempleo int=@PK_empleo
	insert into EmpleoXtrabajos values(@Fk_trabajador,@Fkempleo)
END
GO
/****** Object:  StoredProcedure [dbo].[so_update_empleo]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[so_update_empleo]
@categorias varchar(max),
@Descripcion varchar(max),
@Foto_servicio varchar(max),
@Pk_empleo int
AS
BEGIN
	update Empleo
	set categorias=@categorias,
	Descripcion=@Descripcion,
	Foto_servicio=@Foto_servicio
	where Pk_empleo=@Pk_empleo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_empleo]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_delete_empleo]
@Pk_empleo int
AS
BEGIN
	delete Empleo where Pk_empleo=@Pk_empleo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_empleo]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_empleo]
@Categoria varchar(max),
@Descripcion varchar(max),
@rutaimg varchar(max)
AS
BEGIN
	insert into Empleo values(@Categoria,@Descripcion,@rutaimg)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertEjemplos]    Script Date: 30/11/2022 09:47:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_insertEjemplos]
@descripcion_ejemplo varchar(max)
AS
BEGIN

declare @FK_empleo int=(select max(Pk_empleo)from Empleo)
	insert into Serviciosofrecidos values(@FK_empleo,@descripcion_ejemplo)
	
END
GO
USE [master]
GO
ALTER DATABASE [Bd_nubit_web] SET  READ_WRITE 
GO
