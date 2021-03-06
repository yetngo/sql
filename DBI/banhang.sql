USE [master]
GO
/****** Object:  Database [QLbanHang]    Script Date: 29/10/2019 9:35:44 SA ******/
CREATE DATABASE [QLbanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLbanHang', FILENAME = N'QLbanHang.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLbanHang_log', FILENAME = N'QLbanHang_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLbanHang] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLbanHang].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [QLbanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLbanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLbanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLbanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLbanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLbanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLbanHang] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLbanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLbanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLbanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLbanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLbanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLbanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLbanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLbanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLbanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLbanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLbanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLbanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLbanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLbanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLbanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLbanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLbanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QLbanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLbanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLbanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLbanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLbanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLbanHang]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 29/10/2019 9:35:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [int] NULL,
	[MaSP] [nvarchar](6) NULL,
	[SoLuong] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 29/10/2019 9:35:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NULL,
	[MaKH] [nvarchar](6) NULL,
	[MaNV] [nvarchar](6) NULL,
	[NgayLapHD] [datetime] NULL,
	[NgayNhanHang] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 29/10/2019 9:35:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](6) NOT NULL,
	[HoTenKH] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 29/10/2019 9:35:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[MaNV] [nvarchar](6) NOT NULL,
	[HoNV] [nvarchar](40) NOT NULL,
	[TenNV] [nvarchar](15) NOT NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 29/10/2019 9:35:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](6) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](10) NULL,
	[DonGia] [float] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (1, N'B01', 48)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (1, N'R01', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (2, N'B01', 25)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (2, N'B02', 90)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (2, N'B03', 25)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (2, N'R02', 20)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (3, N'B01', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (4, N'B01', 15)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (4, N'R01', 20)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (4, N'R02', 15)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (5, N'B01', 10)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (6, N'R02', 15)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (7, N'B01', 3)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (8, N'B01', 6)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (8, N'B02', 5)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (8, N'B03', 9)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong]) VALUES (8, N'R01', 12)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (1, N'S001', N'1', CAST(0x00008DF100000000 AS DateTime), CAST(0x00008DFD00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (2, N'L010', N'2', CAST(0x00008DF200000000 AS DateTime), CAST(0x00008DFF00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (3, N'S002', N'1', CAST(0x00008DF700000000 AS DateTime), CAST(0x00008DFF00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (4, N'B145', N'5', CAST(0x00008DF800000000 AS DateTime), CAST(0x00008DFD00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (5, N'D100', N'3', CAST(0x00008DF900000000 AS DateTime), CAST(0x00008E0700000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (6, N'S001', N'2', CAST(0x00008DFA00000000 AS DateTime), CAST(0x00008E0800000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (7, N'B145', N'1', CAST(0x0000955F00000000 AS DateTime), CAST(0x0000955F00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (8, N'B145', N'1', CAST(0x0000952100000000 AS DateTime), CAST(0x000095BB00000000 AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [Diachi], [DienThoai]) VALUES (N'b145', N'Cửa Hàng số 2 Q4', N'20 Trần Phú Q2', N'86547893')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [Diachi], [DienThoai]) VALUES (N'd100', N'Công Ty Cổ Phần Đầu tư', N'22 Ngô Quyền Q5', N'86123564')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [Diachi], [DienThoai]) VALUES (N'l010', N'Cửa Hàng Bách Hóa Q1', N'155 Trần Hưng Đạo', N'85456123')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [Diachi], [DienThoai]) VALUES (N's001', N'Công Ty XNK Hoa Hồng', N'123 Trần Phú', N'8356423')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [Diachi], [DienThoai]) VALUES (N's002', N'Công Ty VHP Tân Bình', N'10 Lý thường Kiệt', N'8554545')
INSERT [dbo].[KhachHang] ([MaKH], [HoTenKH], [Diachi], [DienThoai]) VALUES (N's003', N'Công Ty Nhựa Bình tây', N'23 Trần não Q2', N'8546123')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'1', N'Lê văn', N'Tám', N'Nam', CAST(0x00005DD900000000 AS DateTime), N'45 Trần Phú', N'8645235')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'2', N'Trần thị', N'Lan', N'Nữ', CAST(0x0000650300000000 AS DateTime), N'15 Nguyễn Trãi Q5', NULL)
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'3', N'Tạ thành', N'Tâm', N'Nam', CAST(0x00005E1400000000 AS DateTime), N'20 Võ thị Sáu', N'85656666')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'4', N'Ngô Thanh', N'Sơn', N'Nam', CAST(0x000048B700000000 AS DateTime), N'122 Trần Phú', NULL)
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'5', N'Lê thị', N'Thủy', N'Nữ', CAST(0x000064F900000000 AS DateTime), N'25 Ngô Quyền', N'97654123')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia]) VALUES (N'b01', N'Bia 33', N'Lon', 4000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia]) VALUES (N'b02', N'Bia Tiger', N'Lon', 5000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia]) VALUES (N'B03', N'Bia Heneken', N'Lon', 6000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia]) VALUES (N'r01', N'Rượu Bình tây', N'Chai', 20000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia]) VALUES (N'R02', N'Rượu Napoleon', N'Chai', 15000)
USE [master]
GO
ALTER DATABASE [QLbanHang] SET  READ_WRITE 
GO
