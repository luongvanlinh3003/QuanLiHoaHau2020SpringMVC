USE [quanlicuocthihoahau]
GO
/****** Object:  Table [dbo].[BanGiamKhao]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanGiamKhao](
	[MaBanGiamKhao] [nvarchar](50) NOT NULL,
	[TenBanGiamKhao] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[NgaySinh] [date] NULL,
	[NgheNghiep] [nvarchar](50) NULL,
 CONSTRAINT [PK_BanGiamKhao] PRIMARY KEY CLUSTERED 
(
	[MaBanGiamKhao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietVongBanKet]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVongBanKet](
	[MaThiSinh] [nvarchar](50) NOT NULL,
	[DiemTrangPhucAoDai] [float] NULL,
	[DiemTrangPhucAoTam] [float] NULL,
	[DiemTrangPhucDaHoi] [float] NULL,
	[TenThiSinh] [nvarchar](50) NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [PK_ChiTietVongBanKet] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietVongChungKet]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVongChungKet](
	[MaThiSinh] [nvarchar](50) NOT NULL,
	[DiemUngXu] [float] NULL,
	[DiemNgoaiNgu] [float] NULL,
	[DiemHoatDongXaHoi] [float] NULL,
	[TenThiSinh] [nvarchar](50) NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [PK_ChiTietVongChungKet] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietVongSoKhao]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVongSoKhao](
	[MaThiSinh] [nvarchar](50) NOT NULL,
	[DiemHinhThe] [float] NULL,
	[DiemTraLoiPhongVan] [float] NULL,
	[DiemCatwalkTheoNhac] [float] NULL,
	[TenThiSinh] [nvarchar](50) NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [PK_ChiTietVongSoKhao_1] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](50) NOT NULL,
	[TenChucVu] [nvarchar](250) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaiThuong]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaiThuong](
	[MaGiaiThuong] [nvarchar](50) NOT NULL,
	[TenGiaiThuong] [nvarchar](50) NULL,
	[TriGiaGiaiThuong] [nvarchar](250) NULL,
	[MoTaGiaiThuong] [nvarchar](250) NULL,
	[MaThiSinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaiThuong] PRIMARY KEY CLUSTERED 
(
	[MaGiaiThuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDungThiBanKet]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDungThiBanKet](
	[MaThiSinh] [nvarchar](50) NOT NULL,
	[HinhAnhPhanThiAoDaiTs] [nvarchar](250) NULL,
	[MoTaPhanThiAoDaiTs] [nvarchar](250) NULL,
	[HinhAnhPhanThiAoTamTs] [nvarchar](250) NULL,
	[MoTaPhanThiAoTamTs] [nvarchar](250) NULL,
	[HinhAnhPhanThiDaHoiTs] [nvarchar](250) NULL,
	[MoTaPhanThiDaHoiTs] [nvarchar](250) NULL,
 CONSTRAINT [PK_NoiDungThiBanKet_1] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDungThiChungKet]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDungThiChungKet](
	[MaThiSinh] [nvarchar](50) NOT NULL,
	[HinhAnhPhanThiUngXuTs] [nvarchar](250) NULL,
	[MoTaPhanThiUngXuTs] [nvarchar](250) NULL,
	[HinhAnhPhanThiPhongVanTs] [nvarchar](250) NULL,
	[MoTaPhanThiPhongVanTs] [nvarchar](250) NULL,
	[HinhAnhHoatDongXaHoiTs] [nvarchar](250) NULL,
	[MoTaHoatDongXaHoiTs] [nvarchar](250) NULL,
	[HinhAnhPhanThiNgoaiNguTs] [nvarchar](250) NULL,
	[MoTaPhanThiNgoaiNguTs] [nvarchar](250) NULL,
 CONSTRAINT [PK_NoiDungThiChungKet] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThiSinhDuThi]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiSinhDuThi](
	[MaThiSinh] [nvarchar](50) NOT NULL,
	[TenThiSinh] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[AnhChanDung] [varchar](250) NULL,
	[TrinhDo] [nvarchar](50) NULL,
	[SoDoVong1] [int] NULL,
	[SoDoVong2] [int] NULL,
	[SoDoVong3] [int] NULL,
	[ChieuCao] [float] NULL,
	[CanNang] [int] NULL,
 CONSTRAINT [PK_ThiSinhDuThi] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[user_id] [int] NOT NULL,
	[user_name] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[enabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS_ROLES]    Script Date: 12/27/2020 6:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS_ROLES](
	[user_role_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[authority] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BanGiamKhao] ([MaBanGiamKhao], [TenBanGiamKhao], [DiaChi], [NgaySinh], [NgheNghiep]) VALUES (N'GK1', N'Đỗ Dũng', N'Hà Nội', CAST(N'1989-03-28' AS Date), N'Diễn Viên')
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH002', 9, 9, 9, N'Lương Thùy Linh', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH003', 5, 8, 10, N'Nguyễn Thị Kiều Loan', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH004', 10, 8, 8.75, N'Đỗ Thị Hà', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH005', 5, 5, 9, N'Lê Khánh Vân', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH006', 10, 7, 8.75, N'Lê Thị Hạnh Dung', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH007', 5, 7, 10, N'Lê Thúy Ngân', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH008', 10, 7, 9, N'Phạm Diệu Linh', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH009', 5, 8, 10, N'Phạm Thị Hương', NULL)
GO
INSERT [dbo].[ChiTietVongBanKet] ([MaThiSinh], [DiemTrangPhucAoDai], [DiemTrangPhucAoTam], [DiemTrangPhucDaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH010', 10, 10, 10, N'Nguyễn Thị Dung', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH002', 10, 4, 7.75, N'Lương Thùy Linh', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH003', 7, 4, 10, N'Nguyễn Thị Kiều Loan', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH004', 7, 4, 7.75, N'Đỗ Thị Hà', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH005', 7, 10, 9, N'Lê Khánh Vân', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH006', 9, 9, 9, N'Lê Thị Hạnh Dung', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH007', 7, 10, 8, N'Lê Thúy Ngân', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH008', 10, 8, 5, N'Phạm Diệu Linh', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH009', 10, 9, 8, N'Phạm Thị Hương', NULL)
GO
INSERT [dbo].[ChiTietVongChungKet] ([MaThiSinh], [DiemUngXu], [DiemNgoaiNgu], [DiemHoatDongXaHoi], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH010', 10, 9, 10, N'Nguyễn Thị Dung', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH002', 10, 10, 8.5, N'Lương Thùy Linh', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH003', 10, 7.5, 8.5, N'Nguyễn Thị Kiều Loan', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH004', 7.5, 7.5, 9, N'Đỗ Thị Hà', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH005', 7.5, 7.5, 9, N'Lê Khánh Vân', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH006', 7.5, 8.5, 8.5, N'Lê Thị Hạnh Dung', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH007', 7.5, 7.5, 9.5, N'Lê Thúy Ngân', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH008', 7.5, 7.5, 9, N'Phạm Diệu Linh', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH009', 7.5, 7.5, 8.5, N'Phạm Thị Hương', NULL)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH01', 10, 7.5, 8.5, N'Nguyễn Ngọc Khuê', 8)
GO
INSERT [dbo].[ChiTietVongSoKhao] ([MaThiSinh], [DiemHinhThe], [DiemTraLoiPhongVan], [DiemCatwalkTheoNhac], [TenThiSinh], [DiemTrungBinh]) VALUES (N'HH010', 7.5, 10, 8.5, N'Nguyễn Thị Dung', NULL)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH002', N'Lương Thùy Linh', CAST(N'1999-02-28' AS Date), N'Đà Nẵng', N'luongthuylinh@gmail.com', N'0703446756', N'luongthuylinh.jpg', N'Đại học Kinh Tế Quốc Dân Hà Nội', 86, 58, 89, 1.75, 56)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH003', N'Nguyễn Thị Kiều Loan', CAST(N'2000-03-25' AS Date), N'Quảng Nam', N'kieuloan@gmail.com', N'0703446756', N'nguyenthikieuloan.jpg', N'Đại học Kinh Tế Đà Nẵng', 80, 50, 80, 1.71, 50)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH004', N'Đỗ Thị Hà', CAST(N'1998-01-23' AS Date), N'Hà Nội', N'dothiha@gmail.com', N'0703446756', N'dothiha.jpg', N'Đại học Luật Hà Nội', 85, 60, 80, 1.78, 55)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH005', N'Lê Khánh Vân', CAST(N'1997-03-03' AS Date), N'Quảng Ninh', N'lekhanhvan@gmail.com', N'0703446756', N'lekhanhvan.jpg', N'Đại học Cần Thơ', 90, 50, 80, 1.77, 59)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH006', N'Lê Thị Hạnh Dung', CAST(N'1999-06-15' AS Date), N'Quảng Bình', N'lethihanhdung@gmail.com', N'0703446756', N'lethihanhdung.jpg', N'Đại học Kinh tế HCM', 88, 58, 72, 1.68, 50)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH007', N'Lê Thúy Ngân', CAST(N'1994-03-12' AS Date), N'Bình Dương', N'lethithuyngan@gmail.com', N'0703446756', N'lethuyngan.jpg', N'Đại học Bách khoa Hà Nội', 88, 56, 82, 1.72, 54)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH008', N'Phạm Diệu Linh', CAST(N'1996-08-15' AS Date), N'Hồ Chí Minh', N'phamdieulinh@gmail.com', N'0703446756', N'phamdieulinh.jpg', N'Đai học Ngoại Ngữ Đà Nẵng', 83, 60, 90, 1.78, 60)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH009', N'Phạm Thị Hương', CAST(N'1995-06-11' AS Date), N'Đà Nẵng', N'phamthihuong@gmail.com', N'0703446756', N'phamthihuong.jpg', N'Đai học Sư Phạm Đà Nẵng', 89, 60, 89, 1.7, 52)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH01', N'Nguyễn Ngọc Khuê', CAST(N'2000-01-25' AS Date), N'Hà Nội', N'luongvanlinh3003@gmail.com', N'0703446756', N'hoahau4.jpg', N'Đại học Sư Phạm Đà Nẵng', 60, 80, 60, 1.75, 60)
GO
INSERT [dbo].[ThiSinhDuThi] ([MaThiSinh], [TenThiSinh], [NgaySinh], [DiaChi], [Email], [SoDienThoai], [AnhChanDung], [TrinhDo], [SoDoVong1], [SoDoVong2], [SoDoVong3], [ChieuCao], [CanNang]) VALUES (N'HH010', N'Nguyễn Thị Dung', CAST(N'1998-06-25' AS Date), N'Đà Nẵng', N'nguyenthidung@gmail.com', N'0703446756', N'domylinh.jpg', N'Đại học Sư phạm Đà Nẵng', 90, 90, 90, 1.78, 50)
GO
INSERT [dbo].[USERS] ([user_id], [user_name], [password], [enabled]) VALUES (1, N'vanlinh', N'linh123', 1)
GO
INSERT [dbo].[USERS] ([user_id], [user_name], [password], [enabled]) VALUES (2, N'vanlinh98', N'linh123', 1)
GO
INSERT [dbo].[USERS] ([user_id], [user_name], [password], [enabled]) VALUES (3, N'vanlinh123', N'linh123', 1)
GO
INSERT [dbo].[USERS_ROLES] ([user_role_id], [user_id], [authority]) VALUES (1, 1, N'ROLE_ADMIN')
GO
INSERT [dbo].[USERS_ROLES] ([user_role_id], [user_id], [authority]) VALUES (2, 2, N'ROLE_ADMIN')
GO
INSERT [dbo].[USERS_ROLES] ([user_role_id], [user_id], [authority]) VALUES (3, 3, N'ROLE_ADMIN')
GO
ALTER TABLE [dbo].[ChiTietVongBanKet]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ChiTietVongSoKhao] ([MaThiSinh])
GO
ALTER TABLE [dbo].[ChiTietVongBanKet]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ThiSinhDuThi] ([MaThiSinh])
GO
ALTER TABLE [dbo].[ChiTietVongChungKet]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ChiTietVongBanKet] ([MaThiSinh])
GO
ALTER TABLE [dbo].[ChiTietVongChungKet]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ThiSinhDuThi] ([MaThiSinh])
GO
ALTER TABLE [dbo].[ChiTietVongSoKhao]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ThiSinhDuThi] ([MaThiSinh])
GO
ALTER TABLE [dbo].[GiaiThuong]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ThiSinhDuThi] ([MaThiSinh])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NoiDungThiBanKet]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ThiSinhDuThi] ([MaThiSinh])
GO
ALTER TABLE [dbo].[NoiDungThiChungKet]  WITH CHECK ADD FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[ThiSinhDuThi] ([MaThiSinh])
GO
ALTER TABLE [dbo].[USERS_ROLES]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[USERS] ([user_id])
GO
