/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [boat]    Script Date: 11/12/2017 9:43:27 PM ******/
CREATE DATABASE [boat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'boat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\boat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'boat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\boat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [boat] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [boat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [boat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [boat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [boat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [boat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [boat] SET ARITHABORT OFF 
GO
ALTER DATABASE [boat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [boat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [boat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [boat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [boat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [boat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [boat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [boat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [boat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [boat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [boat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [boat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [boat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [boat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [boat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [boat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [boat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [boat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [boat] SET  MULTI_USER 
GO
ALTER DATABASE [boat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [boat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [boat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [boat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [boat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [boat] SET QUERY_STORE = OFF
GO
USE [boat]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [boat]
GO
/****** Object:  Table [dbo].[conbao]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conbao](
	[ma] [varchar](50) NOT NULL,
	[tenconbao] [nvarchar](50) NULL,
	[ghichu] [nvarchar](max) NULL,
	[thoigianhinhthanh] [bigint] NULL,
	[matinhtrang] [int] NULL,
 CONSTRAINT [PK_conbao] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hanhtrinh]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hanhtrinh](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[matauthuyen] [varchar](50) NULL,
	[trangthai] [int] NULL,
 CONSTRAINT [PK_hanhtrinh] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hanhtrinhbao]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hanhtrinhbao](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[maconbao] [varchar](50) NULL,
	[trangthai] [int] NULL,
 CONSTRAINT [PK_hanhtrinhbao] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaitau]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaitau](
	[ma] [varchar](50) NOT NULL,
	[tenloaitau] [nvarchar](50) NULL,
	[kieutau] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaitau] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quocgia]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quocgia](
	[ma] [varchar](50) NOT NULL,
	[tenquocgia] [nvarchar](50) NULL,
 CONSTRAINT [PK_quocgia] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tauthuyen]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tauthuyen](
	[ma] [varchar](50) NOT NULL,
	[tentau] [nvarchar](50) NULL,
	[MMSI] [varchar](50) NULL,
	[maloaitau] [varchar](50) NULL,
	[taitrong] [bigint] NULL,
	[maquocgia] [varchar](50) NULL,
	[image] [varchar](max) NULL,
 CONSTRAINT [PK_tauthuyen] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tinhtrang]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tinhtrang](
	[ma] [int] NOT NULL,
	[tinhtrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tinhtrang] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vitribao]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vitribao](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[mahanhtrinh] [int] NULL,
	[vido] [float] NULL,
	[kinhdo] [float] NULL,
	[thoigian] [bigint] NULL,
	[vantoc] [float] NULL,
 CONSTRAINT [PK_vitribao] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vitritauthuyen]    Script Date: 11/12/2017 9:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vitritauthuyen](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[mahanhtrinh] [int] NULL,
	[vido] [float] NULL,
	[kinhdo] [float] NULL,
	[thoigian] [bigint] NULL,
 CONSTRAINT [PK_vitritauthuyen] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[hanhtrinh] ON 

INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (1, N'VN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (2, N'VN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (3, N'VN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (4, N'VN2', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (5, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (6, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (8, N'VN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (9, N'VN2', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (10, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (11, N'VN2', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (12, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (13, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (14, N'VN2', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (15, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (16, N'VN2', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (17, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (18, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (19, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (20, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (21, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (22, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (23, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (24, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (25, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (26, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (27, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (28, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (29, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (30, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (31, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (32, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (33, N'VN3', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (34, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (35, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (36, N'EN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (37, N'VN1', 0)
INSERT [dbo].[hanhtrinh] ([ma], [matauthuyen], [trangthai]) VALUES (38, N'VN3', 0)
SET IDENTITY_INSERT [dbo].[hanhtrinh] OFF
INSERT [dbo].[loaitau] ([ma], [tenloaitau], [kieutau]) VALUES (N'CH', N'Chở hàng', NULL)
INSERT [dbo].[loaitau] ([ma], [tenloaitau], [kieutau]) VALUES (N'CK', N'Chở khách', NULL)
INSERT [dbo].[loaitau] ([ma], [tenloaitau], [kieutau]) VALUES (N'OL', N'Tàu chở dầu', NULL)
INSERT [dbo].[quocgia] ([ma], [tenquocgia]) VALUES (N'ENG', N'Anh')
INSERT [dbo].[quocgia] ([ma], [tenquocgia]) VALUES (N'FR', N'Pháp')
INSERT [dbo].[quocgia] ([ma], [tenquocgia]) VALUES (N'USA', N'Mỹ')
INSERT [dbo].[quocgia] ([ma], [tenquocgia]) VALUES (N'VN', N'Việt Nam')
INSERT [dbo].[tauthuyen] ([ma], [tentau], [MMSI], [maloaitau], [taitrong], [maquocgia], [image]) VALUES (N'EN1', N'Tàu EN4', N'12', N'CH', 10000, N'ENG', NULL)
INSERT [dbo].[tauthuyen] ([ma], [tentau], [MMSI], [maloaitau], [taitrong], [maquocgia], [image]) VALUES (N'VN1', N'Tàu VN1', N'123', N'CK', 5000, N'VN', NULL)
INSERT [dbo].[tauthuyen] ([ma], [tentau], [MMSI], [maloaitau], [taitrong], [maquocgia], [image]) VALUES (N'VN2', N'Tàu VN2', N'2', N'CK', 5000, N'VN', NULL)
INSERT [dbo].[tauthuyen] ([ma], [tentau], [MMSI], [maloaitau], [taitrong], [maquocgia], [image]) VALUES (N'VN3', N'Tàu VN3', N'3', N'CK', 5000, N'VN', NULL)
INSERT [dbo].[tinhtrang] ([ma], [tinhtrang]) VALUES (1, N'Mới hình thành')
INSERT [dbo].[tinhtrang] ([ma], [tinhtrang]) VALUES (2, N'Mạnh')
INSERT [dbo].[tinhtrang] ([ma], [tinhtrang]) VALUES (3, N'Siêu bão')
INSERT [dbo].[tinhtrang] ([ma], [tinhtrang]) VALUES (4, N'Suy yếu')
INSERT [dbo].[tinhtrang] ([ma], [tinhtrang]) VALUES (5, N'Áp thấp')
INSERT [dbo].[tinhtrang] ([ma], [tinhtrang]) VALUES (6, N'Tan')
SET IDENTITY_INSERT [dbo].[vitritauthuyen] ON 

INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (1, 2, 18.899141, 106.622314, 1510027871000)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (2, 4, 16.597372, 108.863525, 1510114271000)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (3, 5, 16.302346, 109.017334, 1510114271000)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (4, 6, 17.186059, 109.259033, 1510114271000)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (5, 3, 16.891945, 108.753662, 1510114271000)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (6, 8, 16.391945, 109.303662, 1510243791359)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (7, 8, 17.211945, 108.563662, 1510243796380)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (8, 8, 18.161945, 107.733662, 1510243801380)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (9, 9, 15.957372, 109.233525, 1510244494181)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (10, 9, 15.357372, 110.103525, 1510244499193)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (11, 9, 14.627372, 111.063525, 1510244504193)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (12, 9, 13.767372, 111.113525, 1510244509193)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (13, 9, 12.787372, 111.263525, 1510244514197)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (14, 9, 12.897372, 111.023525, 1510244519192)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (15, 9, 13.137372, 110.693525, 1510244524192)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (16, 9, 12.777372, 111.113525, 1510244529195)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (17, 10, 17.806059, 108.669033, 1510244806158)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (18, 10, 17.346059, 108.739033, 1510244811177)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (19, 10, 17.936059, 108.569033, 1510244816178)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (20, 10, 17.216059, 108.829033, 1510244821177)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (21, 10, 16.376059, 109.179033, 1510244826177)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (22, 10, 15.406059, 109.629033, 1510244831177)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (23, 11, 12.787372, 111.116525, 1510245058251)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (24, 11, 12.797372, 111.119525, 1510245063256)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (25, 11, 12.807372, 111.122525, 1510245068259)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (26, 11, 12.817372, 111.125525, 1510245073255)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (27, 11, 12.827372, 111.128525, 1510245078256)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (28, 11, 12.837372, 111.131525, 1510245083261)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (29, 11, 12.847372, 111.134525, 1510245088256)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (30, 11, 12.857372, 111.137525, 1510245093255)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (31, 12, 15.416059, 109.632033, 1510245321044)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (32, 12, 15.426059, 109.635033, 1510245326067)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (33, 12, 15.436059, 109.638033, 1510245331075)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (34, 12, 15.446059, 109.641033, 1510245336068)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (35, 12, 15.456059, 109.644033, 1510245341372)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (36, 12, 15.466059, 109.647033, 1510245346072)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (37, 13, 15.476059, 109.650033, 1510245533214)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (38, 13, 15.486059, 109.653033, 1510245538224)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (39, 13, 15.496059, 109.656033, 1510245543229)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (40, 13, 15.506059, 109.659033, 1510245548224)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (41, 14, 12.867372, 111.140525, 1510245573813)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (42, 15, 15.516059, 109.662033, 1510245574625)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (43, 15, 12.877372, 111.143525, 1510245578996)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (44, 15, 15.526059, 109.665033, 1510245579632)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (45, 15, 12.887372, 111.146525, 1510245583832)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (46, 15, 15.536059, 109.668033, 1510245584631)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (47, 15, 12.897372, 111.149525, 1510245588834)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (48, 15, 15.546059, 109.671033, 1510245589632)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (49, 16, 12.867372, 111.140525, 1510245651315)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (50, 17, 15.556059, 109.674033, 1510245653031)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (51, 16, 12.877372, 111.143525, 1510245656335)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (52, 17, 15.566059, 109.677033, 1510245658045)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (53, 16, 12.887372, 111.146525, 1510245661335)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (54, 17, 15.576059, 109.680033, 1510245663228)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (55, 16, 12.897372, 111.149525, 1510245666355)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (56, 17, 15.586059, 109.683033, 1510245668037)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (57, 16, 12.907372, 111.152525, 1510245671338)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (58, 17, 15.596059, 109.686033, 1510245673036)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (59, 16, 12.917372, 111.155525, 1510245676333)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (60, 17, 15.606059, 109.689033, 1510245678036)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (61, 16, 12.927372, 111.158525, 1510245681340)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (62, 17, 15.616059, 109.692033, 1510245683036)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (63, 17, 15.626059, 109.695033, 1510245688036)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (64, 17, 15.636059, 109.698033, 1510245693037)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (65, 17, 15.646059, 109.701033, 1510245698037)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (66, 17, 15.656059, 109.704033, 1510245703036)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (67, 18, 16.312346, 109.020334, 1510245828083)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (68, 19, 15.556059, 109.674033, 1510245829383)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (69, 18, 16.322346, 109.023334, 1510245833132)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (70, 19, 15.566059, 109.677033, 1510245834416)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (71, 18, 16.332346, 109.026334, 1510245838131)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (72, 19, 15.576059, 109.680033, 1510245839411)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (73, 18, 16.342346, 109.029334, 1510245843135)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (74, 19, 15.586059, 109.683033, 1510245844411)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (75, 19, 15.596059, 109.686033, 1510245849416)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (76, 20, 16.352346, 109.032334, 1510246575000)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (77, 20, 16.362346, 109.035334, 1510246580021)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (78, 20, 16.372346, 109.038334, 1510246585025)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (79, 21, 16.382346, 109.041334, 1510246832593)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (80, 21, 16.392346, 109.044334, 1510246837663)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (81, 21, 16.402346, 109.047334, 1510246842661)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (82, 21, 16.412346, 109.050334, 1510246847662)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (83, 22, 16.422346, 109.053334, 1510247008500)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (84, 22, 16.432346, 109.056334, 1510247013514)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (85, 22, 16.442346, 109.059334, 1510247018506)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (86, 22, 16.452346, 109.062334, 1510247023506)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (87, 22, 16.462346, 109.06533399999999, 1510247028505)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (88, 22, 16.472346, 109.068334, 1510247033510)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (89, 23, 16.482346, 109.071334, 1510247171401)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (90, 23, 16.492346, 109.074334, 1510247176425)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (91, 23, 16.502346, 109.077334, 1510247181416)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (92, 23, 16.512346, 109.080334, 1510247186411)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (93, 23, 16.522346, 109.083334, 1510247191412)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (94, 24, 16.532346, 109.086334, 1510247254129)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (95, 24, 16.542346, 109.089334, 1510247259147)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (96, 24, 16.552346, 109.092334, 1510247264147)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (97, 24, 16.562346, 109.095334, 1510247269147)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (98, 25, 16.572346, 109.098334, 1510247519225)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (99, 25, 16.582346, 109.101334, 1510247524239)
GO
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (100, 25, 16.592346, 109.104334, 1510247529243)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (101, 25, 16.602346, 109.107334, 1510247534244)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (102, 26, 16.612346, 109.110334, 1510247894013)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (103, 26, 16.622346, 109.113334, 1510247899036)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (104, 26, 16.632346, 109.116334, 1510247904037)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (105, 27, 15.606059, 109.689033, 1510248437337)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (106, 27, 15.616059, 109.692033, 1510248442369)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (107, 27, 15.626059, 109.695033, 1510248447369)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (108, 27, 15.636059, 109.698033, 1510248452364)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (109, 27, 15.646059, 109.701033, 1510248457364)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (110, 27, 15.656059, 109.704033, 1510248462367)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (111, 28, 16.642346, 109.119334, 1510248582820)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (112, 28, 16.652346, 109.122334, 1510248587851)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (113, 28, 16.662346, 109.125334, 1510248592849)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (114, 28, 16.672346, 109.128334, 1510248597850)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (115, 29, 15.666059, 109.707033, 1510248640580)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (116, 29, 15.676059, 109.710033, 1510248645708)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (117, 29, 15.686059, 109.713033, 1510248650715)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (118, 29, 15.696059, 109.716033, 1510248655711)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (119, 30, 16.642346, 109.119334, 1510248658973)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (120, 29, 15.706059, 109.719033, 1510248660708)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (121, 30, 16.652346, 109.122334, 1510248663989)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (122, 29, 15.716059, 109.722033, 1510248665713)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (123, 30, 16.662346, 109.125334, 1510248668995)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (124, 29, 15.726059, 109.725033, 1510248670709)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (125, 31, 15.736059, 109.728033, 1510470690980)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (126, 32, 15.746059, 109.731033, 1510470880873)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (127, 32, 15.756059, 109.734033, 1510470885896)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (128, 32, 15.766059, 109.737033, 1510470890888)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (129, 32, 15.776059, 109.740033, 1510470895896)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (130, 32, 15.786059, 109.743033, 1510470900894)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (131, 32, 15.796059, 109.746033, 1510470905889)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (132, 32, 15.806059, 109.749033, 1510470910891)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (133, 32, 15.816059, 109.752033, 1510470915893)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (134, 33, 16.672346, 109.128334, 1510471309012)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (135, 33, 16.682346, 109.131334, 1510471314043)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (136, 33, 16.692346, 109.134334, 1510471319046)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (137, 34, 15.826059, 109.755033, 1510471356643)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (138, 34, 15.836059, 109.758033, 1510471361692)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (139, 34, 15.846059, 109.761033, 1510471366695)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (140, 35, 15.856059, 109.764033, 1510471532885)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (141, 35, 15.866059, 109.767033, 1510471537918)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (142, 35, 15.876059, 109.770033, 1510471542918)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (143, 35, 15.886059, 109.773033, 1510471547915)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (144, 35, 15.896059, 109.776033, 1510471552919)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (145, 35, 15.906059, 109.779033, 1510471562820)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (146, 35, 15.916059, 109.782033, 1510471567819)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (147, 35, 15.926059, 109.785033, 1510471572813)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (148, 36, 15.936059, 109.788033, 1510471897853)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (149, 36, 15.946059, 109.791033, 1510471902882)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (150, 36, 15.956059, 109.794033, 1510471907878)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (151, 37, 18.171945, 107.736662, 1510481333529)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (152, 37, 18.181945, 107.739662, 1510481338557)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (153, 37, 18.191945, 107.742662, 1510481343547)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (154, 38, 16.702346, 109.137334, 1510481417987)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (155, 38, 16.712346, 109.140334, 1510481423028)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (156, 38, 16.722346, 109.143334, 1510481428016)
INSERT [dbo].[vitritauthuyen] ([ma], [mahanhtrinh], [vido], [kinhdo], [thoigian]) VALUES (157, 38, 16.732346, 109.146334, 1510481433015)
SET IDENTITY_INSERT [dbo].[vitritauthuyen] OFF
ALTER TABLE [dbo].[conbao]  WITH CHECK ADD  CONSTRAINT [FK_conbao_tinhtrang] FOREIGN KEY([matinhtrang])
REFERENCES [dbo].[tinhtrang] ([ma])
GO
ALTER TABLE [dbo].[conbao] CHECK CONSTRAINT [FK_conbao_tinhtrang]
GO
ALTER TABLE [dbo].[hanhtrinh]  WITH CHECK ADD  CONSTRAINT [FK_hanhtrinh_tauthuyen] FOREIGN KEY([matauthuyen])
REFERENCES [dbo].[tauthuyen] ([ma])
GO
ALTER TABLE [dbo].[hanhtrinh] CHECK CONSTRAINT [FK_hanhtrinh_tauthuyen]
GO
ALTER TABLE [dbo].[hanhtrinhbao]  WITH CHECK ADD  CONSTRAINT [FK_hanhtrinhbao_conbao] FOREIGN KEY([maconbao])
REFERENCES [dbo].[conbao] ([ma])
GO
ALTER TABLE [dbo].[hanhtrinhbao] CHECK CONSTRAINT [FK_hanhtrinhbao_conbao]
GO
ALTER TABLE [dbo].[hanhtrinhbao]  WITH CHECK ADD  CONSTRAINT [FK_hanhtrinhbao_vitribao] FOREIGN KEY([ma])
REFERENCES [dbo].[vitribao] ([ma])
GO
ALTER TABLE [dbo].[hanhtrinhbao] CHECK CONSTRAINT [FK_hanhtrinhbao_vitribao]
GO
ALTER TABLE [dbo].[tauthuyen]  WITH CHECK ADD  CONSTRAINT [FK_tauthuyen_loaitau] FOREIGN KEY([maloaitau])
REFERENCES [dbo].[loaitau] ([ma])
GO
ALTER TABLE [dbo].[tauthuyen] CHECK CONSTRAINT [FK_tauthuyen_loaitau]
GO
ALTER TABLE [dbo].[tauthuyen]  WITH CHECK ADD  CONSTRAINT [FK_tauthuyen_quocgia] FOREIGN KEY([maquocgia])
REFERENCES [dbo].[quocgia] ([ma])
GO
ALTER TABLE [dbo].[tauthuyen] CHECK CONSTRAINT [FK_tauthuyen_quocgia]
GO
ALTER TABLE [dbo].[vitritauthuyen]  WITH CHECK ADD  CONSTRAINT [FK_vitritauthuyen_hanhtrinh] FOREIGN KEY([mahanhtrinh])
REFERENCES [dbo].[hanhtrinh] ([ma])
GO
ALTER TABLE [dbo].[vitritauthuyen] CHECK CONSTRAINT [FK_vitritauthuyen_hanhtrinh]
GO
USE [master]
GO
ALTER DATABASE [boat] SET  READ_WRITE 
GO
