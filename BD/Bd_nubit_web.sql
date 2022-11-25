USE [master]
GO
/****** Object:  Database [Bd_nubit_web]    Script Date: 25/11/2022 05:28:24 p. m. ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[Datos_academicos]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[Datos_Domicilios]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[Datos_laborales]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[datos_Personales]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[Empleo]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[EmpleoXtrabajos]    Script Date: 25/11/2022 05:28:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleoXtrabajos](
	[PkEmpxTra] [int] IDENTITY(1,1) NOT NULL,
	[Fk_trabajador] [int] NOT NULL,
	[Fk_empleo] [int] NOT NULL,
 CONSTRAINT [PK_EmpleoXtrabajos] PRIMARY KEY CLUSTERED 
(
	[PkEmpxTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil_De_Trabajos]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[Serviciosofrecidos]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 25/11/2022 05:28:25 p. m. ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221118192710_Bd_nubit_web', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Datos_academicos] ON 

INSERT [dbo].[Datos_academicos] ([PkDatosacademicos], [nombrescuela], [gradoegresado], [especialidad]) VALUES (1, N'prepa', N'cecyte', N'tsmec')
INSERT [dbo].[Datos_academicos] ([PkDatosacademicos], [nombrescuela], [gradoegresado], [especialidad]) VALUES (2, N'4', N'cecyte', N'Ventas')
INSERT [dbo].[Datos_academicos] ([PkDatosacademicos], [nombrescuela], [gradoegresado], [especialidad]) VALUES (3, N'Univeridad', N'Universidad del caribe', N'Docente')
INSERT [dbo].[Datos_academicos] ([PkDatosacademicos], [nombrescuela], [gradoegresado], [especialidad]) VALUES (4, N'Universidad', N'Universidad Politécnica de Quintana  Roo', N'Ign. Software')
SET IDENTITY_INSERT [dbo].[Datos_academicos] OFF
GO
SET IDENTITY_INSERT [dbo].[Datos_Domicilios] ON 

INSERT [dbo].[Datos_Domicilios] ([Pkdatosdomicilio], [direccion], [cp], [referencia]) VALUES (1, N'av rosa velaz manzana 34', N'77540', N'una casa con porton negro')
INSERT [dbo].[Datos_Domicilios] ([Pkdatosdomicilio], [direccion], [cp], [referencia]) VALUES (2, N'av sapo verde too you', N'77889', N'casa morada')
INSERT [dbo].[Datos_Domicilios] ([Pkdatosdomicilio], [direccion], [cp], [referencia]) VALUES (3, N'av laredo mzn 10 lote 45', N'77654', N'Una casa de 3 pisos roja con blanco')
SET IDENTITY_INSERT [dbo].[Datos_Domicilios] OFF
GO
SET IDENTITY_INSERT [dbo].[Datos_laborales] ON 

INSERT [dbo].[Datos_laborales] ([Pkdatoslaborales], [Nombrempresa], [lugartrabajo], [puestoempeñado], [tiempoprestado]) VALUES (1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Datos_laborales] ([Pkdatoslaborales], [Nombrempresa], [lugartrabajo], [puestoempeñado], [tiempoprestado]) VALUES (2, N'Capital 28', N'Nichupte', N'Programador web', N'8 años')
INSERT [dbo].[Datos_laborales] ([Pkdatoslaborales], [Nombrempresa], [lugartrabajo], [puestoempeñado], [tiempoprestado]) VALUES (3, N'Politec', N'Politec', N'Docente', N'7')
INSERT [dbo].[Datos_laborales] ([Pkdatoslaborales], [Nombrempresa], [lugartrabajo], [puestoempeñado], [tiempoprestado]) VALUES (4, N'Pepino', N'sandwich', N'Docencia', N'10')
INSERT [dbo].[Datos_laborales] ([Pkdatoslaborales], [Nombrempresa], [lugartrabajo], [puestoempeñado], [tiempoprestado]) VALUES (5, N'Wayaweb', N'Playa del carmen', N'Programador web FRONT', N'2')
SET IDENTITY_INSERT [dbo].[Datos_laborales] OFF
GO
SET IDENTITY_INSERT [dbo].[datos_Personales] ON 

INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (1, N'Paco', N'Sinya', N'Mexicana', N'17/8/2022', N'5566778899')
INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (2, N'yyy', N'aaa', N'as', N'20/10/2021', N'7878')
INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (3, N'ff', N'fff', N'22', N'17/8/2022', N'7878')
INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (4, N'Machete', N'Sanchez', N'Mexicana', N'12/10/1985', N'9981692800')
INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (5, N'Maria', N'Jose', N'Mexicana', N'13/9/1997', N'5566778899')
INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (6, N'Morrys Mom', N'Montolla Marquez', N'EUA', N'4/11/2002', N'1122334455')
SET IDENTITY_INSERT [dbo].[datos_Personales] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleo] ON 

INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (1, N'Electricista', N'Instalan y reparan cables tales como la iluminación, la electricidad y la calefacción.', N'/css/Image/electricidad.jpg')
INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (2, N'Carpintero', N'Construcciones de ventanas, techos, pisos, paredes y puertas de madera y otras estructuras de madera.', N'/css/Image/carpintero.jpg')
INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (3, N'Programador Web', N'Diseño de paginas e imnobiliario', N'https://blog.hubspot.es/hubfs/media/lenguajesprogramacion.jpeg')
INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (4, N'Profesor', N'materias de ingeniería y programación', N'https://www.teteducation.com/web/wp-content/uploads/2020/04/8-actitudes-para-ser-mejor-docente-ok_tet-education.jpg')
SET IDENTITY_INSERT [dbo].[Empleo] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfil_De_Trabajos] ON 

INSERT [dbo].[Perfil_De_Trabajos] ([PkPt], [Usuario], [Contraseña], [Fk_rol]) VALUES (1, N'Morrys Mom@Nubit.com', N'Montolla Marquez6', 2)
SET IDENTITY_INSERT [dbo].[Perfil_De_Trabajos] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Pkrol], [Asignacion]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([Pkrol], [Asignacion]) VALUES (2, N'Usuario')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Serviciosofrecidos] ON 

INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (1, 2, N'Reparacion de muebles, roperos, bases de camas.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (2, 2, N'Remodelación de puertas y ventanas.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (3, 2, N'Remodelación de puertas y ventanas.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (4, 2, N'Remodelación de muebles para cocinas Y recamaras.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (5, 2, N'Diseño de articulos decorativos.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (6, 2, N'Comedores o armarios personalizados.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (7, 2, N'Bases para marcos de fotos.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (8, 3, N'Paginas Web')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (9, 3, N'Desarrollo de sistemas')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (10, 3, N'Gestor de redes')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (11, 4, N'docente en matematicas')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (12, 4, N'Docente en ingenieria')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (13, 4, N'psicologa')
SET IDENTITY_INSERT [dbo].[Serviciosofrecidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Trabajadores] ON 

INSERT [dbo].[Trabajadores] ([PkTrabajador], [Fkdatospersonales], [Fkdatosdomicilio], [Fkdatoslaborales], [FkDatosacademicos], [FkPt]) VALUES (1, 6, 3, 5, 4, 1)
SET IDENTITY_INSERT [dbo].[Trabajadores] OFF
GO
/****** Object:  Index [IX_EmpleoXtrabajos_Fk_empleo]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_EmpleoXtrabajos_Fk_empleo] ON [dbo].[EmpleoXtrabajos]
(
	[Fk_empleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleoXtrabajos_Fk_trabajador]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_EmpleoXtrabajos_Fk_trabajador] ON [dbo].[EmpleoXtrabajos]
(
	[Fk_trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Perfil_De_Trabajos_Fk_rol]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Perfil_De_Trabajos_Fk_rol] ON [dbo].[Perfil_De_Trabajos]
(
	[Fk_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Serviciosofrecidos_Fk_empleo]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Serviciosofrecidos_Fk_empleo] ON [dbo].[Serviciosofrecidos]
(
	[Fk_empleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_FkDatosacademicos]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_FkDatosacademicos] ON [dbo].[Trabajadores]
(
	[FkDatosacademicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatosdomicilio]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatosdomicilio] ON [dbo].[Trabajadores]
(
	[Fkdatosdomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatoslaborales]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatoslaborales] ON [dbo].[Trabajadores]
(
	[Fkdatoslaborales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatospersonales]    Script Date: 25/11/2022 05:28:26 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatospersonales] ON [dbo].[Trabajadores]
(
	[Fkdatospersonales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_FkPt]    Script Date: 25/11/2022 05:28:26 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[sp_insert_empleo]    Script Date: 25/11/2022 05:28:26 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[sp_insertEjemplos]    Script Date: 25/11/2022 05:28:26 p. m. ******/
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
	declare @Fkempleo int=(select max(Pk_empleo)from Empleo)
	insert into Serviciosofrecidos values(@Fkempleo,@descripcion_ejemplo)
END
GO
USE [master]
GO
ALTER DATABASE [Bd_nubit_web] SET  READ_WRITE 
GO
