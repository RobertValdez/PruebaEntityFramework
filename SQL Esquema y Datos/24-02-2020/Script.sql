USE [master]
GO
/****** Object:  Database [BDA]    Script Date: 24/02/2020 7:54:04 ******/
CREATE DATABASE [BDA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDA.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDA_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDA] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDA] SET RECOVERY FULL 
GO
ALTER DATABASE [BDA] SET  MULTI_USER 
GO
ALTER DATABASE [BDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDA', N'ON'
GO
USE [BDA]
GO
/****** Object:  StoredProcedure [dbo].[FDT]    Script Date: 24/02/2020 7:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FDT]
  @A int
  as
  select f.[As],f.ves, f.ses, c.Estudio, c.Curso
  from Farma f join Cologia c on f.id = c.idFarma
  where f.id = @A
GO
/****** Object:  StoredProcedure [dbo].[RTS]    Script Date: 24/02/2020 7:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RTS]
as
select t.a, t.b, r.[As] from Air t join Farma r on t.a = r.id

GO
/****** Object:  Table [dbo].[Air]    Script Date: 24/02/2020 7:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Air](
	[a] [int] IDENTITY(1,1) NOT NULL,
	[b] [varchar](10) NULL,
	[c] [float] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Air] PRIMARY KEY CLUSTERED 
(
	[a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cologia]    Script Date: 24/02/2020 7:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cologia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idFarma] [int] NOT NULL,
	[Estudio] [varchar](50) NULL,
	[Curso] [varchar](50) NULL,
 CONSTRAINT [PK_Cologia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Farma]    Script Date: 24/02/2020 7:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[As] [nchar](10) NULL,
	[ves] [nchar](10) NULL,
	[ses] [nchar](10) NULL,
 CONSTRAINT [PK_Farma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Air] ON 

INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (1, N'Ayer', 5, CAST(0x00009FEB00AA86B0 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (2, N'Robert', 83.2, CAST(0x0000A15900AA86B0 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (3, N'Manantial', 63.3, CAST(0x0000A2C600AA86B0 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (4, N'Sosal', 52, CAST(0x0000AB4F011EF29E AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (5, N'PRESTIGIO', 50, CAST(0x0000AB4F01142AE3 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (34, N'Robert', 83.2, CAST(0x0000AAAB016CECCC AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (35, N'Valdez', 21.2, CAST(0x0000AB4F00FDA332 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (36, N'Matos', 57.7, CAST(0x0000AB4F00FEA9EC AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (38, N'er', 34, CAST(0x0000AB4F0113A6CD AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (39, N'Matos', 57.7, CAST(0x0000AB4F00FEB9EE AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (41, N'Matos', 57.7, CAST(0x0000AB4F00FF0F07 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (42, N'Matos', 57.7, CAST(0x0000AB4F00FF13F0 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (43, N'Matos', 57.7, CAST(0x0000AB4F00FF142D AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (44, N'Matos', 57.7, CAST(0x0000AB4F00FF3E38 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (45, N'Matos', 57.7, CAST(0x0000AB4F00FF42EA AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (46, N'Matos', 57.7, CAST(0x0000AB4F00FF451E AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (47, N'Matos', 57.7, CAST(0x0000AB4F00FF490E AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (48, N'MatosRD', 57.7, CAST(0x0000AB4F01015B57 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (49, N'Elder', 52, CAST(0x0000AB4F01095E39 AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (51, N'Matos', 57.7, CAST(0x0000AB4F00FEA9EC AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (52, N'wqe', 23.2, CAST(0x0000AB4F0109CF4C AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (53, N'Gutierrez', 52, CAST(0x0000AB4F0118EB0C AS DateTime))
INSERT [dbo].[Air] ([a], [b], [c], [Fecha]) VALUES (54, N'Elias', 52.9, CAST(0x0000AB5D015B7AC1 AS DateTime))
SET IDENTITY_INSERT [dbo].[Air] OFF
SET IDENTITY_INSERT [dbo].[Cologia] ON 

INSERT [dbo].[Cologia] ([id], [idFarma], [Estudio], [Curso]) VALUES (2, 1, N'Informatica', N'Seccion C')
SET IDENTITY_INSERT [dbo].[Cologia] OFF
SET IDENTITY_INSERT [dbo].[Farma] ON 

INSERT [dbo].[Farma] ([id], [As], [ves], [ses]) VALUES (1, N'Franck    ', N'Valez     ', N'Perez     ')
SET IDENTITY_INSERT [dbo].[Farma] OFF
ALTER TABLE [dbo].[Cologia]  WITH CHECK ADD  CONSTRAINT [FK_Cologia_Farma] FOREIGN KEY([idFarma])
REFERENCES [dbo].[Farma] ([id])
GO
ALTER TABLE [dbo].[Cologia] CHECK CONSTRAINT [FK_Cologia_Farma]
GO
USE [master]
GO
ALTER DATABASE [BDA] SET  READ_WRITE 
GO
