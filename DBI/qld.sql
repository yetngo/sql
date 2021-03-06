USE [master]
GO
/****** Object:  Database [quanlydiem]    Script Date: 10/21/2019 1:07:41 PM ******/
CREATE DATABASE [quanlydiem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanlydiem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.YETSQLSERVER\MSSQL\DATA\quanlydiem.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'quanlydiem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.YETSQLSERVER\MSSQL\DATA\quanlydiem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [quanlydiem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanlydiem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanlydiem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanlydiem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanlydiem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanlydiem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanlydiem] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanlydiem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [quanlydiem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanlydiem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanlydiem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanlydiem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanlydiem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanlydiem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanlydiem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanlydiem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanlydiem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [quanlydiem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanlydiem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanlydiem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanlydiem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanlydiem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanlydiem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanlydiem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanlydiem] SET RECOVERY FULL 
GO
ALTER DATABASE [quanlydiem] SET  MULTI_USER 
GO
ALTER DATABASE [quanlydiem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanlydiem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quanlydiem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quanlydiem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [quanlydiem] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'quanlydiem', N'ON'
GO
USE [quanlydiem]
GO
/****** Object:  Table [dbo].[Ketqua]    Script Date: 10/21/2019 1:07:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ketqua](
	[Masv] [varchar](10) NOT NULL,
	[Mamh] [varchar](10) NOT NULL,
	[lanthi] [int] NULL,
	[diem] [float] NULL,
 CONSTRAINT [PK_Ketqua] PRIMARY KEY CLUSTERED 
(
	[Masv] ASC,
	[Mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Monhoc]    Script Date: 10/21/2019 1:07:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Monhoc](
	[Mamh] [varchar](10) NOT NULL,
	[Tenmh] [nvarchar](10) NULL,
	[SoTC] [int] NULL,
 CONSTRAINT [PK_Monhoc] PRIMARY KEY CLUSTERED 
(
	[Mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 10/21/2019 1:07:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sinhvien](
	[Masv] [varchar](10) NULL,
	[Tensv] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[lop] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ketqua] ([Masv], [Mamh], [lanthi], [diem]) VALUES (N'1', N'cea', 1, 4)
INSERT [dbo].[Ketqua] ([Masv], [Mamh], [lanthi], [diem]) VALUES (N'2', N'csi', 2, 4)
INSERT [dbo].[Ketqua] ([Masv], [Mamh], [lanthi], [diem]) VALUES (N'3', N'ssg', 3, 0)
INSERT [dbo].[Ketqua] ([Masv], [Mamh], [lanthi], [diem]) VALUES (N'4', N'cea', 2, 3)
INSERT [dbo].[Monhoc] ([Mamh], [Tenmh], [SoTC]) VALUES (N'CEA', N'CEAS', 3)
INSERT [dbo].[Monhoc] ([Mamh], [Tenmh], [SoTC]) VALUES (N'CSI', N'CSIS', 3)
INSERT [dbo].[Monhoc] ([Mamh], [Tenmh], [SoTC]) VALUES (N'MAE', N'MAES', 3)
INSERT [dbo].[Monhoc] ([Mamh], [Tenmh], [SoTC]) VALUES (N'PRF', N'PRFS', 3)
INSERT [dbo].[Monhoc] ([Mamh], [Tenmh], [SoTC]) VALUES (N'SSG', N'SSGS', 3)
INSERT [dbo].[sinhvien] ([Masv], [Tensv], [ngaysinh], [lop]) VALUES (N'1', N'A', CAST(N'2000-01-01' AS Date), N'se1401')
INSERT [dbo].[sinhvien] ([Masv], [Tensv], [ngaysinh], [lop]) VALUES (N'2', N'B', CAST(N'2000-01-02' AS Date), N'se1402')
INSERT [dbo].[sinhvien] ([Masv], [Tensv], [ngaysinh], [lop]) VALUES (N'3', N'C', CAST(N'2000-02-01' AS Date), N'se1401')
INSERT [dbo].[sinhvien] ([Masv], [Tensv], [ngaysinh], [lop]) VALUES (N'4', N'D', CAST(N'2000-03-29' AS Date), N'se1403')
INSERT [dbo].[sinhvien] ([Masv], [Tensv], [ngaysinh], [lop]) VALUES (N'5', N'C', CAST(N'2000-03-10' AS Date), N'se1402')
USE [master]
GO
ALTER DATABASE [quanlydiem] SET  READ_WRITE 
GO
