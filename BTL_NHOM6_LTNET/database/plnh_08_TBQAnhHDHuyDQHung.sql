USE [master]
GO
/****** Object:  Database [qlnh_08_TBQAnhHDHuyDQHung]    Script Date: 5/28/2022 8:15:29 AM ******/
CREATE DATABASE [qlnh_08_TBQAnhHDHuyDQHung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlnh_08_TBQAnhHDHuyDQHung', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlnh_08_TBQAnhHDHuyDQHung.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlnh_08_TBQAnhHDHuyDQHung_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlnh_08_TBQAnhHDHuyDQHung_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlnh_08_TBQAnhHDHuyDQHung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET  MULTI_USER 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [qlnh_08_TBQAnhHDHuyDQHung]
GO
/****** Object:  Table [dbo].[dangnhap]    Script Date: 5/28/2022 8:15:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dangnhap](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](20) NULL,
	[fullname] [nvarchar](30) NULL,
	[email] [varchar](70) NULL,
	[mod] [varchar](5) NULL,
	[state] [varchar](7) NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 5/28/2022 8:15:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manv] [varchar](50) NOT NULL,
	[hoten] [nvarchar](30) NOT NULL,
	[ngaysinh] [datetime] NULL,
	[gioitinh] [nvarchar](3) NOT NULL,
	[quequan] [nvarchar](20) NULL,
	[nambatdaulv] [int] NULL,
	[luong] [float] NULL,
	[mapb] [varchar](10) NOT NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phongban]    Script Date: 5/28/2022 8:15:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phongban](
	[mapb] [varchar](10) NOT NULL,
	[tenpb] [nvarchar](50) NOT NULL,
	[emailpb] [varchar](70) NULL,
	[dienthoai] [varchar](10) NOT NULL,
 CONSTRAINT [PK_phongban] PRIMARY KEY CLUSTERED 
(
	[mapb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'admin', N'1', N'Admin Quản Lý', N'admin@gmail.com', N'Admin', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'cdt', N'1', N'Chu Đăng Tuấn', N'cdt@gmail.com', N'User', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'dqh', N'1', N'Đinh Quang Hưng', N'dqh.n08@gmail.com', N'Admin', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'hdh', N'1', N'Hà Đăng Huy', N'hdh.n08@gmail', N'Admin', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'lks', N'1', N'Lê Kim Sơn', N'lks@gmail.com', N'User', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'ntm', N'1', N'Nguyễn Thế Mạnh', N'ntm@gmail.com', N'User', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'ntn', N'1', N'Nguyễn Thành Nam', N'ntn@gmail.com', N'User', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'tat', N'1', N'Trương Anh Tuấn', N'tat@gmail.com', N'User', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'tbqa', N'1', N'Tống Bá Quang Anh', N'tbqa.n08@gmail.com', N'Admin', N'Online')
INSERT [dbo].[dangnhap] ([username], [password], [fullname], [email], [mod], [state]) VALUES (N'tlkl', N'1', N'Trương Lưu Khánh Linh', N'tlkl@gmail.com', N'User', N'Online')
GO
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV01', N'Tống Bá Quang Anh', CAST(N'2001-10-20T00:00:00.000' AS DateTime), N'Nam', N'Thanh Hóa', 2020, 1, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV02', N'Hà Ðang Huy', CAST(N'2001-06-28T00:00:00.000' AS DateTime), N'Nam', N'Thái Bình', 2020, 2, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV03', N'Ðinh Quang Hung', CAST(N'2001-08-03T00:00:00.000' AS DateTime), N'Nam', N'Vinh Phúc', 2020, 3, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV04', N'Lê Văn Chiến', CAST(N'2001-06-22T00:00:00.000' AS DateTime), N'Nam', N'Nam Định', 2021, 4, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV05', N'Chu Đăng Tuấn', CAST(N'2001-06-21T00:00:00.000' AS DateTime), N'Nữ', N'Vĩnh Phúc', 2020, 5, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV06', N'Trương Lưu Khánh Linh', CAST(N'2001-06-16T00:00:00.000' AS DateTime), N'Nam', N'Bắc Giang', 2020, 6, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV07', N'Đan Thị Lụa', CAST(N'2001-09-09T00:00:00.000' AS DateTime), N'Nữ', N'Nam Định', 2020, 7, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV08', N'Trương Anh Tuấn', CAST(N'2001-06-06T00:00:00.000' AS DateTime), N'Nam', N'Bắc Ninh', 2020, 8, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV09', N'Lê Văn Trường', CAST(N'2001-05-05T00:00:00.000' AS DateTime), N'Nam', N'Bắc Giang', 2020, 9, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV10', N'Hứa Văn Đạt', CAST(N'2001-04-04T00:00:00.000' AS DateTime), N'Nam', N'Đà Nẵng', 2020, 10, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV11', N'Đặng Hữu Duy', CAST(N'2001-10-20T00:00:00.000' AS DateTime), N'Nam', N'Thanh Hóa', 2020, 11, N'PB01')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV12', N'Trương Văn Trung', CAST(N'1969-11-20T00:00:00.000' AS DateTime), N'Nam', N'Bạc Liêu', 2006, 12, N'PB04')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV13', N'Trương Văn Hiếu', CAST(N'1969-11-20T00:00:00.000' AS DateTime), N'Nam', N'Sóc Trăng', 2006, 13, N'PB04')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV14', N'Vũ Duy Khánh', CAST(N'1980-07-03T00:00:00.000' AS DateTime), N'Nam', N'Hải Dương', 2008, 14, N'PB02')
INSERT [dbo].[nhanvien] ([manv], [hoten], [ngaysinh], [gioitinh], [quequan], [nambatdaulv], [luong], [mapb]) VALUES (N'NV15', N'Vũ Duy Anh', CAST(N'1980-07-03T00:00:00.000' AS DateTime), N'Nam', N'Hải Dương', 2008, 14, N'PB02')
GO
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB01', N'Phòng Chủ Tịch', N'pbletan.p01@gmail.com', N'0334350101')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB02', N'Phòng Quản Lý', N'pbquanly.p02@gmail.com', N'0334350102')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB03', N'Phòng Bảo Vệ', N'pbbaove.p03@gmail.com', N'0334350103')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB04', N'Phòng Lễ Tân', N'pbchutich.p04@gmail.com', N'0334350104')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB05', N'Phòng Họp', N'pbhop.p05@gmail.com', N'0334350105')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB06', N'Phòng Ăn', N'pan.p06@gmail.com', N'0334350106')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB07', N'Phòng Vệ Sinh', N'pvsinh.p07@gmail.com', N'0334350107')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB08', N'Phòng Lương', N'pluong.p08@gmail.com', N'0334350108')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB09', N'Phòng Nhân Sự', N'pnsu.p09@gmail.com', N'0334350109')
INSERT [dbo].[phongban] ([mapb], [tenpb], [emailpb], [dienthoai]) VALUES (N'PB10', N'Phòng Giải Trí', N'pgtri.p10@gmail.com', N'0334350110')
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_nhanvien_phongban] FOREIGN KEY([mapb])
REFERENCES [dbo].[phongban] ([mapb])
GO
ALTER TABLE [dbo].[nhanvien] CHECK CONSTRAINT [FK_nhanvien_phongban]
GO
USE [master]
GO
ALTER DATABASE [qlnh_08_TBQAnhHDHuyDQHung] SET  READ_WRITE 
GO
