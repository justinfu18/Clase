USE [master]
GO
/****** Object:  Database [VC_BIKESERVICE]    Script Date: 18 dic. 2022 18:56:06 ******/
CREATE DATABASE [VC_BIKESERVICE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VC_BIKESERVICE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VC_BIKESERVICE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VC_BIKESERVICE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VC_BIKESERVICE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VC_BIKESERVICE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VC_BIKESERVICE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VC_BIKESERVICE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET ARITHABORT OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VC_BIKESERVICE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VC_BIKESERVICE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VC_BIKESERVICE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VC_BIKESERVICE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET RECOVERY FULL 
GO
ALTER DATABASE [VC_BIKESERVICE] SET  MULTI_USER 
GO
ALTER DATABASE [VC_BIKESERVICE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VC_BIKESERVICE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VC_BIKESERVICE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VC_BIKESERVICE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VC_BIKESERVICE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VC_BIKESERVICE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VC_BIKESERVICE', N'ON'
GO
ALTER DATABASE [VC_BIKESERVICE] SET QUERY_STORE = OFF
GO
USE [VC_BIKESERVICE]
GO
/****** Object:  Table [dbo].[FACTURA_INVENTARIO]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA_INVENTARIO](
	[IDFactura] [int] NOT NULL,
	[IDInventario] [int] NOT NULL,
	[Costo] [numeric](18, 2) NOT NULL,
	[PrecioVenta] [numeric](18, 2) NOT NULL,
	[Cantidad] [numeric](18, 2) NOT NULL,
	[PorcentajeImpuesto] [numeric](18, 2) NOT NULL,
	[PorcentajeDescuento] [numeric](18, 2) NOT NULL,
	[SubTotal] [numeric](18, 2) NOT NULL,
	[DescuentoTotal] [numeric](18, 2) NOT NULL,
	[SubTotal2] [numeric](18, 2) NOT NULL,
	[ImpuestosTotal] [numeric](18, 2) NOT NULL,
	[TotalLinea] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_MiTabla] PRIMARY KEY CLUSTERED 
(
	[IDFactura] ASC,
	[IDInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[IDInventario] [int] IDENTITY(1,1) NOT NULL,
	[NombreItem] [varchar](255) NOT NULL,
	[Marca] [varchar](255) NOT NULL,
	[Tipo] [varchar](255) NOT NULL,
	[CodigoBarras] [varchar](255) NULL,
	[Costo] [numeric](18, 2) NOT NULL,
	[PrecioVenta] [numeric](18, 2) NOT NULL,
	[CantidadEnStock] [numeric](18, 2) NOT NULL,
	[Activo] [bit] NOT NULL,
	[IDImpuesto] [int] NOT NULL,
	[IDCategoria] [int] NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[IDMantenimineto] [int] NOT NULL,
	[IDBicicleta] [int] NOT NULL,
	[IDRepuesto] [int] NOT NULL,
 CONSTRAINT [PK__INVENTAR__FDC6108800FF1BC5] PRIMARY KEY CLUSTERED 
(
	[IDInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IDUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](255) NOT NULL,
	[CedulaUsuario] [varchar](255) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Contrasennia] [varchar](500) NOT NULL,
	[CodigoRecuperacion] [varchar](255) NULL,
	[EmailUsuario] [varchar](255) NOT NULL,
	[Activo] [bit] NOT NULL,
	[IDUsuarioRol] [int] NOT NULL,
	[IDEmpresa] [int] NOT NULL,
 CONSTRAINT [PK__USUARIO__ED09F0D5F7C9FB12] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPUESTO]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPUESTO](
	[IDImpuesto] [int] IDENTITY(1,1) NOT NULL,
	[CodigoImpuesto] [varchar](255) NOT NULL,
	[NombreImpuesto] [varchar](255) NOT NULL,
	[TasaImpuesto] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK__IMPUESTO__851756716176643F] PRIMARY KEY CLUSTERED 
(
	[IDImpuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA](
	[IDFactura] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Notas] [varchar](1500) NULL,
	[IDCliente] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[IDFacturaTipo] [int] NOT NULL,
	[IDBicicleta] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[IDMantenimiento] [int] NOT NULL,
	[IDRepuesto] [int] NOT NULL,
 CONSTRAINT [PK__FACTURA__FDC610886471F0FA] PRIMARY KEY CLUSTERED 
(
	[IDFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturaTipo]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaTipo](
	[IDFacturaTipo] [int] IDENTITY(1,1) NOT NULL,
	[TipoFactura] [varchar](255) NOT NULL,
 CONSTRAINT [PK__FacturaT__7663DB9419760295] PRIMARY KEY CLUSTERED 
(
	[IDFacturaTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[CedulaCliente] [varchar](255) NULL,
	[NombreCliente] [varchar](255) NOT NULL,
	[EmailCliente] [varchar](255) NULL,
	[TelefonoCliente] [varchar](255) NULL,
	[DireccionCliente] [varchar](1000) NULL,
	[IDMarcaBicicleta] [int] NULL,
	[Activo] [bit] NOT NULL,
	[IDBicicleta] [int] NOT NULL,
	[IDUsuario] [int] NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VwFactura]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwFactura]
AS
SELECT        dbo.FACTURA.IDFactura, dbo.FACTURA.Numero, dbo.FACTURA.Fecha, dbo.FACTURA.Notas, dbo.FACTURA_INVENTARIO.Costo, dbo.FACTURA_INVENTARIO.PrecioVenta, dbo.FACTURA_INVENTARIO.Cantidad, 
                         dbo.FACTURA_INVENTARIO.PorcentajeImpuesto, dbo.FACTURA_INVENTARIO.PorcentajeDescuento, dbo.FACTURA_INVENTARIO.SubTotal, dbo.FACTURA_INVENTARIO.DescuentoTotal, dbo.FACTURA_INVENTARIO.SubTotal2, 
                         dbo.FACTURA_INVENTARIO.ImpuestosTotal, dbo.FACTURA_INVENTARIO.TotalLinea, dbo.INVENTARIO.NombreItem, dbo.INVENTARIO.CodigoBarras, dbo.USUARIO.Nombre AS NombreUsuario, 
                         dbo.CLIENTE.NombreCliente, dbo.FacturaTipo.TipoFactura, dbo.FACTURA_INVENTARIO.IDInventario
FROM            dbo.USUARIO INNER JOIN
                         
                         dbo.INVENTARIO INNER JOIN
                         dbo.CLIENTE INNER JOIN
                         dbo.FACTURA ON dbo.CLIENTE.IDCliente = dbo.FACTURA.IDCliente INNER JOIN
                         dbo.FACTURA_INVENTARIO ON dbo.FACTURA.IDFactura = dbo.FACTURA_INVENTARIO.IDFactura INNER JOIN
                         dbo.FacturaTipo ON dbo.FACTURA.IDFacturaTipo = dbo.FacturaTipo.IDFacturaTipo ON dbo.INVENTARIO.IDInventario = dbo.FACTURA_INVENTARIO.IDInventario INNER JOIN
                         dbo.IMPUESTO ON dbo.INVENTARIO.IDImpuesto = dbo.IMPUESTO.IDImpuesto ON dbo.USUARIO.IDUsuario = dbo.FACTURA.IDUsuario
GO
/****** Object:  Table [dbo].[ BiciletaTipo]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ BiciletaTipo](
	[IDBiciletaTipo] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](255) NOT NULL,
 CONSTRAINT [PK__ Bicilet__E7F95648A29CA315] PRIMARY KEY CLUSTERED 
(
	[IDBiciletaTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ RepuestoTipo]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ RepuestoTipo](
	[IDTipoRepuesto] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](255) NOT NULL,
	[Marca] [varchar](255) NOT NULL,
	[Costo] [varchar](255) NOT NULL,
	[PrecioVenta] [varchar](255) NULL,
	[Notas] [varchar](255) NULL,
	[Activo] [bit] NOT NULL,
	[IDBiciletaTipo] [int] NOT NULL,
 CONSTRAINT [PK__ Repuest__B2C36E8BDA3ABF5C] PRIMARY KEY CLUSTERED 
(
	[IDTipoRepuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bicicleta]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bicicleta](
	[IDBicicleta] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](255) NOT NULL,
	[Costo] [varchar](255) NOT NULL,
	[PrecioVenta] [varchar](255) NULL,
	[Notas] [varchar](255) NULL,
	[Activo] [bit] NOT NULL,
	[NombreProveedor] [varchar](255) NOT NULL,
	[IDBiciletaTipo] [int] NOT NULL,
 CONSTRAINT [PK__Biciclet__B2C36E8B54489FA0] PRIMARY KEY CLUSTERED 
(
	[IDBicicleta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IDCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Categori__A21FBE9E0FF3206A] PRIMARY KEY CLUSTERED 
(
	[IDCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[IDEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[CedulaEmpresa] [varchar](255) NOT NULL,
	[NombreEmpresa] [varchar](255) NOT NULL,
	[DireccionEmpresa] [varchar](500) NOT NULL,
	[EmailEmpresa] [varchar](255) NOT NULL,
	[TelefonoEmpresa] [varchar](255) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__Empresa__68B9936F66C83E30] PRIMARY KEY CLUSTERED 
(
	[IDEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTARIO_PROVEEDOR]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO_PROVEEDOR](
	[IDInventario] [int] NOT NULL,
	[IDProveedor] [int] NOT NULL,
	[PrecioOferta] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_MiTablas] PRIMARY KEY CLUSTERED 
(
	[IDProveedor] ASC,
	[IDInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[IDMantenimineto] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](255) NOT NULL,
	[Costo] [varchar](255) NOT NULL,
	[PrecioVenta] [varchar](255) NULL,
	[Notas] [varchar](1000) NULL,
	[Activo] [bit] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[IDMantenimientoTipo] [int] NOT NULL,
	[IDRepuesto] [int] NULL,
	[IDBicicleta] [int] NULL,
	[IDUsuario] [int] NULL,
 CONSTRAINT [PK__Mantenim__21BC37E7C1213E1A] PRIMARY KEY CLUSTERED 
(
	[IDMantenimineto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManteniminetoTipo]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManteniminetoTipo](
	[IDMantenimientoTipo] [int] IDENTITY(1,1) NOT NULL,
	[NombreMantenimiento] [varchar](255) NOT NULL,
	[Marca] [varchar](255) NOT NULL,
	[Costo] [varchar](255) NOT NULL,
	[PrecioVenta] [varchar](255) NULL,
	[Notas] [varchar](255) NULL,
	[Activo] [bit] NOT NULL,
	[TipoMantenimineto] [varchar](255) NOT NULL,
	[IDRepuesto] [int] NOT NULL,
 CONSTRAINT [PK__Mantenim__FDC61088157EA559] PRIMARY KEY CLUSTERED 
(
	[IDMantenimientoTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarcaBicicleta]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarcaBicicleta](
	[IDMarcaBicicleta] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](255) NULL,
	[Nombre] [varchar](255) NULL,
 CONSTRAINT [PK_MarcaBicicleta] PRIMARY KEY CLUSTERED 
(
	[IDMarcaBicicleta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[IDProducto] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](255) NOT NULL,
	[Costo] [varchar](255) NOT NULL,
	[PrecioVenta] [varchar](255) NULL,
	[Notas] [varchar](255) NULL,
	[Activo] [bit] NOT NULL,
	[Marca] [varchar](255) NOT NULL,
	[IDProveedor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[IDProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Cedula] [varchar](255) NOT NULL,
	[Direccion] [varchar](255) NULL,
	[Notas] [varchar](255) NULL,
	[Activo] [bit] NOT NULL,
	[IDEmpresa] [varchar](255) NOT NULL,
	[IDRepuesto] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
 CONSTRAINT [PK__PROVEEDO__ABDAF2B44E4D9741] PRIMARY KEY CLUSTERED 
(
	[IDProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repuesto]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repuesto](
	[IDRepuesto] [int] IDENTITY(1,1) NOT NULL,
	[NombreRepuesto] [varchar](255) NOT NULL,
	[Marca] [varchar](255) NOT NULL,
	[Costo] [varchar](255) NOT NULL,
	[PrecioVenta] [varchar](255) NULL,
	[Notas] [varchar](255) NULL,
	[Activo] [bit] NOT NULL,
	[IDTipoRepuesto] [int] NOT NULL,
	[IDBiciletaTipo] [int] NOT NULL,
 CONSTRAINT [PK__Repuesto__B2C36E8B6648B36C] PRIMARY KEY CLUSTERED 
(
	[IDRepuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioRol]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioRol](
	[IDUsuarioRol] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [varchar](255) NOT NULL,
 CONSTRAINT [PK__UsuarioR__CAF00515C33D5C90] PRIMARY KEY CLUSTERED 
(
	[IDUsuarioRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT ('1') FOR [Activo]
GO
ALTER TABLE [dbo].[FACTURA] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[INVENTARIO] ADD  DEFAULT ('1') FOR [Activo]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD  DEFAULT ('1') FOR [Activo]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ('1') FOR [Activo]
GO
ALTER TABLE [dbo].[Bicicleta]  WITH CHECK ADD  CONSTRAINT [FKFACTURA674225] FOREIGN KEY([IDBiciletaTipo])
REFERENCES [dbo].[ BiciletaTipo] ([IDBiciletaTipo])
GO
ALTER TABLE [dbo].[Bicicleta] CHECK CONSTRAINT [FKFACTURA674225]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [bb] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[USUARIO] ([IDUsuario])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [bb]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FKUSU] FOREIGN KEY([IDMarcaBicicleta])
REFERENCES [dbo].[MarcaBicicleta] ([IDMarcaBicicleta])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FKUSU]
GO
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [FKF5] FOREIGN KEY([IDFacturaTipo])
REFERENCES [dbo].[FacturaTipo] ([IDFacturaTipo])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [FKF5]
GO
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [FKFACTURA451000] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[USUARIO] ([IDUsuario])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [FKFACTURA451000]
GO
ALTER TABLE [dbo].[FACTURA_INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FKFACTURA_IN582599] FOREIGN KEY([IDInventario])
REFERENCES [dbo].[INVENTARIO] ([IDInventario])
GO
ALTER TABLE [dbo].[FACTURA_INVENTARIO] CHECK CONSTRAINT [FKFACTURA_IN582599]
GO
ALTER TABLE [dbo].[FACTURA_INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FKFACTURA_IN871168] FOREIGN KEY([IDFactura])
REFERENCES [dbo].[FACTURA] ([IDFactura])
GO
ALTER TABLE [dbo].[FACTURA_INVENTARIO] CHECK CONSTRAINT [FKFACTURA_IN871168]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [F5] FOREIGN KEY([IDRepuesto])
REFERENCES [dbo].[Repuesto] ([IDRepuesto])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [F5]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FFACTU25] FOREIGN KEY([IDBicicleta])
REFERENCES [dbo].[Bicicleta] ([IDBicicleta])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FFACTU25]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FKINVENTARIO519878] FOREIGN KEY([IDEmpresa])
REFERENCES [dbo].[Empresa] ([IDEmpresa])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FKINVENTARIO519878]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FKINVENTARIO793106] FOREIGN KEY([IDCategoria])
REFERENCES [dbo].[Categoria] ([IDCategoria])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FKINVENTARIO793106]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FKINVENTARIO970345] FOREIGN KEY([IDImpuesto])
REFERENCES [dbo].[IMPUESTO] ([IDImpuesto])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FKINVENTARIO970345]
GO
ALTER TABLE [dbo].[INVENTARIO_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FKINVENTARIO687437] FOREIGN KEY([IDProveedor])
REFERENCES [dbo].[PROVEEDOR] ([IDProveedor])
GO
ALTER TABLE [dbo].[INVENTARIO_PROVEEDOR] CHECK CONSTRAINT [FKINVENTARIO687437]
GO
ALTER TABLE [dbo].[INVENTARIO_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FKINVENTARIO9203] FOREIGN KEY([IDInventario])
REFERENCES [dbo].[INVENTARIO] ([IDInventario])
GO
ALTER TABLE [dbo].[INVENTARIO_PROVEEDOR] CHECK CONSTRAINT [FKINVENTARIO9203]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [a] FOREIGN KEY([IDBicicleta])
REFERENCES [dbo].[Bicicleta] ([IDBicicleta])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [a]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [FKFA5] FOREIGN KEY([IDMantenimientoTipo])
REFERENCES [dbo].[ManteniminetoTipo] ([IDMantenimientoTipo])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [FKFA5]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [FKFAC74225] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[USUARIO] ([IDUsuario])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [FKFAC74225]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FAT25] FOREIGN KEY([IDProveedor])
REFERENCES [dbo].[ManteniminetoTipo] ([IDMantenimientoTipo])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FAT25]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FFAT25] FOREIGN KEY([IDProveedor])
REFERENCES [dbo].[PROVEEDOR] ([IDProveedor])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FFAT25]
GO
ALTER TABLE [dbo].[Repuesto]  WITH CHECK ADD  CONSTRAINT [FK5] FOREIGN KEY([IDTipoRepuesto])
REFERENCES [dbo].[ RepuestoTipo] ([IDTipoRepuesto])
GO
ALTER TABLE [dbo].[Repuesto] CHECK CONSTRAINT [FK5]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FKUSUARIO790647] FOREIGN KEY([IDUsuarioRol])
REFERENCES [dbo].[UsuarioRol] ([IDUsuarioRol])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FKUSUARIO790647]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FKUSUARIO944945] FOREIGN KEY([IDEmpresa])
REFERENCES [dbo].[Empresa] ([IDEmpresa])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FKUSUARIO944945]
GO
/****** Object:  StoredProcedure [dbo].[SPClienteActivar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven
-- Create date: 
-- Description:	
-- =============================================
create PROCEDURE [dbo].[SPClienteActivar]
	@IDCliente int
AS
BEGIN
	SET NOCOUNT OFF;

	UPDATE CLIENTE
			SET Activo = 1
			WHERE IDCliente = @IDCliente; 
	    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteAgregar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPClienteAgregar] 
	-- Add the parameters for the stored procedure here
	@IDCliente int,
	@CedulaCliente varchar(255), 
	@NombreCliente varchar(255), 
	@EmailCliente varchar(255),
	@TelefonoCliente varchar(255),
	@DireccionCliente varchar(255),
	@MarcaBicicleta varchar(255),
	@IDBicicleta int
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO CLIENTE
	(IDCliente,CedulaCliente,NombreCliente,EmailCliente,TelefonoCliente,DireccionCliente,MarcaBicicleta,IDBicicleta)
	VALUES
	(@IDCliente ,@CedulaCliente , @NombreCliente , @EmailCliente ,@TelefonoCliente ,@DireccionCliente ,@MarcaBicicleta ,@IDBicicleta)
   
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorCedula]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
Create PROCEDURE [dbo].[SPClienteConsultarPorCedula]
	@CedulaCliente varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDCliente
	FROM CLIENTE
	WHERE CedulaCliente = @CedulaCliente;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorDirrecion]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
Create PROCEDURE [dbo].[SPClienteConsultarPorDirrecion]
	@DireccionCliente varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDCliente
	FROM CLIENTE
	WHERE DireccionCliente = @DireccionCliente;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorEmail]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
Create PROCEDURE [dbo].[SPClienteConsultarPorEmail]
	@EmailCliente varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDCliente
	FROM CLIENTE
	WHERE EmailCliente = @EmailCliente;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorID]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPClienteConsultarPorID]
	@ID int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT        IDCliente, CedulaCliente, NombreCliente, EmailCliente, TelefonoCliente, DireccionCliente, Activo, IDBicicleta
	FROM            CLIENTE
	WHERE IDCliente = @ID;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorIDCliente]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
create PROCEDURE [dbo].[SPClienteConsultarPorIDCliente]
	@IDCliente int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT CLIENTE.NombreCliente,CLIENTE.CedulaCliente,TelefonoCliente,MarcaBicicleta,CLIENTE.EmailCliente,CLIENTE.Activo,CLIENTE.DireccionCliente, Bicicleta.IDBicicleta
	FROM   CLIENTE INNER JOIN
           Bicicleta ON CLIENTE.IDBicicleta= Bicicleta.IDBicicleta
	WHERE  (CLIENTE.IDCliente = @IDCliente);
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorMarcaBici]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
Create PROCEDURE [dbo].[SPClienteConsultarPorMarcaBici]
	@MarcaBicicleta varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDCliente
	FROM CLIENTE
	WHERE MarcaBicicleta = @MarcaBicicleta;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorNombre]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
Create PROCEDURE [dbo].[SPClienteConsultarPorNombre]
	@NombreCliente varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDCliente
	FROM CLIENTE
	WHERE NombreCliente = @NombreCliente;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteConsultarPorTelefono]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
Create PROCEDURE [dbo].[SPClienteConsultarPorTelefono]
	@TelefonoCliente varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDCliente
	FROM CLIENTE
	WHERE TelefonoCliente = @TelefonoCliente;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPClienteListar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPClienteListar] 
	@VerActivos bit, 
	@FiltroBusqueda varchar(50) = ''
AS
BEGIN
	SET NOCOUNT ON;

	IF @FiltroBusqueda = '' OR @FiltroBusqueda IS NULL
	begin
		--Si no hay parámetro de busqueda se muestra toda la lista

		SELECT IDCliente, CedulaCliente, NombreCliente, TelefonoCliente
		FROM   CLIENTE
		WHERE  Activo = @VerActivos;

	end
	ELSE
	begin
		--Si hay un valor de búsqueda se debe agregar al WHERE
		DECLARE @Filtro as Varchar(50) 
		SET @Filtro = '%' + @FiltroBusqueda + '%'

		SELECT IDCliente, CedulaCliente, NombreCliente, TelefonoCliente
		FROM   CLIENTE
		WHERE  Activo = @VerActivos AND CedulaCliente LIKE @Filtro OR
			   Activo = @VerActivos AND NombreCliente LIKE @Filtro OR
			   Activo = @VerActivos AND TelefonoCliente LIKE @Filtro;

	end

   
END
GO
/****** Object:  StoredProcedure [dbo].[SPEmpresasListar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPEmpresasListar] 
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
	IDEmpresa AS Id, 
	NombreEmpresa AS D
	FROM Empresa
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPFacturaAgregar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPFacturaAgregar]
	@IDCliente int, 
	@IDUsuario int, 
	@IDTipoFactura int, 
	@Notas varchar(1500),
	@IDBicicleta int,
	@IDProducto int,
	@IDMantenimiento int
AS
BEGIN
	SET NOCOUNT OFF;

	INSERT INTO FACTURA
	(Numero, Fecha, Notas, IDCliente, IDUsuario, IDFacturaTipo,IDBicicleta,IDProducto,IDMantenimiento)
	VALUES
	(1, GETDATE(), @Notas, @IDCliente, @IDUsuario, @IDTipoFactura,@IDBicicleta,@IDProducto,@IDMantenimiento)
	SELECT SCOPE_IDENTITY() as id;
    
	--debemos crear una función de asignación de numero
END
GO
/****** Object:  StoredProcedure [dbo].[SPFacturaAgregarDetalle]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPFacturaAgregarDetalle]
	@IDFactura int, 
	@IDInventario int, 
	@Costo numeric(18,2), 
	@PrecioVenta numeric(18,2), 
	@Cantidad numeric(18,2), 
	@PorcentajeImpuesto numeric(18,2), 
	@PorcentajeDescuento numeric(18,2), 
	@SubTotal numeric(18,2), 
	@DescuentoTotal numeric(18,2),
	@SubTotal2 numeric(18,2), 
	@ImpuestosTotal numeric(18,2),
	@TotalLinea numeric(18,2)
AS
BEGIN
	SET NOCOUNT OFF;

	INSERT INTO FACTURA_INVENTARIO
	(IDFactura, IDInventario, Costo, PrecioVenta, Cantidad, PorcentajeImpuesto, 
	PorcentajeDescuento, SubTotal, DescuentoTotal, SubTotal2, ImpuestosTotal, TotalLinea)
	VALUES
	(@IDFactura, @IDInventario, @Costo, @PrecioVenta, @Cantidad, @PorcentajeImpuesto, 
	@PorcentajeDescuento, @SubTotal, @DescuentoTotal, @SubTotal2, @ImpuestosTotal, @TotalLinea);
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPFacturaDetalleEsquema]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	 steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPFacturaDetalleEsquema] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT	FACTURA_INVENTARIO.IDInventario, 
			INVENTARIO.NombreItem, 
			INVENTARIO.PrecioVenta, 
			FACTURA_INVENTARIO.Cantidad, 
			IMPUESTO.TasaImpuesto, 
			FACTURA_INVENTARIO.PorcentajeDescuento, 
			FACTURA_INVENTARIO.SubTotal, 
			FACTURA_INVENTARIO.DescuentoTotal, 
			FACTURA_INVENTARIO.SubTotal2, 
			FACTURA_INVENTARIO.ImpuestosTotal, 
			FACTURA_INVENTARIO.TotalLinea
	FROM   FACTURA_INVENTARIO INNER JOIN
           INVENTARIO ON FACTURA_INVENTARIO.IDInventario = INVENTARIO.IDInventario INNER JOIN
           IMPUESTO ON INVENTARIO.IDImpuesto = IMPUESTO.IDImpuesto
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPFacturaTipoListar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPFacturaTipoListar] 
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
	[IDFacturaTipo] AS [ID], 
	[TipoFactura] as [D]
	FROM [dbo].[FacturaTipo];
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPInventarioAgregar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jurgen Granados
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPInventarioAgregar]
	@NombreItem varchar(255), 
	@IDInventario varchar(255), 
	@Marca varchar(255), 
	@Tipo varchar(500), 
	@CodigoBarras varchar(255), 
	@Costo int, 
	@PrecioVenta int,
	@CantidadStock int 
AS
BEGIN
	SET NOCOUNT OFF;

	INSERT INTO INVENTARIO
	(NombreItem, IDInventario, Marca, Tipo, CodigoBarras, Costo, PrecioVenta, CantidadEnStock)
	VALUES
	(@NombreItem, @IDInventario, @Marca, @Tipo, @CodigoBarras, @Costo, @PrecioVenta,@CantidadStock);
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPInventarioListar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPInventarioListar] 
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	INVENTARIO.IDInventario, 
	INVENTARIO.NombreItem, 
	INVENTARIO.CodigoBarras, 
	INVENTARIO.Costo, 
	INVENTARIO.PrecioVenta, 
	INVENTARIO.CantidadEnStock, 
	IMPUESTO.TasaImpuesto, 
	Categoria.NombreCategoria
	FROM   IMPUESTO INNER JOIN
           INVENTARIO ON IMPUESTO.IDImpuesto = INVENTARIO.IDImpuesto LEFT OUTER JOIN
           Categoria ON INVENTARIO.IDCategoria = Categoria.IDCategoria
		   WHERE Activo = 1;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioActivar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Delgado
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioActivar]
	@ID int
AS
BEGIN
	SET NOCOUNT OFF;

	UPDATE [dbo].[USUARIO]
			SET Activo = 1
			WHERE IDUsuario = @ID; 
	    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioAgregar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Delgado
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioAgregar]
	@Nombre varchar(255), 
	@Cedula varchar(255), 
	@NombreUsuario varchar(255), 
	@Contrasennia varchar(500), 
	@Email varchar(255), 
	@IDRol int, 
	@IDEmpresa int
AS
BEGIN
	SET NOCOUNT OFF;

	INSERT INTO USUARIO
	(CedulaUsuario, NombreUsuario, Nombre, EmailUsuario, Contrasennia, IDUsuarioRol)
	VALUES
	(@Cedula, @NombreUsuario, @Nombre, @Email, @Contrasennia, @IDRol);
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioConsultarPorCedula]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	steven vargas
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioConsultarPorCedula]
	@Cedula varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDUsuario
	FROM USUARIO
	WHERE CedulaUsuario= @Cedula;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioConsultarPorEmail]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioConsultarPorEmail]
	@Email varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDUsuario
	FROM USUARIO
	WHERE EmailUsuario = @Email;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioConsultarPorID]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioConsultarPorID]
	@ID int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT USUARIO.IDUsuario, USUARIO.Nombre, USUARIO.CedulaUsuario, USUARIO.NombreUsuario, USUARIO.EmailUsuario, USUARIO.Activo, USUARIO.IDUsuarioRol, UsuarioRol.Rol
	FROM   USUARIO INNER JOIN
           UsuarioRol ON USUARIO.IDUsuarioRol = UsuarioRol.IDUsuarioRol
	WHERE  (USUARIO.IDUsuario = @ID);
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioConsultarPorNombreUsuario]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioConsultarPorNombreUsuario]
	@NombreUsuario varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDUsuario
	FROM USUARIO
	WHERE NombreUsuario = @NombreUsuario;
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioEliminar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioEliminar]
	@ID int
AS
BEGIN
	SET NOCOUNT OFF;

	UPDATE [dbo].[USUARIO]
			SET Activo = 0
			WHERE IDUsuario = @ID; 
	    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioListar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioListar] 
	@VerActivos bit, 
	@FiltroBusqueda varchar(50) = ''
AS
BEGIN
	SET NOCOUNT ON;

	IF @FiltroBusqueda = '' OR @FiltroBusqueda IS NULL
	begin
		--Si no hay parámetro de busqueda se muestra toda la lista

		SELECT        USUARIO.IDUsuario, USUARIO.Nombre, USUARIO.CedulaUsuario, USUARIO.EmailUsuario, Empresa.NombreEmpresa, UsuarioRol.Rol
		FROM            Empresa INNER JOIN
        USUARIO ON Empresa.IDEmpresa = USUARIO.IDEmpresa  INNER JOIN
        UsuarioRol ON USUARIO.IDUsuarioRol = UsuarioRol.IDUsuarioRol
		WHERE USUARIO.Activo = @VerActivos;

	end
	ELSE
	begin
		--Si hay un valor de búsqueda se debe agregar al WHERE
		DECLARE @Filtro as Varchar(50) 
		SET @Filtro = '%' + @FiltroBusqueda + '%'

		SELECT        USUARIO.IDUsuario, USUARIO.Nombre, USUARIO.CedulaUsuario, USUARIO.EmailUsuario, Empresa.NombreEmpresa, UsuarioRol.Rol
		FROM            Empresa INNER JOIN
        USUARIO ON Empresa.IDEmpresa = USUARIO.IDEmpresa INNER JOIN
        UsuarioRol ON USUARIO.IDUsuarioRol = UsuarioRol.IDUsuarioRol
		WHERE (USUARIO.Activo = @VerActivos) AND (USUARIO.Nombre LIKE @Filtro) OR
			  (USUARIO.Activo = @VerActivos) AND (USUARIO.CedulaUsuario LIKE @Filtro) OR
			  (USUARIO.Activo = @VerActivos) AND (USUARIO.EmailUsuario LIKE @Filtro) OR
			  (USUARIO.Activo = @VerActivos) AND (USUARIO.NombreUsuario LIKE @Filtro)
	end

   
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioModificar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioModificar]
	@Nombre varchar(255), 
	@Cedula varchar(255), 
	@NombreUsuario varchar(255), 
	@Contrasennia varchar(500) = '', 
	@Email varchar(255), 
	@IDRol int, 
	@IDEmpresa int, 
	@ID int
AS
BEGIN
	SET NOCOUNT OFF;

	--debemos tomar uno de dos caminos, usando la contraseña como 
	--diferenciador. Si trae datos se quiere actualizar la contraseña, 
	--sino solo el resto de campos. 

	IF (@Contrasennia = '')
		begin
			UPDATE [dbo].[USUARIO]
			SET Nombre = @Nombre, 
				CedulaUsuario = @Cedula, 
				NombreUsuario = @NombreUsuario, 
				EmailUsuario = @Email, 
				IDUsuarioRol = @IDRol 
				
				WHERE IDUsuario = @ID;
		end
	ELSE
		begin
			UPDATE [dbo].[USUARIO]
			SET Nombre = @Nombre, 
				CedulaUsuario = @Cedula, 
				NombreUsuario = @NombreUsuario, 
				EmailUsuario = @Email, 
				IDUsuarioRol = @IDRol ,
				Contrasennia = @Contrasennia 
				WHERE IDUsuario = @ID;
		end
	    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioRolListar]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioRolListar] 
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM dbo.UsuarioRol
    
END
GO
/****** Object:  StoredProcedure [dbo].[SPUsuarioValidarLogin]    Script Date: 18 dic. 2022 18:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		steven vargas 
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioValidarLogin]
	@NombreUsuario varchar(255), 
	@Contrasennia varchar(500)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IDUsuario
	FROM USUARIO
	WHERE (NombreUsuario = @NombreUsuario) AND 
	(Contrasennia = @Contrasennia) AND
	(Activo = 1);
    
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[10] 2[25] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CLIENTE"
            Begin Extent = 
               Top = 1
               Left = 102
               Bottom = 201
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empresa"
            Begin Extent = 
               Top = 0
               Left = 531
               Bottom = 130
               Right = 715
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FACTURA"
            Begin Extent = 
               Top = 147
               Left = 382
               Bottom = 418
               Right = 552
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FACTURA_INVENTARIO"
            Begin Extent = 
               Top = 174
               Left = 721
               Bottom = 404
               Right = 922
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "FacturaTipo"
            Begin Extent = 
               Top = 206
               Left = 14
               Bottom = 326
               Right = 184
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "IMPUESTO"
            Begin Extent = 
               Top = 261
               Left = 1032
               Bottom = 391
               Right = 1215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "INVENTARIO"
            Begin Extent = 
               Top = 181
               Left = 1429
               Bottom = 420
               Right = 1608
            End
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFactura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "USUARIO"
            Begin Extent = 
               Top = 0
               Left = 1422
               Bottom = 169
               Right = 1622
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 22
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2115
         Alias = 2580
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFactura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VwFactura'
GO
USE [master]
GO
ALTER DATABASE [VC_BIKESERVICE] SET  READ_WRITE 
GO
