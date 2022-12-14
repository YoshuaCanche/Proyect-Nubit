USE [master]
GO
/****** Object:  Database [Bd_nubit_web]    Script Date: 01/12/2022 11:20:02 p. m. ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Datos_academicos]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Datos_Domicilios]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Datos_laborales]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[datos_Personales]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Empleo]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[EmpleoXtrabajos]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Perfil_De_Trabajos]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Serviciosofrecidos]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 01/12/2022 11:20:03 p. m. ******/
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
SET IDENTITY_INSERT [dbo].[Datos_academicos] ON 

INSERT [dbo].[Datos_academicos] ([PkDatosacademicos], [nombrescuela], [gradoegresado], [especialidad]) VALUES (1, N'Univeridad', N'Universidad Politécnica de Quintana  Roo', N'Ing.electrica')
INSERT [dbo].[Datos_academicos] ([PkDatosacademicos], [nombrescuela], [gradoegresado], [especialidad]) VALUES (2, N'Preparatoria', N'Cecyte 3', N'Técnico en mantenimiento industrial')
SET IDENTITY_INSERT [dbo].[Datos_academicos] OFF
GO
SET IDENTITY_INSERT [dbo].[Datos_Domicilios] ON 

INSERT [dbo].[Datos_Domicilios] ([Pkdatosdomicilio], [direccion], [cp], [referencia]) VALUES (1, N'av talles num 45', N'77456', N'Los portones son azules')
INSERT [dbo].[Datos_Domicilios] ([Pkdatosdomicilio], [direccion], [cp], [referencia]) VALUES (2, N'av Huatulco lote 4 mzn 3', N'5676', N'Esta alado de un oxxo')
SET IDENTITY_INSERT [dbo].[Datos_Domicilios] OFF
GO
SET IDENTITY_INSERT [dbo].[Datos_laborales] ON 

INSERT [dbo].[Datos_laborales] ([Pkdatoslaborales], [Nombrempresa], [lugartrabajo], [puestoempeñado], [tiempoprestado]) VALUES (1, N'Vigas Perez', N'av portillo mzn21', N'Ingeniero eléctrico', N'2 años')
INSERT [dbo].[Datos_laborales] ([Pkdatoslaborales], [Nombrempresa], [lugartrabajo], [puestoempeñado], [tiempoprestado]) VALUES (2, N'Boxito', N'av Portillo lote 45', N'Tecnico de Mantenimiento de aires', N'3 años')
SET IDENTITY_INSERT [dbo].[Datos_laborales] OFF
GO
SET IDENTITY_INSERT [dbo].[datos_Personales] ON 

INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (1, N'Ana Carmen', N'Sanchez Ugalde', N'Mexicana', N'12/10/1980', N'9983765532')
INSERT [dbo].[datos_Personales] ([Pkdatospersonales], [nombres], [apellidos], [nacionalidad], [fechadenacimiento], [telefono]) VALUES (2, N'Pedro Alfredo', N'Canche Dzul', N'Mexicana', N'10/12/1999', N'1122334455')
SET IDENTITY_INSERT [dbo].[datos_Personales] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleo] ON 

INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (1, N'Carpintero', N'Construcciones de ventanas, techos, pisos, paredes y puertas de madera y otras estructuras de madera.', N'/css/Image/carpintero.jpg')
INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (2, N'Electricista', N'Instalan y reparan cables tales como la iluminación, la electricidad y la calefacción.', N'/css/Image/electricidad.jpg')
INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (3, N'Fumigador', N'Procedimiento para el control de las plagas o desinfección en el que se utilizan productos químicos.', N'/css/Image/plagas.jpeg')
INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (4, N'Instalador de aire acondicionado', N'Instala, repara y realiza mantenimiento a los equipos de aire acondicionado ademas de realizan las pruebas necesarias.', N'/css/Image/aires.jpg')
INSERT [dbo].[Empleo] ([Pk_empleo], [categorias], [Descripcion], [Foto_servicio]) VALUES (5, N'Plomero', N'Instalan, reparan y mantienen las tuberías que suministran agua, gas y aire a todo tipo de instalaciones residenciales e industriales.', N'/css/Image/plomero.jpg')
SET IDENTITY_INSERT [dbo].[Empleo] OFF
GO
SET IDENTITY_INSERT [dbo].[EmpleoXtrabajos] ON 

INSERT [dbo].[EmpleoXtrabajos] ([PkEmpxTra], [Fk_trabajador], [Fk_empleo]) VALUES (1, 1, 2)
INSERT [dbo].[EmpleoXtrabajos] ([PkEmpxTra], [Fk_trabajador], [Fk_empleo]) VALUES (2, 2, 4)
SET IDENTITY_INSERT [dbo].[EmpleoXtrabajos] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfil_De_Trabajos] ON 

INSERT [dbo].[Perfil_De_Trabajos] ([PkPt], [Usuario], [Contraseña], [Fk_rol]) VALUES (1, N'drap3312', N'123', 1)
INSERT [dbo].[Perfil_De_Trabajos] ([PkPt], [Usuario], [Contraseña], [Fk_rol]) VALUES (2, N'paco', N'111', 1)
INSERT [dbo].[Perfil_De_Trabajos] ([PkPt], [Usuario], [Contraseña], [Fk_rol]) VALUES (3, N'Ana Carmen@Nubit.com', N'Sanchez Ugalde1', 2)
INSERT [dbo].[Perfil_De_Trabajos] ([PkPt], [Usuario], [Contraseña], [Fk_rol]) VALUES (4, N'Pedro Alfredo@Nubit.com', N'Canche Dzul2', 2)
SET IDENTITY_INSERT [dbo].[Perfil_De_Trabajos] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Pkrol], [Asignacion]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([Pkrol], [Asignacion]) VALUES (2, N'Usuario')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Serviciosofrecidos] ON 

INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (1, 1, N'Reparación de muebles, roperos, bases de camas.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (2, 1, N'Remo delación de puertas y ventanas.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (3, 1, N'Remo delación de muebles para cocinas Y recamaras.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (4, 1, N'Diseño de artículos decorativos.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (5, 1, N'Comedores o armarios personalizados.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (6, 2, N'Instalaciones eléctricas residenciales.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (7, 2, N'Reparación de daños eléctricos.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (8, 2, N'Montaje de Toma corrientes, breaker, apagadores, etc.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (9, 2, N'Mantenimiento eléctrico.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (10, 2, N'Instalación de equipos eléctricos.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (11, 3, N'Control de insectos, arácnidos y voladores.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (12, 3, N'Control de roedores.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (13, 3, N'Control de plagas especiales.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (14, 3, N'Desinfección patógena.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (15, 4, N'Instalación de equipos, productos y soluciones.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (16, 4, N'Reparación de equipo en aires acondicionados y refrigeración.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (17, 4, N'Contratos de servicio de mantenimiento preventivo y correctivo.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (18, 4, N'Instalación de sistemas de aire de lavado, aire acondicionado.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (19, 4, N'Refrigeración comercial e Industrial y equipos de proceso (chillers).')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (20, 4, N'Inyección y extracción (cambios de aire).')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (21, 5, N'Instalación de Calentador de Agua.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (22, 5, N'Servicio Y Reparación de Calentador de Agua.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (23, 5, N'Limpieza de Drenaje.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (24, 5, N'Reparación Y Reemplazo de Línea de Alcantarillado.')
INSERT [dbo].[Serviciosofrecidos] ([Pkserofre], [Fk_empleo], [Descripcion]) VALUES (25, 5, N'Comercial de Fontanería Y Drenaje.')
SET IDENTITY_INSERT [dbo].[Serviciosofrecidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Trabajadores] ON 

INSERT [dbo].[Trabajadores] ([PkTrabajador], [Fkdatospersonales], [Fkdatosdomicilio], [Fkdatoslaborales], [FkDatosacademicos], [FkPt]) VALUES (1, 1, 1, 1, 1, 3)
INSERT [dbo].[Trabajadores] ([PkTrabajador], [Fkdatospersonales], [Fkdatosdomicilio], [Fkdatoslaborales], [FkDatosacademicos], [FkPt]) VALUES (2, 2, 2, 2, 2, 4)
SET IDENTITY_INSERT [dbo].[Trabajadores] OFF
GO
/****** Object:  Index [IX_EmpleoXtrabajos_Fk_empleo]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_EmpleoXtrabajos_Fk_empleo] ON [dbo].[EmpleoXtrabajos]
(
	[Fk_empleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleoXtrabajos_Fk_trabajador]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_EmpleoXtrabajos_Fk_trabajador] ON [dbo].[EmpleoXtrabajos]
(
	[Fk_trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Perfil_De_Trabajos_Fk_rol]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Perfil_De_Trabajos_Fk_rol] ON [dbo].[Perfil_De_Trabajos]
(
	[Fk_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Serviciosofrecidos_Fk_empleo]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Serviciosofrecidos_Fk_empleo] ON [dbo].[Serviciosofrecidos]
(
	[Fk_empleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_FkDatosacademicos]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_FkDatosacademicos] ON [dbo].[Trabajadores]
(
	[FkDatosacademicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatosdomicilio]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatosdomicilio] ON [dbo].[Trabajadores]
(
	[Fkdatosdomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatoslaborales]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatoslaborales] ON [dbo].[Trabajadores]
(
	[Fkdatoslaborales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_Fkdatospersonales]    Script Date: 01/12/2022 11:20:04 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Trabajadores_Fkdatospersonales] ON [dbo].[Trabajadores]
(
	[Fkdatospersonales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trabajadores_FkPt]    Script Date: 01/12/2022 11:20:04 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[addFK_empleo]    Script Date: 01/12/2022 11:20:04 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[sp_delete_empleo]    Script Date: 01/12/2022 11:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_empleo]
@Pk_empleo int
AS
BEGIN
	delete Empleo where Pk_empleo=@Pk_empleo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_empleo]    Script Date: 01/12/2022 11:20:04 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[sp_insertEjemplos]    Script Date: 01/12/2022 11:20:04 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[sp_update_empleo]    Script Date: 01/12/2022 11:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_update_empleo]
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
/****** Object:  StoredProcedure [dbo].[spUpdateDatosAcademicos]    Script Date: 01/12/2022 11:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateDatosAcademicos]
@PkDatosacademicos int,
@nombrescuela varchar(max),
@gradoegresado varchar(max),
@especialidad varchar(max)
AS
BEGIN
	update Datos_academicos set nombrescuela = @nombrescuela,
	gradoegresado = @gradoegresado,
	especialidad = @especialidad
	where PkDatosacademicos = @PkDatosacademicos
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDatosDomicilio]    Script Date: 01/12/2022 11:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateDatosDomicilio]
	@Pkdatosdomicilio int,
	@direccion varchar(max),
	@cp varchar(max),
	@referencia varchar(max)
AS
BEGIN
	
	Update Datos_Domicilios set direccion = @direccion,
	cp = @cp,
	referencia = @referencia
	where Pkdatosdomicilio = @Pkdatosdomicilio

END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDatosLaborales]    Script Date: 01/12/2022 11:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateDatosLaborales]
	@Pkdatoslaborales int,
	@Nombrempresa varchar(max),
	@lugartrabajo varchar(max),
	@puestoempeñado varchar(max),
	@tiempoprestado varchar(max)
AS
BEGIN

update Datos_laborales set Nombrempresa = @Nombrempresa,
lugartrabajo = @lugartrabajo,
puestoempeñado = @puestoempeñado,
tiempoprestado = @tiempoprestado
where Pkdatoslaborales = @Pkdatoslaborales

END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDatosPersonales]    Script Date: 01/12/2022 11:20:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateDatosPersonales]
@Pkdatospersonales int,
@nombres varchar(max),
@apellidos varchar(max),
@nacionalidad varchar(max),
@fechadenacimiento varchar(max),
@telefono varchar(max)
AS
BEGIN
	
	update datos_Personales set nombres = @nombres,
	apellidos = @apellidos,
	nacionalidad = @nacionalidad,
	fechadenacimiento = @fechadenacimiento,
	telefono = @telefono
	where Pkdatospersonales = @Pkdatospersonales

END
GO
USE [master]
GO
ALTER DATABASE [Bd_nubit_web] SET  READ_WRITE 
GO
