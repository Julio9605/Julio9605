USE [master]

/* 

Estudiante:Julio Amaurys Campusano Alcantara
Matricula: 21-SIIN-1-027
Universidad organizacion y metodo(O&M)
Materia: base de datos
Seccion: 0541

*/


GO
/****** Object:  Database [Empresa PLC Developer]    Script Date: 8/21/2022 9:14:06 PM ******/
CREATE DATABASE [Empresa PLC Developer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empresa PLC Developer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\Empresa PLC Developer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Empresa PLC Developer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\Empresa PLC Developer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Empresa PLC Developer] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Empresa PLC Developer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Empresa PLC Developer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Empresa PLC Developer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Empresa PLC Developer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Empresa PLC Developer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Empresa PLC Developer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Empresa PLC Developer] SET  MULTI_USER 
GO
ALTER DATABASE [Empresa PLC Developer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Empresa PLC Developer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Empresa PLC Developer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Empresa PLC Developer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Empresa PLC Developer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Empresa PLC Developer] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Empresa PLC Developer] SET QUERY_STORE = OFF
GO
USE [Empresa PLC Developer]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 8/21/2022 9:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Edad] [int] NULL,
	[ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro semanal de ordenes]    Script Date: 8/21/2022 9:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro semanal de ordenes](
	[Nombre del cliente] [varchar](50) NULL,
	[Servicio adquirido] [varchar](50) NULL,
	[Sastifaccion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitud al proveedor]    Script Date: 8/21/2022 9:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud al proveedor](
	[Nombre del Proveedor] [varchar](50) NULL,
	[Producto/Solicitud] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitud del cliente]    Script Date: 8/21/2022 9:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud del cliente](
	[Nombre del Clente] [varchar](50) NULL,
	[Servicio Solicitado] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 8/21/2022 9:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id de venta] [int] NULL,
	[Fecha] [nchar](10) NULL,
	[Producto /servicio] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'sergio', N'fernandes', 25, 448419)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'carlos', N'almanzar', 30, 454884)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'fernando ', N'caceres', 22, 548456)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'julio', N'campusano', 27, 155952)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'tomas', N'agramonte', 36, 616626)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'rafael', N'amador', 31, 212616)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'elvin', N'martes', 20, 265262)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'michael', N'lopez', 21, 619449)
INSERT [dbo].[Empleados] ([Nombre], [Apellido], [Edad], [ID]) VALUES (N'elder ', N'ortiz', 24, 265926)
GO
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'jose duran', N'Bomba de agua automatica', N'excelente')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'jhon caraballo', N'porton automatico', N'bien')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'freddy bautista', N'porton automatico', N'excelente')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'jan roman', N'automatizacion de la casa', N'perfecto')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'convatec inc', N'maquinaria de produccion', N'excelente')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'hospira inc', N'intalacion de conveyo', N'excelente')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'instituto loyola', N'instalacion de selladora de plastico', N'perfecto')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'baxter.inc', N'instalacion de brazo neumatico', N'bien')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'john connor', N'instalacion de flota acuatica', N'perfecto')
INSERT [dbo].[Registro semanal de ordenes] ([Nombre del cliente], [Servicio adquirido], [Sastifaccion]) VALUES (N'Resicencial LP9', N'instalacion de paneles solares', N'excelente')
GO
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'siemens', N' PLC logo')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Allen bradhley', N'PLC compact logix')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Allen bradhley', N'PLC logix 5000')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Allen bradhley', N'Pico controlador')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Allen bradhley', N'Modulos Devicenet')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Cisco', N'Swicht de red')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Allen bradhley', N'Relay 24V')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Staubli', N'Brazo neumatico ')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Allen bradhley', N'HMI')
INSERT [dbo].[solicitud al proveedor] ([Nombre del Proveedor], [Producto/Solicitud]) VALUES (N'Omron', N'PLC ')
GO
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'jhon sierra', N'instalacion de flota acuatica')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'freenius kab.inc', N'instalacion de conveyo')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'edward lifesciencies.inc', N'instalacion de paneles solares')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'carlos duran', N'Sistema automatizado de bomba sumergible')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'marcos duran', N'instalacion de porton automatico')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'jan marcos', N'instalacion  de porton automatico')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'fresenius kabi.inc', N'instalacion de brazo neumatico')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'baxter', N'instalacion de paneles solares ')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'jhon connor', N' instalacion de porton automatico')
INSERT [dbo].[Solicitud del cliente] ([Nombre del Clente], [Servicio Solicitado]) VALUES (N'residencial LP8', N'Instalacion de paneles solares')
GO
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (8554494, N'05/25/2021', N'PLC omron')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (5482659, N'06/15/2021', N'Brazo neumatico Staubli')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (5948484, N'07/30/2021', N'Actuador branson')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (548899, N'12/01/2021', N'Sellador de ultrasonido')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (556959, N'01/31/2021', N'Motores stepper')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (51959529, N'03/04/2022', N'instalacion de paneles de control')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (848959, N'07/08/2022', N'instalacion y diseñosde fixture')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (595999, N'08/10/2021', N'panel solar')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (26695295, N'09/11/2021', N'Pico controlador omron')
INSERT [dbo].[Ventas] ([id de venta], [Fecha], [Producto /servicio]) VALUES (656416, N'10/15/2022', N'relays 24v siemens')
GO
USE [master]
GO
ALTER DATABASE [Empresa PLC Developer] SET  READ_WRITE 
GO
