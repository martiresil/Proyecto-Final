


/*Nombre: Martire Silverio Marticula: 16-siit-1-043 seccion: 0541*/

/*Nombre: Fernand Taveras Marticula: 16-siit-1-034 seccion: 0541*/



USE [master]
GO
/****** Object:  Database [ventasbd]    Script Date: 8/4/2018 12:32:43 p. m. ******/
CREATE DATABASE [ventasbd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ventasbd', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.FER\MSSQL\DATA\ventasbd.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ventasbd_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.FER\MSSQL\DATA\ventasbd_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ventasbd] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ventasbd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ventasbd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ventasbd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ventasbd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ventasbd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ventasbd] SET ARITHABORT OFF 
GO
ALTER DATABASE [ventasbd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ventasbd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ventasbd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ventasbd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ventasbd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ventasbd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ventasbd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ventasbd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ventasbd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ventasbd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ventasbd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ventasbd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ventasbd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ventasbd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ventasbd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ventasbd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ventasbd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ventasbd] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ventasbd] SET  MULTI_USER 
GO
ALTER DATABASE [ventasbd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ventasbd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ventasbd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ventasbd] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ventasbd] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ventasbd]
GO
/****** Object:  Table [dbo].[boletas]    Script Date: 8/4/2018 12:32:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[boletas](
	[numboletaId] [int] NOT NULL,
	[fecha] [smalldatetime] NULL,
	[total] [numeric](18, 0) NULL,
	[codcliente] [char](4) NULL,
	[codempleado] [char](4) NULL,
 CONSTRAINT [PK_boletas] PRIMARY KEY CLUSTERED 
(
	[numboletaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 8/4/2018 12:32:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[codcategoriaId] [char](4) NOT NULL,
	[descategoria] [char](50) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[codcategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 8/4/2018 12:32:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[codclienteId] [char](4) NOT NULL,
	[nomcliente] [char](40) NULL,
	[apelcliente] [char](40) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[codclienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 8/4/2018 12:32:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalle](
	[numbol] [int] NOT NULL,
	[codproducto] [char](4) NULL,
	[cantidad] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 8/4/2018 12:32:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[codempleadoId] [char](4) NOT NULL,
	[nombempleado] [char](50) NULL,
	[apelempleado] [nchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[codempleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productos]    Script Date: 8/4/2018 12:32:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productos](
	[codproductoId] [char](4) NOT NULL,
	[nomproducto] [char](50) NULL,
	[precproducto] [numeric](18, 0) NULL,
	[codcategoria] [char](4) NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[codproductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clientes] ([codclienteId], [nomcliente], [apelcliente]) VALUES (N'001 ', N'juan                                    ', N'corripio                                ')
INSERT [dbo].[Clientes] ([codclienteId], [nomcliente], [apelcliente]) VALUES (N'002 ', N'pablo                                   ', N'taveras                                 ')
INSERT [dbo].[Clientes] ([codclienteId], [nomcliente], [apelcliente]) VALUES (N'003 ', N'starlin                                 ', NULL)
ALTER TABLE [dbo].[boletas]  WITH CHECK ADD  CONSTRAINT [FK_boletas_Clientes] FOREIGN KEY([codempleado])
REFERENCES [dbo].[Clientes] ([codclienteId])
GO
ALTER TABLE [dbo].[boletas] CHECK CONSTRAINT [FK_boletas_Clientes]
GO
ALTER TABLE [dbo].[boletas]  WITH CHECK ADD  CONSTRAINT [FK_boletas_Empleados] FOREIGN KEY([codcliente])
REFERENCES [dbo].[Empleados] ([codempleadoId])
GO
ALTER TABLE [dbo].[boletas] CHECK CONSTRAINT [FK_boletas_Empleados]
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD  CONSTRAINT [FK_detalle_boletas] FOREIGN KEY([numbol])
REFERENCES [dbo].[boletas] ([numboletaId])
GO
ALTER TABLE [dbo].[detalle] CHECK CONSTRAINT [FK_detalle_boletas]
GO
USE [master]
GO
ALTER DATABASE [ventasbd] SET  READ_WRITE 
GO
