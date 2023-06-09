USE [QuanLyBanSach]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 3/27/2023 11:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [nchar](10) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 3/27/2023 11:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaChuDe] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 3/27/2023 11:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [int] NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/27/2023 11:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [nchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXB]    Script Date: 3/27/2023 11:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXB](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 3/27/2023 11:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](100) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaNXB] [int] NULL,
	[MaChuDe] [int] NULL,
	[MaTacGia] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 3/27/2023 11:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (1, N'Tiểu Thuyết')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (2, N'Trinh Thám')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (3, N'Truyện Ngắn')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (4, N'Giả Tưởng-Huyền Bí-Kinh Dị')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (5, N'Tiểu Sử-Hồi Kí')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (6, N'Cơ Khí')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (7, N'Khoa Hoc-Vũ Trụ')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (8, N'CNTT')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaXB] ON 

INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (1, N'Kim Đồng')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (2, N'Lao Động')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (3, N'NXB Trẻ')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (4, N'Giáo Dục')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (5, N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (6, N'Hồng Đức')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (7, N'Tổng Hợp TPHCM')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (8, N'Phụ Nữ')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (9, N'Thanh Niên')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (10, N'Văn Học')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (11, N'Dân Trí')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (12, N'NXB Hội Nhà Văn')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (13, N'Skybooks')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (14, N'Công Ty Cổ Phần Time Books')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (15, N'CAD World')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (16, N'NXB Xây Dựng')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (17, N'NXB Thông Tin và Truyền Thông')
INSERT [dbo].[NhaXB] ([MaNXB], [TenNXB]) VALUES (18, N'Huy Hoang Bookstore')
SET IDENTITY_INSERT [dbo].[NhaXB] OFF
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (1, N'Tiểu Thuyết Chim Ưng Tao Ngộ', CAST(109000 AS Decimal(18, 0)), N'Một câu chuyện cảm động về loài vật. Xuyên suốt câu chuyện, bạn đọc sẽ tìm thấy vô số những tình huống như trong cuộc sống thực, rất đời thường của con người. Cũng là khát khao tự do, cũng là cám dỗ hay những tính toán đấu tranh để sinh tồn…Mỗi chương của cuốn sách là một câu chuyện ghi lại cuộc hành trình của kim điêu – đại bàng Basacha.', N'0001.jpg', CAST(N'2023-03-12T00:00:00.000' AS DateTime), 100, 1, 1, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (2, N'Tiểu Thuyết Đàn Bà', CAST(42000 AS Decimal(18, 0)), N'Tiểu Thuyết Đàn Bà cung cấp thêm một góc nhìn về chiến tranh Việt Nam, nhưng đọc không nặng và chán mà lôi cuốn đến dòng cuối cùng. Có nhiều "xen" gây cười nhưng cũng đầy xúc động; tiết tấu dồn dập nhưng vẫn để lại những khoảng lặng thẳm sâu...
', N'0002.jpg', CAST(N'2023-03-12T00:00:00.000' AS DateTime), 100, 8, 1, 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (3, N'Bình Yên Nước Mỹ', CAST(188100 AS Decimal(18, 0)), N'kể về Seymour “Swede” Levov – Người Thụy Điển, một công dân người Mỹ gốc Do Thái. Từ thời trung học, Swede đã là một huyền thoại, không chỉ trong giới túc cầu trung học mà còn trong lòng của cả một cộng đồng người biệt lập, cô độc và chịu nhiều chỉ trích. Swede là biểu tượng cho sự xuất chúng, thiện lương, gần như hoàn hảo.', N'0003.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 2, 1, 3)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (4, N'Thuốc Mê', CAST(89100 AS Decimal(18, 0)), N'Hình như người con gái ấy sinh ra đời chỉ để làm một bãi chiến trường luôn luôn có tiếng gươm đao xô xát. Đành vậy, ta là kẻ đã yêu nàng như yêu lửa trong đêm tối. Lửa ấy không thể tắt được, và không ai được lấy đi để cho tăm tối đời ta.
', N'0004.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 10, 1, 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (5, N'Nỗi Ân Hận Dài', CAST(107100 AS Decimal(18, 0)), N'Cỏ yếu lắm, không có tiếng kêu hay là có mà không thể nghe thấy. Và mùi thơm mong manh cũng bị lẫn chìm vào mùi đất ẩm, như hơi nước lên không. Ngọn cỏ này chết đi, đã có ngọn cỏ khác chồi lên thay, che lấp hẳn cái xác đứt, nát và mục dần ra đất… Thế cũng là một kiếp người.
', N'0005.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 10, 1, 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (6, N'Người Ai Cập - Quyền Lực Và Tình Yêu - Tập 1', CAST(187200 AS Decimal(18, 0)), N'Kiệt tác“Người Ai Cập - Quyền lực và Tình yêu” được xuất bản lần đầu tiên vào năm 1945 và chỉ sau một năm, cuốn tiểu thuyết này đã được tái bản bốn lần với tổng số bán ra hơn 70.000 bản. Cho đến nay, tác phẩm đã được dịch sang 40 thứ tiếng và được phát hành rộng rãi ở nhiều quốc gia trên thế giới. Sự thành công của tác phẩm kinh điểnnày đã giúp tác giả Mika Toimi Waltari trở thành một trong những nhà văn Phần Lan nổi tiếng nhất thế kỷ 20.
', N'0006.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 11, 1, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (7, N'Người Ai Cập - Quyền Lực Và Tình Yêu - Tập 2', CAST(205200 AS Decimal(18, 0)), N'Trong Tập 1, Sinuhe đau đớn vì bị lừa dối tình yêu, mất đi của cải và gia đình khiến anh phiêu bạt ở nhiều vùng đất xa lạ. Nối tiếp câu chuyện này ở phần hai, cuộc đời của danh y tài hoa này còn khốn khổ hơn khi một lần nữa chứng kiến sự ra đi của tất cả người thân yêu bên cạnh và bị chính người bạn của mình, Pharaon đang tại vị, lưu đày nơi xứ người.

', N'0007.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 11, 1, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (8, N'Sống Cùng Nước', CAST(76500 AS Decimal(18, 0)), N'Mọi sự sống trên trái đất này liên quan và phụ thuộc vào nước. Nước tham gia thành phần cấu trúc sinh quyển, nước điều hoà khí hậu, nước tưới tiêu ruộng vườn, các cảnh quan thiên nhiên tươi đẹp ít nhiều đều có sự hiện diện của nước… Tất cả những điều này tìm thấy dễ dàng ở miền Tây Nam Bộ, nơi mảnh đất và hồn người được tưới tắm trong dòng nước ngọt Cửu Long. 

Sống cùng nước tạo nên nét văn hóa độc đáo vô song. Sinh ra đã thấy dòng sông bên nhà, lớn lên một chút bơi xuồng trên kinh rạch, trường thành đi xa ai cũng nhớ mùa nước nổi, nước ròng. Nước hòa vào lời ăn tiếng nói, nhập vào nếp nghĩ nếp làm. Nước tặng cho con người đời sống no đủ với bao sản vật. Khi mất đi, con người và sông nước cũng không thể tách rời… Với từng trang viết Sống cùng nước, nhà văn Trương Chí Hùng dẫn dắt bạn đọc bước vào hành trình khám phá đầy xúc cảm cùng nhiều phát hiện thú vị về văn hóa và con người đang gắn bó mật thiết với dòng Cửu Long.

 

“Một buổi sáng thức dậy, tôi thấy nước trên đồng phẳng lặng như mặt hồ, vài sợi bấc hiu hiu se lạnh. Đám sậy bắt đầu trổ bông nhu nhú. Vài con cò xanh nhởn nhơ kiếm mồi trên mấy dề trấp. Má tôi lẩm nhẩm ca rằng:

Con cò xanh nhảy quanh hòn đá

Chờ nước cạn ăn cá ăn tôm…”

 …”', N'0008.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (9, N'Hương Rừng Cà Mau', CAST(175500 AS Decimal(18, 0)), N'Thông qua câu chuyện về những con người ở một bản làng hẻo lánh, bên những cánh rừng xà nu bạt ngàn, xanh bất tận, tác giả đặt vấn đề có ý nghĩa lớn lao đối với dân tộc và thời đại: Để cho sự sống của nhân dân và đất nước mãi mãi trường tồn, không có cách nào khác hơn là phải cùng nhau đứng lên, cầm vũ khí chống lại kẻ ...', N'0009.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 1, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (10, N'Sơn Nam - Vạch Một Chân Trời - Chim Quyên Xuống Đất', CAST(102000 AS Decimal(18, 0)), N'NXB Trẻ tái bản Vạch Một Chân Trời – Chim Quyên Xuống Đất của tác giả Sơn Nam với mong muốn thông qua tác phẩm giúp bạn đọc hiểu thêm về đời sống của những người đi trước, của thế hệ trước đã tạo dựng nên một chân trời mới cho sự quần cư của người mở đất. Và từ đó thế hệ nối tiếp thế hệ, gìn giữ và phát huy những cái vốn đã trở thành tài sản, truyền thống của lưu dân, của dân tộc ở miền đất phía Nam Tổ quốc.', N'0010.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 1, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (11, N'Sherlock Holmes Toàn Tập (Hộp 3 Cuốn) - Tái Bản 2018', CAST(288000 AS Decimal(18, 0)), N'Có lẽ kể từ khi văn học viết trở thành một phần không thể thiếu trong đời sống tinh thần của con người, đã có rất nhiều nhân vật bước ra từ trang sách của các nhà văn đi vào đời sống, thậm chí trở thành những biểu tượng bất hủ trong tâm thức nhân loại. Sherlock Holmes của Athur Conan Doyle cũng giống như Don Quixote của Cervantes, Jean Valjean của Victor Hugo, AQ của Lỗ Tấn hay Túy Kiều của Nguyễn Du… đã thoát thai từ một nhân vật hư cấu và trở thành một biểu tượng của đời sống. Tuy nhiên, trong trường hợp Sherlock Holmes, ngoài những siêu kỉ lục về một trong những tác phẩm văn học bán chạy nhất thế giới, một trong những nhân vật văn học được nhiều người biết đến nhất, một nhân vật văn học được tôn vinh dưới rất nhiều hình thức (Viện bảo tàng mang tên Sherlock Holmes, Hội những người hâm mộ Sherlock Holmes, thậm chí là đạo Sherlockian do những người hâm mộ cuồng nhiệt nhân vật này lập nên)..., thì điều đặc biệt hơn cả là phương pháp suy diễn logic của Sherlock Holmes đã được các cơ quan bảo vệ pháp luật sừng sỏ của Anh quốc như MI6 và Scotland Yard đưa vào giáo trình huấn luyện cho nhân viên của họ.', N'0011.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 10, 2, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (12, N'Thung Lũng Kinh Hãi', CAST(57000 AS Decimal(18, 0)), N'Thung Lũng Kinh Hãi

Lạnh lùng, khô khan, một khả năng quan sát đáng kinh ngạc, một năng lực phân tích và phán đoán phi thường, một võ sĩ quyền Anh cừ khôi, một tay chơi vĩ cầm điêu luyện… Chừng đó là quá đủ để ta biết đó là ai. Sherlock Holmes huyền thoại. Sherlock Holmes kiệt xuất. Sherlock Holmes không bao giờ chết.

Là cuốn tiểu thuyết thứ tư về Sherlock Holmes, Thung lũng Kinh hãi mở đầu với một vụ án mạng bí ẩn ở miền quê nước Anh. Một người đàn ông bị bắn chết trong chính căn nhà của mình. Nhưng nguyên nhân sâu xa của vụ ám sát đó lại khởi nguồn tại một thung lũng khai thác than và sắt ở Mỹ hàng chục năm trước.', N'0012.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 12, 2, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (13, N'Sherlock Holmes Toàn Tập (Trọn Bộ 3 Tập)', CAST(240000 AS Decimal(18, 0)), N'Combo Sherlock Holmes Toàn Tập

Sherlock Holmes là một nhân vật thám tử hư cấu vào cuối thể kỉ 19 và đầu thế kỉ 20, xuất hiện lần đầu trong tác phẩm của nhà văn Arthur Conan Doyle xuất bản năm 1887. Ông là một thám tử tư ở Luân Đôn nổi tiếng nhờ trí thông minh, khả năng suy diễn logic và quan sát tinh tường trong khi phá những vụ án mà cảnh sát phải bó tay. Nhiều người cho rằng Sherlock Holmes là nhân vật thám tử hư cấu nổi tiếng nhất trong lịch sử văn học và là một trong những nhân vật văn học được biết đến nhiều nhất toàn thế giới.

Sherlock Holmes đã xuất hiện trong 4 tiểu thuyết và 56 truyện ngắn của nhà văn Conan Doyle. Hầu như tất cả các tác phẩm đều được viết dưới dạng ghi chép của bác sĩ John H. Watson, người bạn thân thiết và người ghi chép tiểu sử của Sherlock Holmes, chỉ có 2 tác phẩm được viết dưới dạng ghi chép của người thứ ba. Hai tác phẩm đầu tiên trong số này là 2 tiểu thuyết ngắn và được xuất hiện lần đầu tiên trên tờ Beeton''s Christmas Annual vào năm 1887 và tời Lippincott''s Monthly Magazine vào văm 1890. Thám tử Holmes trở nên cực kì nổi tiếng khi loạt truyện ngắn của Conan Doyle được xuất bản trên tạp chí The Strand Magazine năm 1891. Các tác phẩm được viết xoay quanh thời gian từ năm 1878 đến năm 1903 với vụ án cuối cùng vào năm 1914.

Combo Sherlock Holmes Toàn Tập gồm 3 tập:

Sherlock Holmes Toàn Tập - Tập 1

Sherlock Holmes Toàn Tập - Tập 2

Sherlock Holmes Toàn Tập - Tập 3.
', N'0013.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 12, 2, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (14, N'Án Mạng Trên Chuyến Tàu Tốc Hành Phương Đông', CAST(105000 AS Decimal(18, 0)), N'Án Mạng Trên Chuyến Tàu Tốc Hành Phương Đông

Một tên giết người trên chuyến tàu tốc hành Phương Đông được phát hiện đã bị giết chết bởi 12 nhát dao khác nhau. Phải chăng hung thủ là người ngoài hay chính 12 hành khách - vốn có mối thù với hắn - thông đồng với nhau để trả thù? Thám tử Poirot đã ra tay và vụ án dần dần được làm sáng tỏ. Kết quả thu được không chỉ đơn thuần là câu trả lời cho vấn đề hung thủ là ai, mà chính là lương tâm của con người trước ánh sáng của công lí.

“Kẻ sát nhân đang đồng hành cùng chúng ta – trên chuyến tàu này…”

Vừa quá nửa đêm, chuyến tàu tốc hành Phương Đông nổi tiếng buộc phải ngừng lại vì tuyết rơi quá dày. Vào buổi sáng, tay triệu phú Simon Ratchett được phát hiện nằm chết trong toa riêng của mình với mười hai nhát dao, cửa khoang được khóa từ bên trong. Một trong những hành khách có mặt trên chuyến tàu là thủ phạm.

Một mình giữa cơn bão tuyết cùng nhân dạng mù mờ về tên sát nhân qua lời chứng của mọi người, thám tử Hercule Poirot phải tìm ra chân tướng kẻ thủ ác giữa mười hai kẻ thù của nạn nhân, trước khi tên giết người kịp đào thoát…

“Mô tả rất thực, quyển sách khiến độc giả mê hoặc và tò mò đến trang cuối cùng.” – Times Literary Supplement

.” – Times Literary Supplement', N'0014.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 2, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (15, N'Án Mạng Trên Sông Nile (Tái Bản 2021)', CAST(108000 AS Decimal(18, 0)), N'Linnet Ridgeway sở hữu trong tay tất cả mọi thứ mà bất cứ một người nào cũng có thể lấy làm ghen tị: tuổi trẻ, sắc đẹp, sự thông minh, của cải và một vị hôn phu rất xứng với cô. Rồi một ngày nọ, người bạn thân nhất của của Linnet - Jackie - đưa vị hôn phu điển trai của mình là Simon Doyle đến, để xin Linnet cho anh một việc làm. Giờ thì chính Linnet và Simon lại đi hưởng tuần trăng mật với nhau, trên một chuyến tàu dạo quanh sông Nile. Bất chợt, Linnet bị giết hại, Jackie trở thành đối tượng bị tình nghi hàng đầu nhưng cô không hề có khả năng thực hiện được điều ấy. Không chỉ dừng lại ở đó, thủ phạm lần lượt ra tay thêm với hai vị khách nữa trong đoàn. Đúng là một vụ án bí hiểm, không có manh mối, nhân chứng, và đoàn khách du lịch dường như cũng không có mối quan hệ với nạn nhân. Tuy nhiên, không có điều gì có thể lọt khỏi tầm mắt của thám tử lừng danh Hercule Poirot.


', N'0015.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 2, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (16, N'Án Mạng Đêm Giáng Sinh - Hercule Poirot''S Christmas (Tái Bản)', CAST(121500 AS Decimal(18, 0)), N'Tỉ phú Simeon Lee bất ngờ mời gia đình đến nhà tụ họp mừng Giáng sinh khiến cho khách khứa không khỏi nghi ngờ. Simeon không mấy có tình cảm gia đình, và không phải mọi thành viên trong nhà đều có quan hệ tốt đẹp. Đã vậy, ông còn mời Harry, thành viên bị ghét bỏ trong gia đình, và đứa cháu gái sinh ở Tây Ban Nha, Pilar, chưa từng ai trong gia đình gặp gỡ. Simeon chủ ý bày trò chơi ác với cảm xúc của gia đình ông. Một khách không mời xuất hiện – Stephen Farr, con trai của đối tác cũ của Simeon Lee thời khai thác kim cương – khiến cho ngôi nhà đầy ắp ngờ vực khi trò chơi trở thành chết chóc.', N'0016.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 2, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (17, N'Rượu Độc Lóng Lánh', CAST(130500 AS Decimal(18, 0)), N'Sáu người ngồi vào một bàn tiệc được bày biện cho bảy người tham dự. Trước chỗ ngồi để trống là một nhành hương thảo – Rosemary – “loài hoa tỏ niềm tưởng nhớ”. Thật là một gợi nhắc lạ lùng, vì chẳng ai trong số họ quên được cái đêm kinh hoàng của một năm về trước, khi Rosemary Barton gục chết trên chính cái bàn này, gương mặt xinh đẹp méo mó vì đau đớn.

Như cái tên, Rosemary không thể bị lãng quên. Cô luôn khơi gợi cảm xúc mãnh liệt ở mọi người, và có khi là cảm xúc đủ mạnh để họ xuống tay hạ sát cô...

Đêm nay, bi kịch có tái diễn? Giữa một cái bẫy, mấy tay bồi bàn, và những gói độc dược giấu trong túi xách, làm sao Đại tá Race phá giải vụ án mạng đáng lẽ không thể nào xảy ra được nhưng đã xảy ra? Một lần nữa, Agatha Christie lại chứng tỏ sức hấp dẫn đến từ sự am hiểu tâm lý vô song và một bí ẩn vừa lắt léo vừa giản đơn đến tài tình.

“Màn kết sẽ khiến chín trên mười người đọc phải sửng sốt.” New York Times.

', N'0017.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 2, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (18, N'Hickory, Hickory, Oẳn Tù Tì', CAST(117000 AS Decimal(18, 0)), N'Trong một căn nhà trọ sinh viên bỗng xảy ra những vụ mất cắp bí ẩn. Những món đồ bị mất dường như chẳng ăn nhập gì với nhau, như một trò đùa tai quái. Nhưng càng ngày, bí ẩn càng gia tăng, cùng với những hành vi ác ý nhắm vào những người trọ tại đây. Đỉnh điểm là một án mạng xảy ra.
Thám tử Poirot đã có mặt tại hiện trường theo lời khẩn cầu của người phụ nữ quản lý nhà trọ. Từ đây, ông đã lần ra những dấu vết đáng ngờ và lật mặt thủ phạm.

Về tựa sách: “Hickory, dickory, dock” là một bài đồng dao của Anh mà trẻ em thường dùng để xác định ai là người đi trước trong các trò chơi. 
Hickory dickory dock. The mouse went up the clock
The clock struck one. The mouse went down
Hickory dickory dock
Tick tock, tick tock, tick tock, tick tock…
', N'0018.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 2, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (19, N'Vọng Lâu Tử Thần - Dead Man''s Folly', CAST(96000 AS Decimal(18, 0)), N'Trò chơi từ thiện truy lùng hung thủ được tổ chức tại một điền trang ở Devon đã biến thành sự thật. Ngài George và phu nhân Stubbs, chủ nhân đăng cai lễ hội làng, đã nảy ra ý tưởng mới lạ về việc dàn dựng một vụ giết người bí ẩn giả. Với thiện ý, Ariadne Oliver, nhà văn nổi tiếng chuyên thể loại trinh thám hình sự, đồng ý sắp đặt cuộc truy lùng hung thủ cho họ. Bất chấp nhiều tuần lên kế hoạch tỉ mỉ, vào phút cuối, Ariadne gọi cho bạn mình là Hercule Poirot để nhờ cậy đến tài năng chuyên môn của ông. Bằng bản năng, bà linh cảm có âm mưu nham hiểm nào đó sắp xảy ra… Hãy cẩn thận — đừng trông mặt bắt hình dong bất cứ ai!

Vọng lâu tử thần chứng kiến sự trở lại của nhà văn trinh thám Ariadne Oliver, vời Poirot đến một điền trang nông thôn để điều tra nỗi ngờ vực dai dẳng trong lòng, mà bà sợ rằng có thể dẫn đến chuyện nghiêm trọng.

Điền trang nông thôn trong truyện này được lấy cảm hứng từ nhà nghỉ mát riêng của Agatha Christie, Greenway House ở Devon, nhìn ra sông Dart và có nhiều đặc điểm được đề cập trong tiểu thuyết. Hiện do National Trust sở hữu và quản lý, ngôi nhà được sử dụng để quay bộ phim truyền hình của đài ITV chuyển thể cuốn tiểu thuyết này. Dead Man’s Folly là tập thứ ba trong phim bộ truyền hình 13 tập về Hercule Porot của Agatha Christie, phát sóng lần đầu vào ngày 30 tháng 10 năm 2013. Tập phim dài dựa trên tiểu thuyết cùng tên này của Agatha Christie do Tom Vaughan đạo diễn với kịch bản của Nick Dear.

Cốt truyện chính lần đầu tiên ra mắt bạn đọc dưới dạng tiểu thuyết chỉ mới được xuất bản gần đây với nhan đề Hercule Poirot and Greenshore Folly. Năm 1954, Agatha Christie viết câu chuyện với ý định dùng số tiền thu được góp vào quỹ mua cửa sổ kính màu cho nhà thờ địa phương của bà ở Churston Ferrers, và bà điền vào câu chuyện những địa điểm trong vùng, gồm cả ngôi nhà Greenway của chính mình. Nhưng sau khi hoàn thành, bà lại quyết định mở rộng câu chuyện thành tiểu thuyết, Dead Man’s Folly, được xuất bản hai năm sau, và thay vào đó quyên góp một câu chuyện về Miss Marple (Greenshaw’s Folly) cho quỹ của nhà thờ.

Dead Man’s Folly còn được dựng kịch bản phim cho BBC Radio 4 năm 2007, với sự tham gia của John Moffatt trong vai Poirot và Julie McKenzie (được biết đến nhiều hơn với vai Miss Marple) trong vai Ariadne Oliver. Năm 2009, I-play đã phát hành trò chơi đồ vật ẩn có thể tải xuống dựa trên câu chuyện và chuyển thể tiểu thuyết tranh được xuất bản vào cuối năm 2012.

', N'0019.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 2, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (20, N'Hiểm Họa Ở Nhà Kết', CAST(84000 AS Decimal(18, 0)), N'Hiểm Họa Ở Nhà Kết

Poirot và người bạn trung thành Hastings tình cờ phát hiện những âm mưu đang diễn ra tại một dinh thự cổ ở nông thôn. Tất cả đều nhắm tới việc đoạt mạng chủ nhân Nhà Kết - một cô gái trẻ xinh đẹp, tràn đầy sức sống.

Đầu tiên, trên một sườn đồi nguy hiểm, chiếc xe của cô bị hỏng hóc. Rồi một tảng đá lớn lăn xuống suýt đè trúng cô trên con đường ven biển. Sau đó, bức tranh sơn dầu to nặng treo ở đầu giường rơi xuống và nữ chủ nhân Nhà Kết chỉ thoát chết nhờ một khoảnh khắc tình cờ may mắn. Khi tìm thấy một lỗ đạn trên chiếc mũ của cô, Poirot quyết định đặt cô gái trẻ Burkley dưới sự bảo vệ của ông, và cố gắng làm sáng tỏ bí ẩn xung quanh một vụ án mạng….

Nhịp độ tuyệt hảo, những gợi ý được cài cắm tinh tế, và câu trả lời vô cùng bất ngờ nhưng tuyệt đối logic - Hiểm họa ở Nhà Kết là một câu chuyện hoàn hảo, xứng đáng có vị trí trong top 10 tác phẩm hay nhất của Agatha Christie, như nhà "Christie học" John Curran đã điểm qua.

"Agatha Christie là đại diện vĩ đại nhất của truyện trinh thám. Tài năng văn học độc đáo của bà đã xuyên qua mọi ranh giới tuổi tác, màu da, giai cấp, địa lý và giáo dục. Khi bà trau chuốt thể loại truyện giả tưởng này và làm nó trở nên óng ả, đọc những cuốn sách của bà đã trở thành thú vui toàn cầu."

- John Curran -

', N'0020.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 2, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (21, N'Những Em Bé Đang Lớn - Tặng Kèm Bookmark', CAST(94500 AS Decimal(18, 0)), N'NHỮNG EM BÉ ĐANG LỚN

“Những em bé đang lớn” là chương tiếp theo của “Lê la từ nhà ra ngõ”, một chương mới về cuộc đời của Làn với những câu chuyện đi sâu hơn vào đời sống, những câu chuyện có thể khiến bạn cười nhưng đồng thời cũng có thể làm bạn bật khóc.

Sách gồm các phần: Trẻ con - Trẻ con tập lớn - Người lớn - Ai cũng là người lớn - Ai cũng là trẻ con. Đọc tiêu đề mỗi phần cũng có thể hình dung qua về cuốn sách dễ thương này.

Tất cả chúng ta đều là những đứa trẻ mộng mơ trước khi trở thành một người lớn chín chắn, trưởng thành. Và mỗi người lớn đều là “trẻ con” với một ai đó. Như cách bạn luôn là “trẻ con” với bố mẹ, như cách bố mẹ vẫn là “trẻ con” với các bác trong nhà, và như cách các bác vẫn luôn là “con trẻ” trong mắt của ông bà.

Chúng ta, ai cũng từng là những đứa trẻ. Và những đứa trẻ, bao giờ cũng sẽ có những câu chuyện để nhớ về…

Những đứa trẻ đó có thể từng là những đứa trẻ hư, từng mắc không ít sai lầm, từng nói dối, cũng có thể từng nghịch ngợm. Những đứa trẻ đó có thể đủ đầy tình cảm gia đình, cũng có thể thiếu thốn tình thương, cũng có thể không được thương yêu đúng cách.

Nhưng, không phải đứa trẻ hư nào lớn lên cũng sẽ trở thành một người lớn tồi. Đời sống chúng ta là tổ hợp của gia đình, bạn bè, trường lớp, của các mối quan hệ xã hội khác nhau. Đứa trẻ sẽ vấp ngã, sẽ gặp những người xấu, nhưng đồng thời có thể tự trưởng thành sau mỗi cú ngã và sẽ được học, được an ủi bởi những người đẹp đẽ và giàu tình yêu thương.

Hiện tại dù đang ở đội tuổi mười mấy đôi mươi, hay ba mươi bốn mươi năm mươi… thì chúng ta vẫn luôn “lớn lên” mỗi ngày bằng một cách nào đó. Con cái lớn lên khi biết tự lập, bố mẹ lớn lên khi biết để con rời xa mình và theo đuổi điều con thực sự thuộc về… Chúng ta đều là những “đứa trẻ” đang học lớn, nhưng cũng là những “người lớn” đối với một ai đó trong cuộc đời này.

Hy vọng những câu chuyện nhỏ xinh trong “Những em bé đang lớn” có thể mang đến cho bạn một góc nhìn dễ thương về cuộc đời, nơi những đứa bé tập lớn, nơi những người lớn được làm trẻ con, nơi chúng ta ai cũng sẽ là một phần quan trọng trong cuộc đời của một người nào đó.

“Những em bé đang lớn” - Mong bạn có thể sảng khoái làm người trưởng thành, nhưng cũng có thể hồn nhiên trở về làm trẻ nhỏ.

.', N'0021.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 13, 3, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (22, N'Thế Giới Xấu Xí, Với Anh, Em Vẫn Đẹp', CAST(82800 AS Decimal(18, 0)), N'THẾ GIỚI XẤU XÍ, VỚI ANH, EM VẪN ĐẸP – YANG PHAN
- Đọc để giữ lại những tin yêu, chân thành dù cuộc đời có xù xì, gai góc.

- Đọc để chữa lành trái tim, mạnh mẽ bước qua vụn vỡ và tiếp tục tha thiết yêu.

- Món quà ngọt ngào dành tặng một nửa thế giới 8/3 này!', N'0022.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 14, 3, 11)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (23, N'Như Giọt Chuông Ngân', CAST(108000 AS Decimal(18, 0)), N'Mười lăm câu chuyện trong tập sách đã đem đến cho người đọc những khoảnh khắc thú vị, ưu tư, bất ngờ của hiện hữu. Đằng sau mỗi câu chuyện là một thân phận cùng những thông điệp về cuộc sống muôn màu, vừa quen vừa lạ mà đôi khi chúng ta bắt gặp trong đó những trạng thái của mình, của người thân hay nhân tình thế thái.

Nó gợi cho bạn đọc nhiều liên tưởng trong cõi nhân sinh; mỗi phận số là chứng nhân; mỗi tình huống là trạng thái với những nghịch lý buộc phải lựa chọn khi cái xấu được ngụy trang, lẫn lộn với cái tốt mà nếu không cảnh giác, con người sẽ dễ rơi vào hố thẳm.

Với góc nhìn của một độc giả hơn là nhà phê bình, có thể nói những truyện ngắn trong "Như Giọt Chuông Ngân” có ý nghĩa khái quát và luôn để lại âm vang như tiếng chuỗng ngân rung trong lòng bạn đọc... Và tôi đồ rằng Hồ Loan có nhiều trải nghiệm sống - viết để dấn thân trong niềm yêu say vào thể tài đầy nhọc nhằn này – nơi thử thách tài nắng và giá trị duy mỹ của tác giả.', N'0023.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 13, 3, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (35, N'Người Tập Lớn', CAST(98000 AS Decimal(18, 0)), N'NGƯỜI TẬP LỚN - CHÀ
Dành tặng bạn, người trẻ đang loay hoay tập lớn

Đọc để thấy những điều dễ thương giữa cuộc đời vội vã

—

“NGƯỜI TẬP LỚN” - NƠI SỰ TỬ TẾ LẤP LÁNH SAU LỚP ÁO BÌNH DỊ!

“Tui nghĩ cuộc đời này tất nhiên cần những điều lớn lao. Những ước mơ cả đời. Những kế hoạch 10 năm. Những mong muốn xa xôi. Cần chứ. Nhưng nó đều được xây từ những việc vụn vặt hàng ngày cả.”

Cuộc đời rộng lớn còn chúng ta thì nhỏ bé nhưng những gì to tát đều được xây nên từ mấy điều bé xíu. Chúng ta mỗi ngày đều cố tìm kiếm niềm vui lớn lao ở tít xa xôi mà quên mất những điều gần gũi xung quanh. Những lắng lo, sợ hãi trước những xù xì, gai góc của hành trình “tập làm người lớn” khiến chúng ta đôi khi lỡ mất điều xinh đẹp ở ngay cạnh mình.

Cuốn sách “Người tập lớn” với những mẩu chuyện ngắn nhưng lại vẽ dài thêm sự dễ thương cho cuộc đời này. Chà - tác giả của “Người tập lớn” mang đến một góc nhìn mới về cuộc sống quanh ta. Chà kể về tụi nhân viên gen Z đôi lúc ngáo ngơ nhưng cực kỳ chân thành và nhiệt huyết; kể chuyện anh “síp bơ” cục mịch nhưng hiền lành, tốt tính,... Những con người trong thế giới của “Người tập lớn” có thể khác nhau về giới tính, độ tuổi, nghề nghiệp nhưng đều rất dễ mến và tử tế. Thế giới ấy chân thực, gần gũi tới mức bạn sẽ phải thốt lên rằng, hóa ra lâu nay mình mải vội vã mà không biết cuộc đời này đáng yêu như vậy.

Thế giới trong “Người tập lớn” như những tia nắng đầu xuân, mang sự ấm áp rót đầy tim bạn. Nếu có đang vội vã dịch chuyển giữa xô bồ cuộc sống thì dừng lại một chút, để cảm nhận những điều tử tế mà “Người tập lớn” dành tặng bạn nha.

', N'0024.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 14, 3, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (36, N'Gió Thu Hoa Cúc Gầy Rồi', CAST(152100 AS Decimal(18, 0)), N'Gió Thu Hoa Cúc Gầy Rồi

Những bông cúc đều rụng cánh quá nửa, còn lại bao nhiêu đều thâm úa gần hết.

Chúng đã quá cái độ tươi cười rồi. Cánh mảnh, nhụy mòn, cuống lả xuống và đài quắt đi, đóa hoa thật là gầy và ốm. Cúc không còn chủ nhân, cúc chỉ còn những bóng chiều một đi một mất… Ấy là đời một người đàn bà góa.

Số phận của người đàn bà cũng giống như đóa cúc kia, gầy khô và héo quắt khi một mình gánh gồng trên vai cuộc đời của ba đứa con thơ.

Nỗi trăn trở khôn nguôi cùng thời thế, với sự lớn lên từng ngày trong suy nghĩ của đàn con khiến người đàn bà chỉ quẩn quanh với trăn trở, trở trăn, tơ vò một nỗi.

Rồi đây, bà cũng sẽ như bông cúc dưới gió thu, liệu các con bà có đủ bản năng xuôi theo một nguồn sống thuần túy ở trong cảnh thanh bần mà quán xuyến cuộc đời vốn lắm nỗi nhiêu khê?
', N'0025.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 14, 3, 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (37, N'Phố Hàng Bột, Chuyện "Tầm Phào" Mà Nhớ', CAST(108000 AS Decimal(18, 0)), N'Phố Hàng Bột, Chuyện "Tầm Phào" Mà Nhớ đưa ta khám phá lược sử Hàng Bột; món ngon Hàng Bột (Hà Nội); con người Hàng Bột với một thời bao cấp muôn nghề mưu sinh; trò chơi của con trẻ xưa ở phố Hàng Bột. Tức là, những gì đặc trưng nhất của Hàng Bột đều có trong tập sách, từ dư địa chí, phong tục tập quán, tầng tầng lớp lớp người với người, người với cảnh và người với việc.

"...Tác giả Hồ Công Thiết gắn bó suốt từ tuổi thơ với Hàng Bột, yêu con phố ấy đến mê man từng nóc nhà, từng ngõ hẻm để viết nên tập sách này. Anh hiểu về Hà Nội rất chi tiết, kỹ càng, và viết ra cũng chi tiết, kỹ càng, cuốn hút, ăm ắp những điều ai cũng yêu thích, cũng tò mò mà chưa mấy người viết ra…" – Nhà văn Châu La Việt', N'0026.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 40, 2, 3, 12)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (38, N'Người Đàn Ông Có Cái Đuôi Hình Thuổng', CAST(106200 AS Decimal(18, 0)), N'Như để trả lời cho thắc mắc rối bời của tôi, bóng người ngồi trên ghế hơi chuyển động. Gã nghiêng sang một bên, chồm về phía bàn phản và thò tay mở hộc tủ. Lấy ra một chiếc giữa, gã thong thả xoè bàn tay ra, chầm chậm giũa từng ngón một. Hai bàn tay to với những móng vuốt nhọn lều. Cái đuôi của gã dài thượt, có những chấu như gai, chót đuôi bè ra thành hình tam giác, chẳng khác gì chiếc thuồng. Tâm trí tôi la thất thanh: Mình gặp quỷ rồi. Câu niệm “Án ma ni bát mê hồng” không thể bật ra kẽ môi mặc dù tôi rất muốn. Thế rồi như đọc được ý nghi của tôi, con quỷ xoay hẳn người ngồi đối diện, đầu cúi xuống gí sát vào mặt tôi: “Cậu niệm chủ à? Câu chủ ấy chỉ trị được ma quỷ thôi. Còn tớ không phải là quỷ”. “Vậy anh là gì? Là gì?”...', N'0027.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 7, 3, 13)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (39, N'Mẹ Làm Gì Có Ước Mơ', CAST(89000 AS Decimal(18, 0)), N'“Ước mơ của mẹ là gì?”

“Thì cho chúng mày ăn học đàng hoàng, đầy đủ để mai sau đỡ khổ.”

“Không, ước mơ khác cơ.”

“Mai sau chúng mày lập gia đình, chọn được đúng người, vợ chồng yêu thương nhau.”

“Ước mơ dành riêng cho bản thân mẹ cơ mà.”

“MẸ THÌ LÀM GÌ CÓ ƯỚC MƠ.”

Bạn có bao giờ hỏi ước mơ của bố mẹ là gì? Hoặc dù có hỏi bố mẹ cũng chỉ trả lời qua loa như “Làm gì có…”. Nhưng bạn biết không, làm gì có ai trên thế giới này không có ước mơ cơ chứ, chỉ là ước mơ của bố mẹ chúng ta được cất giấu rất sâu trong tim và đánh đổi bằng nụ cười của những đứa con mà thôi.

Tại sao mẹ lại chẳng có nổi một ước mơ cho riêng mình? Phải chăng gánh vai mẹ đã quá mỏi mệt với cơm áo gạo tiền, với những bữa ăn và học phí của con.

À không, mẹ có ước mơ đấy chứ. Mẹ ước mơ có một người bố, rồi mẹ cho nó cả một gia đình. Mẹ ước mơ được tới trường, nên mẹ cho nó học con chữ. Mẹ ước mơ được một bữa no, nên dẫu có phải đi làm vất vả khổ cực đến đâu mẹ cũng cho nó được bữa cơm ngon. Chỉ khác một điều, ước mơ của mẹ là các con mất rồi.

Đó là hình ảnh của MẸ mà bạn sẽ bắt gặp trong “Mẹ làm gì có ước mơ”. Tựa một thước phim quay chậm đưa bạn trở lại những ngày bé thơ, dưới vòng tay chai sạn nhưng đầy ấm áp của mẹ. Khi tạm cất ước mơ của mình sang một bên, ước mơ của mẹ “hóa ra con từ bao giờ” và “thế giới của mẹ chính là con”. Bố mẹ đã dồn hết khả năng của mình, dành cho con những gì tốt nhất để con được thực hiện ước mơ.

Chúng ta đừng chỉ mải chạy theo ước mơ của mình mà quên mất những người đã hy sinh cả cuộc đời để mình có cơ hội thực hiện ước mơ ấy. Có thể gọi điện về nhà thường xuyên hơn, hoặc nếu có thể, hãy trở về nhà nếu đã đi đủ lâu. Đó là những điều mà Hạ Mer muốn gửi gắm đến bạn qua “Mẹ làm gì có ước mơ”.

Hy vọng cuốn sách sẽ giúp bạn thêm trân quý từng khoảnh khắc bên cạnh những người mà mình yêu thương.

', N'0028.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 10, 3, 12)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (40, N'Trưởng Thành Cùng Nỗi Cô Đơn', CAST(122000 AS Decimal(18, 0)), N'CÔ ĐƠN TÍCH CỰC, ĐÍCH THỰC THÀNH CÔNG

Trong thời đại mà tất cả mọi thứ đều đang thay đổi này, chúng ta nên sống thế nào?

Thời đại nào cũng có những lý do dẫn đến bất hạnh, chỉ có điều tốc độ của thời đại này quá nhanh, khiến những cuộc hôn nhân lẽ ra phải duy trì cả đời bắt đầu gặp sóng gió. Và thế là, chúng ta trông thấy những truyền thống từng ăn sâu vào gốc rễ đang dần biến mất.

Ở thế hệ cha mẹ chúng ta trước kia, hôn nhân là điều tất yếu, hai người không yêu nhau vẫn kết hôn. Để rồi khi ở tuổi bốn mươi, bỗng một ngày họ nhận ra rằng cuộc hôn nhân của mình từ lâu đã không còn tình yêu. Họ chỉ biết cố gắng sống với nhau đến hết cuộc đời.

Nhưng thế hệ của chúng ta thì khác, có thể sống đến một trăm tuổi. Vào một ngày nào đó ở tuổi 40, khi thức dậy, trông thấy người bạn đời không phải người mình yêu thương, mà vẫn phải cố sống thêm vài chục năm nữa, vậy chúng ta có ly hôn không?

Nói cách khác, vào một ngày trong tương lai, biết tin một người đã ly hôn, chúng ta nên tiếc nuối hay chúc mừng họ đây?

Trưởng thành cùng nỗi cô đơn

Thời thế đã thay đổi đến mức chúng ta không biết phải lựa chọn thế nào. Dường như hôn nhân không còn là điều bắt buộc, chúng ta vẫn sống tốt ngay cả khi độc thân. Trong thời đại mà tất cả mọi thứ đều đang thay đổi này, chúng ta nên sống thế nào?

Một thời thanh xuân tươi đẹp nhanh chóng trôi qua, đến khi định thần lại đã đến tuổi trưởng thành. Nhưng trong vài khoảnh khắc, ta luôn cảm giác mình chỉ như một đứa trẻ.

Đây là cuốn sách nói về hôn nhân và tình yêu của những người “đã từng” trẻ của thế hệ 9x. Đến một tuổi nhất định, thái độ đối với hôn nhân và gia đình lại hết sức phức tạp: Người ta hạnh phúc trong sự lo âu, đồng thời lo âu trong sự ngọt ngào của hạnh phúc.

Nếu có thể, bạn hãy dành một ngày cuối tuần, cầm cuốn sách này và đọc từ đầu đến cuối, để có trải nghiệm cho riêng mình.
', N'0029.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 11, 3, 14)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (41, N'Đằng Giang Tự Cổ', CAST(81000 AS Decimal(18, 0)), N'LỜI GIỚI THIỆU

Sự hình thành và hun đúc nên căn tính của một dân tộc, càng ngày càng thể hiện rõ nét tầm quan trọng trong việc gìn giữ và phát huy bản sắc của một quốc gia trong thời đại mà khoảng cách địa lý, biên giới quốc bị xóa nhòa bởi các làn sóng toàn cầu hóa và sự phát triển không đoán định được của khoa học số. Việc một quốc gia tồn tại với định danh và những cá tính riêng biệt của mình, buộc phải dựa vào việc biết và hiểu rõ lịch sử thăng trầm của đất nước, những dấu ấn hào hùng hay đau thương, những cá nhân kiệt xuất với những chiến công vĩ đại trong công cuộc chống ngoại xâm lẫn những uẩn khúc bên trong mà mỗi cá nhân ấy phải vượt lên để đặt số phận dân tộc, nền độc lập tự cường của quốc gia lên hàng đầu. Dòng chảy lịch sử tạo nên bởi những con người hữu danh và vô danh từ thời dựng nước cho đến thời hiện đại, đã và đang là chỗ dựa cho thế hệ hôm nay có một lợi khí vô giá để thực hiện tiếp những ước vọng của cha ông về một dân tộc luôn biết giữ gìn phẩm giá và căn tính của mình.

“Đằng giang tự cổ”, tập truyện ngắn lịch sử dày công của nhà văn Trần Thúc Hà, với mong muốn góp một phần cho sự biết và hiểu về lịch sử dân tộc. 11 truyện ngắn được chọn in kể lại những câu chuyện, nhân vật lịch sử với những tình tiết đắt giá, đa dạng và nhân bản.
', N'0030.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 10, 3, 12)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (42, N'Những Truyện Kinh Dị Nổi Tiếng Thế Giới - Con Mèo Đen Bí Ẩn', CAST(45000 AS Decimal(18, 0)), N'Những Truyện Kinh Dị Nổi Tiếng Thế Giới - Con Mèo Đen Bí Ẩn

“Ngày mai tôi sẽ chết. Tôi muốn nhân chút thời gian sống ít ỏi còn lại, phải kể câu chuyện này ra, để linh hồn được thanh thản… Tôi rất muốn kể rành mạch những chuyện vặt vãnh trong gia đình này, mà không cần lời bình luận nào. Chính những việc này đã làm tôi hoảng hốt, dằn vặt, cuối cùng đã huỷ hoại cả cuộc đời tôi…”

14 câu chuyện kinh dị nổi tiếng thế giới sẽ đem lại cho bạn những cảm giác hồi hộp, sợ hãi, kinh hoàng nhưng cũng vô cùng thú vị.', N'0031.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 30, 13, 4, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (43, N'Lời Nguyền Shiraisan', CAST(59000 AS Decimal(18, 0)), N'Lời Nguyền Shiraisan

Ngày đầu mùa xuân, trong quán cà phê trang nhã tĩnh lặng, một cô gái đang nhâm nhi đồ uống và chuyện vãn với bạn thì bạn cô đột tử một cách thê thảm. Nhãn cầu nổ tung thành nhiều mảnh vụn, bắn la liệt ra sàn.

Cảnh sát đến khám nghiệm hiện trường, kết luận không có dấu hiệu hình sự. Pháp y đưa thi thể đi giám định, kết luận tử vong do suy tim.

Nghe xong, cô gái không sao chấp nhận được.

Buổi tối mùa xuân, vừa ra khỏi cửa hàng tiện lợi, một chàng trai nhận được điện thoại của người em đã lâu không liên lạc. Nghe em nói năng rất gở, cậu lo lắng chạy đến tận nơi xem sao thì thấy em đã đột tử, nhãn cầu nổ tung thành nhiều mảnh vụn, bắn la liệt ra sàn.

Cảnh sát đến khám nghiệm hiện trường, kết luận không có dấu hiệu hình sự. Pháp y đưa thi thể đi giám định, kết luận tử vong do suy tim.

Nghe xong, chàng trai không sao chấp nhận được.

Đi sâu tìm hiểu, họ nhận ra nguyên nhân tử vong vô cùng phi lý. Trước khi qua đời, những người này đều từng nghe một truyện kinh dị, tên là Lời nguyền Shiraisan. Trong truyện có lồng lời nguyền đoạt hồn. Dù cố ý tìm kiếm hay vô tình lướt mạng đọc phải, đã biết nội dung câu chuyện và nhân vật, người ta ắt sẽ nổ nhãn cầu mà chết, rồi được kết luận là do suy tim.

Hành vi gây họa diện rộng như thế thường gắn liền với tâm lý trả thù xã hội, bắt nguồn từ quá khứ bất hạnh của thủ phạm. Tuy nhiên quá khứ ở đây lại thuộc loại khó xác minh, nhân chứng đứng ra kể thì bất khả tín, chỉ biết cuộc sống của mỗi người sau khi đọc/nghe truyện sẽ là chuỗi ngày bị cầm tù bởi kinh hoàng, hoang tưởng và kết thúc trong thảm thương.

Câu chuyện thế nào mà ghê gớm như vậy?

Cụ thể có trong Lời nguyền Shiraisan, tiểu thuyết kinh dị mới nhất được chuyển thể thành phim cùng tên của Otsuichi.
', N'0032.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 6, 4, 15)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (44, N'Lễ Vật Kinh Hoàng', CAST(132600 AS Decimal(18, 0)), N'Sau Vệ sĩ vô hình và Mối bất hòa truyền kiếp, tác giả Dolores Redondo cho ra mắt bạn đọc tập tiếp theo và cũng là tập cuối cùng trong xê ri tiểu thuyết hình sự về thung lũng Baztán.

Câu chuyện mở đầu bằng cái chết của một bé gái sơ sinh cùng những phản ứng kỳ lạ của gia đình đứa trẻ.

Ban đầu nguyên nhân tử vong được cho là do hội chứng đột tử ở trẻ sơ sinh (SIDS), nhưng một dấu hiệu đáng ngờ xuất hiện trên mặt bé dẫn cảnh sát đi đến kết luận: đây là một vụ giết người.

Cha của bé gái bị bắt khi đang cố mang xác bé chạy trốn và cụ ngoại của bé khăng khăng rằng hung thủ là “Inguma” – một ác ma trong thần thoại xứ Basque, tước đoạt mạng sống của con người trong lúc họ đang ngủ.

Qua 1500 trang sách, nhân vật chính Amaia Sazalar đã để lại trong lòng độc giả rất nhiều cảm xúc yêu thương và ngưỡng mộ về một nữ thanh tra tài năng, gan góc nhưng lại có tuổi thơ bất hạnh đến ám ảnh. Chính những trải nghiệm của bản thân đã làm nên một Amaia quyết đoán và luôn hành động độc lập, và nó khiến cho các đồng nghiệp của chị cảm thấy không hài lòng.

Khi Amaia quyết định mở rộng điều tra các trường hợp trẻ sơ sinh dưới hai tuổi chết do SIDS trong thung lũng Baztan những năm gần đây, chị nhanh chóng tìm ra điểm tương đồng đáng ngờ và khiến cuộc điều tra rơi vào mớ rắc rối đáng lo ngại. Sự dối trá, phản bội và nghi kỵ nhau bắt đầu len lỏi bên trong từng thành viên của đội điều tra án mạng.

Tạm xa vai trò của một người vợ, người mẹ, Amaia trở về nơi mọi sự bắt đầu để đối mặt với bóng ma quá khứ của mình và khám phá ra sự thật khủng khiếp đã hủy hoại thung lũng Elizondo xinh đẹp trong nhiều năm qua.
', N'0033.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 8, 4, 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (45, N'Cô Gái Trong Sương Mù', CAST(92000 AS Decimal(18, 0)), N'Cái đêm mà mọi thứ thay đổi hoàn toàn khởi đầu với một cú điện thoại.

Chuông điện thoại vang lên vào lúc 10 giờ 20 phút tối thứ Hai. Nhiệt độ ngoài trời là -80C, mọi thứ chìm trong một màn sương giá buốt. Flores đang yên ấm nằm cạnh vợ thưởng thức một bộ phim gangster trắng đen trên ti vi. Sophia đã ngủ thiếp đi được một lúc, tiếng chuông điện thoại không thể quấy rầy giấc ngủ của bà. Thậm chí bà còn không hay biết khi chồng mình rời khỏi giường và mặc quần áo.

Flores xỏ chân vào chiếc quần bông, mặc áo thun có cổ, rồi khoác chiếc áo jacket đông dày sụ để chống lại màn sương giá dường đang xóa mờ mọi thứ kia. Ông phải nhanh chóng đi tới bệnh viện của Avechot, nơi ông đã làm việc với tư cách bác sĩ tâm thần suốt hơn bốn mươi trong sáu mươi hai năm tuổi đời. Trong quãng thời gian đó, chỉ có vài lần Flores bị lôi ra khỏi giường vì chuyện khẩn cấp, chủ yếu là việc của cảnh sát nhờ. Tại ngôi làng nhỏ trên núi nơi ông cư ngụ từ khi chào đời này, gần như chẳng có gì xảy ra sau khi mặt trời lặn,cứ như thể tại vĩ độ này, ngay đến bọn tội phạm cũng lựa chọn một cuộc sống đúng mực và thường xuyên ngồi nhà vào buổi tối. Chính vì thế, Flores tự hỏi chuyện gì đã khiến cho người ta cần đến sự có mặt của ông vào một giờ giấc bất thường như vậy.

Thông tin duy nhất mà cảnh sát cho ông biết qua điện thoại là một người đàn ông đã bị bắt sau một tai nạn đường bộ. Không hơn.”

…

- Sao các anh lại bắt giữ tôi? Cảnh sát muốn gì ở tôi? Tại sao tôi không được về?

Flores cố gắng huy động tất cả sự kiên nhẫn còn lại và đáp:

- Thanh tra Vogel, tối nay đã anh đã bị tai nạn.

- Tôi biết. - Vogel giận dữ đáp lại.

- Và anh chỉ có một mình trên xe, đúng không?

- Tôi đã nói với anh rồi.

Flores mở một ngăn kéo bàn, lấy ra chiếc gương nhỏ và đặt nó trước mặt Vogel. Ông ta tỏ ra không mấy chú ý.

- Và anh không hề hấn gì.

- Tôi ổn mà, anh còn hỏi tôi câu đó bao nhiêu lần nữa đây?

Flores chồm người tới trước.

- Vậy hãy giải thích với tôi một chuyện này. Nếu anh không hề hấn gì, thì chỗ máu trên quần áo anh là của ai?

  ', N'0034.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 8, 4, 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (46, N'
Thợ Săn Bóng Tối', CAST(132760 AS Decimal(18, 0)), N'Sau Tòa án linh hồn, Thợ săn bóng tối là phần tiếp theo trong xê ri trinh thám mang đậm chất tôn giáo của nhà văn người Italia Donato Carrisi.

Marcus, một linh mục ân giải, tỉnh dậy sau cơn hôn mê ở Prague và hoàn toàn mất trí nhớ. Bên giường bệnh, anh tìm thấy hai phong bì dán kín: một chiếc chứa vé tàu tới Roma cùng với lời cam kết ở đó, anh sẽ tìm lại được quá khứ của mình; trong phong bì còn lại chứa 20.000 euro cùng một hộ chiếu mang danh tính giả để Marcus làm lại cuộc đời. Vị linh mục sẽ lựa chọn cái nào?

Marcus quyết định vò nát chiếc phong bì chứa tiền và hộ chiếu giả để anh không có cơ hội đổi ý, và lựa chọn trở về Rome. Ở đó, anh được dẫn đến Vatican, và lần đầu tiên nhận ra khả năng nhìn thấu cái ác như đang diễn ra ngay trước mắt của bản thân mình. Sau khi được huấn luyện, Marcus sẵn sàng thực hiện nhiệm vụ của mình đúng vào lúc cả thành phố Rome đang lâm vào trạng thái hoảng loạn bởi một tên sát nhân hàng loạt. Hắn lựa chọn nạn nhân là các cặp đôi đang thân mật với nhau ở ngoại ô thành phố với cùng một cách thức gây án: nạn nhân nam nhận cái chết êm ái với một phát đạn vào gáy trong khi nạn nhân nữ phải chứng kiến cái chết của người tình, sau đó bị tra tấn dã man trước khi những nhát dao chí tử cướp đi mạng sống của họ.

Trong lúc Marcus thâm nhập các hiện trường án mạng để tìm kiếm manh mối, anh gặp lại Sandra - nữ cảnh sát chụp ảnh hiện trường. Cả hai nhanh chóng phát hiện ra kết quả khám nghiệm tử thi đã bị làm cho sai lệch bởi chính vị chuyên gia pháp y -   kẻ đứng đầu một giáo phái bí truyền và từng điều hành một bệnh viện dành cho tội phạm vị thành niên trong quá khứ.

Tuyến nhân vật đa dạng, các vụ án kép diễn ra liên tục với nhịp điệu điên cuồng cùng tình tiết truyện phức tạp tạo nên một tác phẩm cuốn hút và thể hiện tài năng phi thường của Donato Carrisi.

', N'0035.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 8, 4, 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (47, N'Những Con Quái Vật Đội Lốt Người Trong Thị Trấn', CAST(115000 AS Decimal(18, 0)), N'Sẽ thế nào nếu một ngày bạn chuyển đến một thị trấn tưởng chừng như không một hiểm nguy nào từ phố thị có thể đe dọa tới nơi đây nhưng thực chất hàng xóm của bạn là kẻ sát nhân hàng loạt?

Hay một ngày kinh hoàng bạn phát hiện mình bị cưỡng hi*p, tiền trong tài khoản ngân hàng không cánh mà bay, hoặc trong những trường hợp nghiêm trọng, bạn bị mất một hoặc vài cơ quan nội tạng?

Bạn nghĩ đó là những điều điên rồ và hoàn toàn là do trí tưởng tượng ư? Thật đáng buồn đó đều là những sự việc có thật đã từng xảy ra ở nơi “không có ai phải lo lắng nếu quên khóa cửa nhà”. Sau khi đọc cuốn sách này, bạn sẽ nhìn những người hàng xóm của mình bằng cặp mắt hoàn toàn mới… hoặc có lẽ là không bao giờ muốn nhìn họ nữa!

“Những con quái vật đội lốt người trong thị trấn” gồm các tình tiết hoàn toàn mới về TỘI ÁC CÓ THẬT từ khắp nơi trên thế giới và xảy ra ở các khoảng thời gian khác nhau. Trong tuyển tập này, tác giả đã vén bức màn bí mật để phơi bày sự thật trần trụi đằng sau những thị trấn nhỏ hoàn hảo này. Nó không chỉ giúp độc giả nhìn thấy những tội ác và những cá nhân phạm tội, mà còn cho thấy những ảnh hưởng t.iêu cực của chúng đối với cộng đồng. Ngay cả khi thời gian trôi qua thì dư âm của những hệ lụy đó vẫn tồn tại cho đến ngày nay.

Nếu bạn đã từng đọc những cuốn sách thể loại tội ác giả tưởng nhưng chưa đủ đô thì đây là sự lựa chọn hoàn hảo cho bạn. Một thế giới đầy chân thực sẽ đánh thức nỗi sợ hãi trong bạn và nuốt chửng lấy nó.

Trích lời nhận xét của Aphrodite Jones - tác giả viết sách thuộc thể loại tội ác có thật bán chạy nhất, về “Những con quái vật đội lốt người trong thị trấn”: “Những ai đặc biệt ghiền thể loại tội phạm sẽ đọc ngấu nghiến cuốn sách này. Chân dung của những kẻ tâm thần ấy sẽ mê hoặc và khiến tất cả những ai từng đọc nó đều phải khiếp sợ.”

', N'0036.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 11, 4, 17)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (48, N'Những Đồ Vật Có Linh Hồn', CAST(127000 AS Decimal(18, 0)), N'Những Đồ Vật Có Linh Hồn

“Những đồ vật tồn tại ở cõi nhân gian qua nhiều năm sẽ có thần linh hoặc linh hồn đến trú ngụ.” – Bạn có tin không?

“Cây dừa cao thật là cao

Đi qua không chào lộn cổ chết tươi…”

Những Đồ Vật Có Linh Hồn được viết theo góc nhìn của một người bình thường khi lần đầu biết đến thế giới tồn tại song song với cuộc sống của mình, bao gồm mười câu chuyện ngắn được tác giả biên soạn lại qua lời kể của những người từng có trải nghiệm tâm linh.

Trần sao âm vậy, những người chết đi ở thế giới này, họ sẽ lại sống ở thế giới khác, có khi là ngay bên cạnh chúng ta, vô tình hoặc hữu ý can thiệp vào cuộc sống mà chúng ta không biết. Thông qua những đồ vật bình dị, gần gũi, có khi là chiếc lược các bà các mẹ chải đầu, con búp bê vẫn ôm ngày nhỏ hay thậm chí là điếu thuốc hút dở trên tay… nhưng lại được đặt vào những bối cảnh ma mị.

Xuyên suốt mười câu chuyện là cảm giác chân thực, không cường điệu hay hù dọa nhưng lại khiến người đọc lạnh sống lưng, song không chỉ rùng rợn và ám ảnh, mỗi câu chuyện lại ẩn chứa một thông điệp đầy tích cực. Con người cũng có trăm nghìn loại, đâu phải ai cũng bị vong ám như ai, hãy cứ sống lạc quan, hướng tới những điều tối đẹp, tự nhiên sẽ được bình an.

Nếu muốn khám phá một thế giới tâm linh huyền bí đầy mới mẻ và sống động, cũng như đã từng yêu thích bộ truyện Giải Ngải Ký thì đừng bỏ qua Những Đồ Vật Có Linh Hồn, một siêu phẩm khác của tác giả Tống Ngọc nhé!

', N'0037.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 11, 4, 18)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (49, N'Animorphs Người Hóa Thú 5 - Thú Săn Mồi', CAST(52000 AS Decimal(18, 0)), N'Animorphs Người Hóa Thú 5 - Thú Săn Mồi

Tôi tên Marco. Tôi không thể cho bạn biết họ của tôi hay nơi tôi sống. Nói được tôi đã nói rồi, bạn cứ yên trí. Tôi rất muốn nói cho bạn biết, bởi vì một khi tôi nói ra được, tức là tôi đã không còn kẻ thù nào nữa. Tức là cuộc đời tôi đã trở lại như bình thường. Bề ngoài, Marco là một người vui vẻ, và hay làm người khác phát điên vì cái tật đâm bị thóc thọc bị gạo của mình. Nhưng sự thực, trong lòng cậu luôn ngổn ngang trăm mối. Mẹ mất, ba suy sụp, chỉ có cậu là chỗ dựa tinh thần còn lại. Là thành viên miễn cưỡng nhất của nhóm Người Hóa Thú, Marco lo sợ về điều sẽ đến với ba nếu một mai mình không trở về nữa. Sau nhiều phen chết hụt, cậu biết cậu sẽ phải sớm rời cuộc chiến, phải ưu tiên điều gì hơn cả. Nhưng cậu không ngờ, có những chuyện xảy ra khiến ưu tiên của cậu sắp phải thay đổi, mãi mãi..


', N'0038.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 70, 12, 4, 19)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (50, N'IT - Gã Hề Ma Quái - Tập 2', CAST(239000 AS Decimal(18, 0)), N'IT - Gã Hề Ma Quái - Tập 2

Derry, một thị trấn nhỏ ở Maine, một nơi quen thuộc đến ám ảnh. Chỉ ở Derry, ám ảnh là có thật.

Một câu chuyện về bảy người lớn trở lại quê hương để đối mặt với cơn ác mộng mà họ gặp phải khi còn là những cô cậu thanh thiếu niên. 28 năm trước, họ đã chiến đấu với một sinh vật độc ác chuyên ăn thịt trẻ em. Giờ đây, những đứa trẻ lại tiếp tục bị sát hại, và những ký ức dồn nén của họ về mùa hè kinh khủng ấy trở lại khi một lần nữa phải chiến đấu với con quái vật ẩn nấp trong cống rãnh ở Derry.

Cuộc điện thoại giữa đêm. Lời hứa thời thơ ấu. Những ký ức day dứt, điên cuồng và chực trào. Gã hề trong ống cống. Hành trình trở về quê hương của bảy đứa trẻ năm nào không phải để xoa dịu mà để đương đầu với cơn ác mộng

Về tác giả:

Nói đến thể loại văn học kinh dị, có lẽ không ai là không biết đến Stephen King, ông vua của thể loại này. Với hơn 350 triệu đầu sách được bán ra trên toàn thế giới với vô vàn giải thưởng lớn như National Medal of Art, British Fantasy Society Award… Stephen King đã trở thành ông hoàng sách kinh dị cũng như của các tác phẩm chuyển thể.

Trong suốt 50 năm cống hiến cho ngành văn học thế giới, Stephen King đã nhận được 3 giải thành tựu trọn đời cũng như được Tổng thống Barack Obama trao tặng Huân chương quốc gia vì nghệ thuật vào năm 2015.
', N'0039.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 9, 4, 20)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (51, N'
IT - Gã Hề Ma Quái - Tập 1', CAST(271000 AS Decimal(18, 0)), N'IT – Gã Hề Ma Quái - Tập 1

Cuộc điện thoại giữa đêm. Lời hứa thuở thơ ấu. Những ký ức day dứt, điên cuồng và chực trào. Gã hề trong ống cống.

Giờ đây, những đứa trẻ lại tiếp tục bị sát hại, và những ký ức dồn nén của họ về mùa hè kinh khủng ấy trở lại khi một lần nữa phải chiến đấu với con quái vật ẩn nấp trong cống rãnh ở Derry.

Hành trình trở về quên hương của những đứa trẻ năm nào không phải để xoa dịu mà để đương đầu với cơn ác mộng từng khiến họ phải trốn chạy.', N'0040.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 9, 4, 20)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (52, N'Hồi Ký Nghệ Sĩ Kim Cương: Sống Cho Người Sống Cho Mình', CAST(267000 AS Decimal(18, 0)), N'Hồi Ký Nghệ Sĩ Kim Cương: Sống Cho Người Sống Cho Mình (Bìa Mềm)
Vào giữa thập niên 1950, giới mộ điệu sân khấu kịch nghệ, cải lương miền Nam bùng nổ cái tên được giới Ký giả đề tặng “Kỳ Nữ” không ai khác chính là Nghệ Sĩ Kim Cương – Cô Đào Bi đa tài của nền “ẩm thực sân khấu” lúc bấy giờ và được đón nhận hết sức nồng nhiệt.

Vậy Kim Cương là ai?

“Tôi là ai? Không phải bây giờ là một Nghệ sĩ Nhân dân được nhiều người yêu mến, ở giai đoạn cuối đời không còn đứng trên sân khấu tôi mới tự hỏi mình như vậy, mà từ ngày còn thơ bé, vừa đủ trí khôn, tôi cũng đã nhiều lần tự hỏi.”

Nghệ sĩ Kim Cương | “Sống cho Người, Sống cho Mình”', N'0041.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 12, 5, 21)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (53, N'Hồi Ký Tiến Sĩ Lê Thẩm Dương - Kèm Chữ Ký In Của Tác Giả', CAST(280000 AS Decimal(18, 0)), N'Hồi Ký Tiến Sĩ Lê Thẩm Dương - Kèm Chữ Ký Tác Giả

Sau thành công vang dội của các cuốn sách Cảm xúc là kẻ thù số một của thành công, Người truyền cảm hứng, TS Lê Thẩm Dương sẽ cho ra mắt Hồi ký Tiến sĩ Lê Thẩm Dương vào ngày 8/3/2019. Báo Sinh Viên Việt Nam – Hoa Học Trò và Langmaster tiếp tục là các đơn vị phát hành cuốn sách này.

Nhà báo Nguyễn Tuấn Anh – Thư ký Tòa soạn báo Sinh Viên Việt Nam, Trưởng ban biên soạn các bộ sách của TS Lê Thẩm Dương, người chấp bút cuốn sách Hồi ký Tiến sĩ Lê Thẩm Dương cho biết đây sẽ là ấn phẩm đặc biệt nhất, được chờ đợi nhất trong số các cuốn sách của TS Lê Thẩm Dương đã từng được xuất bản: Nội dung cuốn sách được chuẩn bị công phu trong hơn một năm trời với hàng trăm cuộc phỏng vấn ở rất nhiều thời gian, địa điểm khác nhau. Nhiều nội dung được viết theo đơn đặt hàng của bạn đọc và người hâm mộ lần đầu tiên được TS Lê Thẩm Dương tiết lộ. Sách có bìa cứng, bìa áo và gần 300 trang ruột màu.

Hồi ký Tiến sĩ Lê Thẩm Dương được chia thành 8 phần: Tại sao tôi tên là Thẩm Dương; Bước ngoặt vào Nam; Định vị bản thân; Dạy con chưa bao giờ dễ; Thế nào là một phụ nữ đẹp; Những câu hỏi ai cũng muốn hỏi; Những cuộc phỏng vấn truyền cảm hứng; Phụ lục.

TS Lê Thẩm Dương giảng dạy tại Học viện Ngân hàng Hà Nội từ năm 1982, sau đó chuyển vào trường Đại học Ngân hàng TP.HCM. Hiện ông đang là Trưởng khoa Tài chính, trường ĐH Ngân hàng TP.HCM. Ông cũng là giảng viên chính chương trình cấp chứng chỉ hành nghề của Uỷ ban Chứng khoán Nhà nước, giảng viên thỉnh giảng của nhiều tập đoàn, trường Đại học, chương trình đào tạo. Ông là khách mời thường xuyên của nhiều diễn đàn cấp quốc gia và khu vực, nhiều chương trình truyền hình uy tín…TS Lê Thẩm Dương nổi tiếng trên mạng với những bài giảng “gây bão”.
', N'0042.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 12, 5, 22)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (54, N'Hồi ký 50 năm mê hát, năm mươi năm cải lương', CAST(60000 AS Decimal(18, 0)), N'Hồi Ký 50 Năm Mê Hát, Năm Mươi Năm Cải Lương là cuốn sách được viết bằng tâm huyết của học giả Vương Hồng Sển với nửa thế kỷ say mê nghệ thuật cải lương Nam Bộ với tất cả tấm lòng và trái tim. Lúc trước Vương Hồng Sển là một công chức, nhưng sau ông về hưu sớm để chuyên tâm về văn nghệ. Hồi Ký 50 Năm Mê Hát của Vương Hồng Sển in lần thứ nhất vào năm 1968. Cuốn sách này đặc biệt ở chỗ: tác giả không nói nhiều về đời tư mà đề cập đến lịch sử cải lương Nam Bộ từ ngày sơ khai đến thời hoàng kim, cực thịnh qua cái nhìn, cách sống của một con người yêu môn nghệ thuật này.', N'0043.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 50, 3, 5, 21)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (55, N'Hồi Ký Lý Quang Diệu - Câu Chuyện Singapore', CAST(290000 AS Decimal(18, 0)), N'Hồi Ký Lý Quang Diệu - Câu Chuyện Singapore

Lý Quang Diệu đã viết bộ hồi ký dài hai tập: Tập 1 - “Câu chuyện Singapore” - trình bày quan điểm của ông về lịch sử Singapore cho đến khi tách rời khỏi Malaysia năm 1965, và tập 2 - “Từ thế giới thứ ba vươn lên thứ nhất” - thuật lại sự chuyển đổi của Singapore để trở mình từ đất nước nghèo khổ thành một “Con rồng châu Á”.

Sau khi lãnh đạo đất nước Singapore độc lập ở cương vị Thủ tướng trong vòng 3 thập kỷ, năm 1990, Lý Quang Diệu lui về làm cố vấn và dành nhiều tâm sức thu thập tài liệu để viết nên bộ hồi ký này, nhìn lại toàn bộ cuộc đời ông.

Cuốn tập 1 - Câu chuyện Singapore - được bắt đầu viết từ năm 1994, và xuất bản lần đầu tiên năm 1998, kể lại những ký ức đáng tự hào của một chàng sinh viên giỏi trong  những ngày tháng du học trên đất Anh; từ câu chuyện tình yêu cảm động của ông với người vợ, đến những hoài bão của chàng thanh niên trẻ tuổi: những kết giao, những mối quan hệ, từng bước thâm nhập chính trường, học cách đối nhân xử thế, xây dựng đảng, lèo lái đất nước vượt qua những khó khăn.

Tập 1 kết thúc ở thời điểm Singapore tuyên bố độc lập năm 1965, sau khi tách ra từ Liên bang Malaysia, cũng là lúc đánh dấu một cột mốc quan trọng trong quá trình hình thành suy nghĩ, tính cách của ông Lý.

Những bước đi "bươn chải" của một nhà lãnh đạo năng động được tả lại trong cuốn sách cũng giúp người đọc có thêm một góc nhìn về tình hình thế giới thời Chiến tranh Lạnh, phong trào không liên kết, Mỹ, Anh, Nga, Trung Quốc và các cường quốc khác ở thời điểm còn đang "ẩn tàng" giữa hai bên màn sắt; về Liên minh châu Âu thời kỳ hình thành, về khối Thịnh vượng chung, và những liên minh, hiệp ước khác.

', N'0044.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 11, 5, 22)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (56, N'Hồi Ký Lý Quang Diệu - Tập 2: Từ Thế Giới Thứ Ba Vươn Lên Thứ Nhất (2017)', CAST(290000 AS Decimal(18, 0)), N'Lý Quang Diệu đã viết bộ hồi ký dài hai tập: Tập 1 - “Câu chuyện Singapore” - trình bày quan điểm của ông về lịch sử Singapore cho đến khi tách rời khỏi Malaysia năm 1965, và tập 2 - “Từ thế giới thứ ba vươn lên thứ nhất” - thuật lại sự chuyển đổi của Singapore để trở mình từ đất nước nghèo khổ thành một “Con rồng châu Á”.

Sau khi lãnh đạo đất nước Singapore độc lập ở cương vị Thủ tướng trong vòng 3 thập kỷ, năm 1990, Lý Quang Diệu lui về làm cố vấn và dành nhiều tâm sức thu thập tài liệu để viết nên bộ hồi ký này, nhìn lại toàn bộ cuộc đời ông.', N'0045.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 11, 5, 22)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (57, N'Hồi Ký Thương Tín - Một Đời Giông Bão', CAST(120000 AS Decimal(18, 0)), N'Những lần chết hụt và số phận lang bạt kỳ hồ của Thương Tín khiến nhà báo Đinh Thu Hiền - tác giả chấp bút quyển hồi ký - rơi nước mắt. Một cuốn sách đầy đủ nhất về cuộc đời và sự nghiệp lừng lẫy của Thương Tín, người đã đóng đinh trong lòng khán giả cả nước những năm 80 của thế kỷ trước bằng những vai diễn để đời: Sáu Tâm - trong phim Biệt động Sài Gòn, Thiếu tá Vọng - trong phim Ván bài lật ngửa, Tám Thương - trong phim Chiến trường chia nửa vầng trăng, Tướng cướp Bạch Hải Đường - trong phim SBC..... Với một nghệ sĩ đã từng đóng hơn 200 bộ phim, cùng với hàng trăm vở kịch diễn cùng những ngôi sao hàng đầu của Việt nam: Thẩm Thúy Hằng, Kim Cương,... nhưng lại có số phận rất "trớt quớt" (như cách nói của Thương Tín trong cuốn Hồi kí). Và, những vấp ngã, những sự thật đau lòng, những cuộc phưu lưu tình ái... đều nằm trong cuốn sách này.', N'0046.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 120, 10, 5, 35)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (58, N'Hồi Ký Tâm Si-Đa - Vượt Lên Cái Chết', CAST(66000 AS Decimal(18, 0)), N'Câu chuyện về chị Trương Thị Hồng Tâm - người phụ nữ được nhiều gọi bằng cái tên "Tâm si-đa" với những nỗ lực không mệt mỏi cho công tác tuyên truyền phòng chống HIV/AIDS và nuôi dưỡng, giáo dục những trẻ em có HIV/AIDS - từng được nhiều phương tiện truyền thông giới thiệu.

Song, trước khi đến với những trang đời tươi sáng, ấm áp ấy, người phụ nữ gầy gò này đã có tuổi thơ bị mất mát bởi gia đình ly tán, những đòn roi bạo hành, những tháng ngày vất vưởng nơi vỉa hè để rồi sa chân vào cạm bẫy...

Cuốn Hồi ký Tâm "si-đa" vượt lên cái chết như một cuốn phim quay chậm mà tác giả - cũng chính là nhân vật - đã phải "đánh vật" với chính những hồi ức đau đớn, khắc khoải của mình trong những đêm "không thể ngủ được, giật mình thức dậy, bật chiếc máy tính "cổ lỗ sĩ", viết một lèo không chữ hoa, không dấu chấm, dấu phẩy, nhớ đâu viết đó". Chị cho biết chỉ học đến "đệ tam", tức khoảng lớp 10 hiện nay, chuyện đánh máy vi tính là chuyện... xa lạ, lại không hay viết lách nên cuốn sách được bắt đầu viết từ năm 2004 đến nay mới hoàn thành.

Bức tranh cuộc đời một con người với nhiều mảng màu sáng tối đến với bạn đọc qua từng phần sách: Lạc mất tuổi thơ, Đường đời chông chênh, Cuộc đời sang trang mới, Những đứa trẻ.

', N'0047.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 5, 36)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (59, N'Hồi Ký Alex Ferguson (Tái Bản 2019)', CAST(175000 AS Decimal(18, 0)), N'Hồi Ký Alex Ferguson (Tái Bản 2019)

Hồi ký Ferguson là câu chuyện đấy ấn tượng về con người được thừa nhận rộng rãi là huấn luyện viên xuất sắc nhất trong lịch sử bóng đá Liên hiệp Anh.

 Cuốn sách đầy ắp các câu chuyện thú vị và những quan điểm thẳng thắn, không khoan nhượng, theo đó câu chuyện của vị HLV tài ba này bắt đầu từ Govan, một thị trấn đóng tàu tại Glasgow, trải dài qua một sự nghiệp huấn luyện vô cùng lừng lẫy, với cúp châu Âu lần đầu tiên cho CLB Aberdeen và 27 năm thành công với Manchester United.

 Trong một phần tư thế kỷ tại Manchester United đã có vô số thay đổi khi CLB bóng đá này phát triển thành một thế lực thể thao mang tầm thế giới. Tuy nhiên, vẫn có những thứ không hề thay đổi, đó là vị HLV trưởng Alex Ferguson, chất lượng hàng đầu của đội bóng, cùng hàng loạt thành công trong thi đấu, nổi bật là việc đoạt chức vô địch Champions League lần thứ hai năm 2008 và chức vô địch Premier League năm 2013.

 Chính bởi tầm nhìn xa trông rộng, năng lượng dồi dào và những kỹ năng huấn luyện tuyệt vời mà Sir Alex đã có thể xây dựng được các đội hình thành công của ông tại MU, cả khi thi đấu lẫn khi tập luyện. Trong tác phẩm này, bằng phong cách hấp dẫn và sâu sắc, Sir Alex Ferguson kể lại cho chúng ta câu chuyện về việc ông đã đào tạo được một đội ngũ tài năng, gồm những chàng trai như Ryan Giggs, David Beckham, Nicky Butt, Paul Scholes và anh em nhà Neville như thế nào.

 Là một HLV với kỹ năng huấn luyện xuất chúng, Sir Alex Ferguson luôn thể hiện sự chăm sóc, động viên nhưng vẫn rất nghiêm khắc, cứng rắn khi làm việc với những danh thủ hàng đầu tại MU như Ryan Giggs, Roy Keane, Eric Cantona và Ruud van Nistelrooy, hay khi đối xử với những ngôi sao tầm thế giới như Cristiano Ronaldo và David Beckham, những người xem ông như một người cha tinh thần.

 Ngoài ra, cuốn hồi ký còn dành nhiều trang nói về mối “thâm thù” trong bóng đá giữa Manchester United và những đại kình địch như Liverpool, Arsenal, Chelsea hay gần đây là Manchester City. Với nét hóm hỉnh, đôi khi cay độc, tác giả cũng kể về mối quan hệ đầy cạnh tranh và sóng gió với những đồng nghiệp nổi danh như Arsène Wenger và José Mourinho.

 Tuy cả tâm lý huấn luyện và chiến lược bóng đá đỉnh cao đều là những vấn đề chuyên môn không dễ giải thích, nhưng khó ai có thể trình bày chúng với ngôn ngữ trong sáng, thú vị và giản dị đối với độc giả thông thường như tác giả cuốn hồi ký này.

 Ngoài bóng đá, Sir Alex Ferguson có cuộc sống gia đình rất đầm ấm và hạnh phúc, ông cũng duy trì nhiều sở thích khác như xem đua ngựa, đọc sách v.v… Cuộc sống của vị HLV tài ba này quả thật vô cùng hấp dẫn và phong phú.

 Hồi ký Alex Ferguson là cuốn sách chứa đựng nhiều bất ngờ được hé lộ, được viết vô cùng hấp dẫn, và trên hết, cực kỳ truyền cảm hứng cho người đọc.
', N'0048.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 200, 3, 5, 37)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (60, N'CR7 - Hành Trình Lên Đỉnh Thế Giới', CAST(153200 AS Decimal(18, 0)), N'Khi sinh ra, có 4 điều mà chúng ta không có quyền được lựa chọn là: cha, mẹ, anh chị em và nơi được sinh ra. Và còn một điều nữa là đam mê của chúng ta, thứ luôn tạo động lực giúp ta hướng về phía trước. Ngoài ra, tất cả là không thực sự cần thiết.

 Trước khi bàn tới đam mê của một Cristiano Ronaldo đang ở trên đỉnh cao danh vọng, điều gì xứng đáng với những trang đầu tiên của cuốn sách này: người mẹ, gia đình hay nơi mà anh ấy đã được sinh ra? Câu trả lời nhất định là Dolores Aveiro, người mẹ vĩ đại hiện vẫn đang sống cùng và chăm chút cho cậu con trai Junior của Ronaldo như một người mẹ chăm con, chứ không phải bà nội chăm cháu. Cách đây hơn 20 năm, bà đã dằn lòng cho phép cậu con trai 12 tuổi của mình rời miền quê nghèo Madeira để theo đuổi đam mê trở thành một cầu thủ bóng đá chuyên nghiệp. Một quyết định xé lòng, nhưng bà chấp nhận, bởi bà tin đó là lựa chọn tốt nhất, thậm chí có thể là duy nhất. Hoặc cũng có thể vì bà đã từng phải trải qua điều tương tự. Người ta thường nói, trong cuộc đời, những đức tính và khiếm khuyết có thể được lặp lại từ thế hệ này qua thế hệ khác. Năm xưa, cha của bà cũng đã ra đi, mặc dù theo một cách khác, trong chiếc vali ngày xưa ấy không có niềm thương yêu - thứ mà bà đã ních chặt trong vali của cậu con trai trước chuyến bay đến Lisbon

----

Khi lên 8 hay 9, Ronaldo rất thích được ở bên cha. Nhiều đêm, đồng hồ đã chỉ 11 giờ và mắt đã díu lại nhưng anh không thể nào yên tâm lên giường khi không có cha bên cạnh. Anh sẽ cùng với chị gái hay một vài người bạn đến quán bar để kéo ông ấy về, mặc cho ông không chịu. Anh cũng rất thích ở bên cạnh ông tại một góc nào đó trong quán bar. Chỉ đơn giản là ngồi yên lặng và uống. Và không gây ra bất kì rắc rối nào.

Khi ông chịu về nhà cũng là lúc mà ông cần đến bờ vai của cậu con trai. Ông đã quá say rồi.

Ở độ tuổi còn rất trẻ, Ronaldo dần dần phải gánh vác vai trò của người cha trong gia đình - thứ mà cha của anh bỏ bê vì những cơn say.

“Tôi chỉ muốn con trai tôi được hạnh phúc và thành công.” Đó là câu nói mà anh đã nghe thấy ở quán bar. “Tôi muốn sống ở thế giới của tôi. Và thế giới của nó do nó quyết định.” Thực tế, ông không thích chuyển đến Manchester khi Cristiano thi đấu ở đó, và cũng chỉ đến thăm một vài lần.
', N'0049.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 200, 3, 5, 38)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (61, N'Lionel Messi - Hành Trình Của Một Thiên Tài', CAST(261000 AS Decimal(18, 0)), N'Đêm Roma, 27/5/2009. Xavi Hernandez hơi ngập ngừng khi có bóng chếch sang phía phải trước vòng cấm Man United, rồi quyết định tung ra một đường câu bổng trác tuyệt, loại bỏ hoàn toàn Rio Ferdinand. Điểm đến của trái bóng là cú bật nhảy dường như đã hết cỡ của “số 10” mới bên phía Barca, người tiếp quản vai trò và tầm ảnh hưởng của huyền thoại Ronaldinho tại Nou Camp. Bóng từ đầu cầu thủ nhỏ thó ấy bay vào góc xa khiến thủ thành Van der Sar chỉ còn biết giơ tay lấy lệ rồi ngước nhìn mành lưới rung. Cầu trường bùng nổ. Một chiếc giày tuột ra khỏi bàn chân. Rồi nó được nhặt lên, vung vẩy cùng màn ăn mừng. Các camera ở khu vực cuối sân của Man United đã may mắn bắt được khoảnh khắc ấy. Khoảnh khắc một thiên tài tuyên bố với cả thế giới rằng mình sẽ sớm bước vào ngôi đền của những huyền thoại. Anh là Lionel Messi.

Không ngoa khi nói rằng đó là pha bóng đưa tên tuổi Messi lên một hành trình mới, mà điểm nhấn là những cuộc đua danh hiệu và thành tích với Cristiano Ronaldo, người sau trận chung kết Champions League năm đó đã chuyển đến đầu quân cho Real Madrid.


Đêm Roma, 27/5/2009. Xavi Hernandez hơi ngập ngừng khi có bóng chếch sang phía phải trước vòng cấm Man United, rồi quyết định tung ra một đường câu bổng trác tuyệt, loại bỏ hoàn toàn Rio Ferdinand. Điểm đến của trái bóng là cú bật nhảy dường như đã hết cỡ của “số 10” mới bên phía Barca, người tiếp quản vai trò và tầm ảnh hưởng của huyền thoại Ronaldinho tại Nou Camp. Bóng từ đầu cầu thủ nhỏ thó ấy bay vào góc xa khiến thủ thành Van der Sar chỉ còn biết giơ tay lấy lệ rồi ngước nhìn mành lưới rung. Cầu trường bùng nổ. Một chiếc giày tuột ra khỏi bàn chân. Rồi nó được nhặt lên, vung vẩy cùng màn ăn mừng. Các camera ở khu vực cuối sân của Man United đã may mắn bắt được khoảnh khắc ấy. Khoảnh khắc một thiên tài tuyên bố với cả thế giới rằng mình sẽ sớm bước vào ngôi đền của những huyền thoại. Anh là Lionel Messi.

Không ngoa khi nói rằng đó là pha bóng đưa tên tuổi Messi lên một hành trình mới, mà điểm nhấn là những cuộc đua danh hiệu và thành tích với Cristiano Ronaldo, người sau trận chung kết Champions League năm đó đã chuyển đến đầu quân cho Real Madrid.', N'0050.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 200, 3, 5, 38)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (62, N'Tủ Sách Nhất Nghệ Tinh - Chuyên Ngành Cơ Khí', CAST(660000 AS Decimal(18, 0)), N'Tủ Sách Nhất Nghệ Tinh - Chuyên Ngành Cơ Khí gồm 8 chương lý thuyết, 13 phần thực tập và thư mục thuật ngữ chuyên môn kỹ thuật chi tiết nhằm phục vụ cho việc đào tạo và nâng cao trình độ trong nghề cơ khí.', N'0051.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 500, 3, 6, 39)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (63, N'Ứng Dụng CAF Và SOLIDWORKS Tính Toán, Thiết Kế An Toàn Trong Cơ Khí', CAST(160000 AS Decimal(18, 0)), N'Ứng Dụng CAF Và SOLIDWORKS Tính Toán, Thiết Kế An Toàn Trong Cơ Khí', N'0052.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 500, 9, 6, 39)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (64, N'Từ Điển Cơ Khí Và Máy Xây Dựng Anh - Việt', CAST(118000 AS Decimal(18, 0)), N'TỪ ĐIỂN CƠ KHÍ VÀ MÁY XÂY DỰNG

ANH - VIỆT

ENGLISH - VIETNAMESE

MECHANICAL AND CONSTRUCTION MACHINE DICTIONARY

Cuốn từ điển cơ khí và máy xây dựng Anh - Việt gồm khoảng 28000 thuật ngữ thuộc các lĩnh vực liên quan đến chi tiết máy, nguyên lý cắt gọt, máy công cụ, cơ khí chế tạo, cơ khí động lực, máy dùng cho thi công công trì

Trong quá trình biên soạn, tác giả cố gắng chọn những từ tiếng Việt và nghĩa tương đương của tiếng Anh phù hợp nhất, làm cho các thuật ngữ, khái niệm chính xác, ngắn gọn và có hệ thống.

Các đơn vị mục từ được sắp xếp theo thứ tự chữ cái tiếng Anh. Tuy nhiên, do một khái niệm trong tiếng Anh có thể chuyển dịch thành nhiều khái niệm tương đương trong tiếng Việt, nên tác giả trình bày tất cả những khái niệm đó bằng tiếng Việt và ngược lại để bạn đọc lựa chọn sử dụng trong từng trường hợp cụ thể.

Tuy tác giả đã hết sức cố gắng, nhưng do gặp nhiều khó khăn trong việc chuẩn hóa tiếng Việt trong các ngành cơ khí và máy xây dựng, hơn nữa khoa học công nghệ của nước ta còn non trẻ và đang trên đường phát triển, nên cuốn từ điển này không thể tránh khỏi những sai sót nhất định, tác giả mong nhận được ý kiến nhận xét của bạn đọc để lần xuất bản sau tốt hơn.
', N'0053.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 225, 9, 6, 40)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (65, N'Cẩm Nang Cơ Khí', CAST(702000 AS Decimal(18, 0)), N'Quyển sổ tay Cẩm Nang Cơ Khí nguyên bản tiếng Đức có một lịch sử khá lâu đời, được xuất bản ngay sau thế chiến thứ hai (sau 1945) để bổ sung cho quyển Chuyên Ngành Cơ Khí, đến nay đã hơn 70 năm và thường xuyên được cập nhật hóa. Đối tượng của quyển sách là:

- Thực tập sinh/Sinh viên/Học viên trong ngành cơ khí và gia công

- Quản đốc và kỹ thuật viên

- Người làm việc và thực hành Cơ Khí trong thủ công và công nghiệp

- Người thiết kế sản phẩm kỹ thuật

Nội dung quyển sách bao gồm các bảng tính, công thức, thuật ngữ và tiêu chuẩn được sắp xếp trong 7 chương để người sử dụng có thể tra cứu dễ dàng. Đặc biệt là thuật ngữ được lựa chọn kỹ lưỡng tuân theo Tiêu chuẩn Việt Nam (TCVN) hay từ giáo trình/tài liệu giảng dạy cũng như ngoài thị trường kinh doanh hoặc trong hãng xưởng để diễn tả các thuật ngữ tương đương trong các bộ tiêu chuẩn của Đức (DIN, VDI, VDMA) và quốc tế (ISO/EN/IEC) cũng như luật lệ và quy định về an toàn lao động, bảo vệ môi trường và đảm bảo chất lượng. Tất cả các tài liệu nói trên đều được sắp xếp thành danh sách theo hệ thống để người đọc dễ dàng theo dõi. Đây là lần đầu tiên trong tủ sách Nhất Nghệ Tĩnh, chúng tôi cố gắng đưa vào thuật ngữ Việt Nam trong TCVN để độc giả làm quen dần trong việc chuẩn hóa thuật ngữ cho các ngành kỹ thuật.
', N'0054.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 500, 3, 6, 39)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (66, N'Giáo Trình Thực Hành Thiết Kế Cơ Khí Và Mỹ Thuật Công Nghiệp Với Solidworks', CAST(95000 AS Decimal(18, 0)), N'Sự phát triển nhanh chóng khoa học kỹ thuật nhất là lĩnh vực tin học đã hỗ trợ rất nhiều ngành nghề. Trong lĩnh vực thiết kế cơ khí, sự ra đời máy công cụ điều khiển bằng chương trình số với sự trợ giúp của máy tính (CNC) là một bước đột phá trong ngành cơ khí chế tạo. Hầu như các khu công nghiệp ở Việt Nam đều có các máy CNC để phục vụ sản xuất, bao gồm nhiều chủng loại loại máy khác nhau như máy phay, tiện, bào. mài, khoan... với số trục điều khiển từ 2 đến 3, 4, 5. Để khai thác và sử dụng thành thạo các chương trình CAD-CAM.', N'0055.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 200, 9, 6, 41)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (67, N'Cơ Sở Lý Thuyết Quá Trình Đông Đặc Và Một Số ứng Dụng', CAST(52000 AS Decimal(18, 0)), N'Nghiên cứu các quá trình đông đặc là nhằm xác định nguyên nhana hình thành các khuyết tật như rỗ co, lõm co, xốp, nứt nóng...

', N'0056.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 9, 6, 42)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (68, N'Thiết Kế Cơ Khí - Điện Tử Và Mô Phỏng Với CATIA &VISUAL NASTRAN', CAST(68000 AS Decimal(18, 0)), N'Thiết Kế Cơ Khí - Điện Tử Và Mô Phỏng Với CATIA &VISUAL NASTRAN

Thiết Kế Cơ Khí - Điện Tử Và Mô Phỏng Với CATIA &VISUAL NASTRAN là một chương trình rất hữu ích và trong thiết kế cơ khí, lắp ráp và phân tích chuyển động mô hình. Các vấn đề và nhiều chức năng khác của Catia như: Tạo chuyển động cho mô hình, lắp ráp và render xuất thành phim... sẽ được đề cập và trình bày trong lần xuất bản sau.Nội dung sách gồm 19 bài tập thực hành thiết kế chi tiết cơ khí, tạo bản vẽ kỹ thuật, ghi kích thước hình chiếu và thực hiện in ấn được trình bày từ dễ đến khó, sử dụng các lệnh đơn giản cho đến nâng cao trong Catia. Sau đó, tiến hành mô phỏng lắp ráp các chi tiết đã vẽ với Visual Nastran qua bài tập:

1. Bài tập 1: Làm quen giao diện và các công cụ

2. Bài tập 2: Vẽ chi tiết đơn giản

3. Bài tập 3: Vẽ khối cơ bản

4. Bài tập 4: Vẽ trục

5. Bài tập 5: Vẽ ròng rọc.
', N'0057.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 170, 6, 6, 39)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (69, N'Phần Mềm Thiết Kế Greatcad 2D (Tiếng Việt)', CAST(1275000 AS Decimal(18, 0)), N'Phần mềm thiết kế kỹ thuật 2D chính xác, tiện lợi - giao diện tiếng Việt thân thiện

     - Tiết kiệm, giảm thời  gian phát thảo vẽ, thiết kế sản phẩm 2D, bản vẽ.

     - Phần mềm giá rẻ, dễ dàng sử dụng không mất thời gian học câu lệnh phức tạp.

     - Thương mại các sản phẩm thiết kế trên hệ sinh thái thiết kế iSolid.com.vn', N'0058.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 200, 15, 6, 43)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (70, N'Phần Mềm Thiết Kế Isolid 3D (Tiếng Anh)', CAST(2125000 AS Decimal(18, 0)), N'Phần mềm thiết kế iSolid 3D phiên bản tiêu chuẩn – giao diện tiếng Anh được xây dựng và phát triển bởi Công Ty TNHH Thế giới CAD là phần mềm vẽ 3D. Phần mềm vẽ chuyên dụng cho phép người dùng tạo các mô hình 3D trên máy vi tính,..

Phần mềm thiết kế iSolid 3D phiên bản tiêu chuẩn – giao diện tiếng Anh tương tự Phần mềm thiết kế iSolid, đặc biệt bổ sung các chức năng lắp ráp chi tiết, cụm chi tiết thành một sản phẩm hoàn chỉnh. Các hàm vẽ 3D: Tạo khối, Quay quanh trục, Quét theo đường dẫn, Tạo khối theo tầng, Cắt thể tích, Cắt quay quanh trục, Cắt theo đường dẫn, Cắt theo tầng, Vát cạnh, Gọt cạnh xiên, Gọt cạnh cong (Bo góc), Làm rỗng thể tích,tải về, tải lên..với kỹ thuật vẽ nhanh, chính xác, không đòi hỏi câu lệnh phức tạp. Giao diện thiết kế mạnh mẽ sẽ giúp cho người dùng tiết kiệm được thời gian, phát thảo nhanh nội dung và tinh chỉnh một cách dễ dàng. Các thanh công cụ (menu), các hướng dẫn, thông báo đều hiển thị tiếng Anh.. Người dùng (user) dù không chuyên về thiết kế vẫn có thể dễ dàng sử dụng. Các hàm vẽ 2D:  Vẽ điểm, đường thẳng, đường nét, hình chữ nhật, hình tròn, spline, cung tròn, hình lục giác, xác định khoảng cách, lấy đối xứng, tạo đường biên,..

Bổ sung các hàm vẽ: Vẽ tuyến tính, vẽ theo đường tròn, chèn hình ảnh, vật liệu, màu sắc vào vùng diện tích,..

Các chức năng: tạo mới, lưu, lưu với tên gọi khác,.. 

Tính năng phục hồi thao tác vẽ trước đó hoặc trở về thời điểm vẽ sau.  

Phần mềm vẽ thiết kế trong các lĩnh vực giáo dục, gia dụng, mỹ thuật, công nghiệp, kiến trúc, cơ khí, xây dựng, thời trang, điện - điện tử,..
Phần mềm thiết kế iSolid 3D là phần mềm đa năng trong vẽ 2D - 3D, người dùng có thể vẽ bất kỳ sản phẩm 2D - 3D bằng cách kéo thả chuột mà không dùng lệnh phức tạp.

Bên trong hộp phần mềm gồm: thẻ bản quyền, đĩa CD cài đặt, sách hướng dẫn sử dụng.
', N'0059.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 15, 6, 43)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (71, N'Giáo Trình Thực Hành Thiết Kế Kiến Trúc Với Revit (Dùng Cho Các Phiên Bản 2018 - 2017)', CAST(110000 AS Decimal(18, 0)), N'Chào mừng các bạn đến với tủ sách STK qua chuyên đề “GIÁO TRÌNH THỰC HÀNH THIẾT KẾ KIẾN TRÚC VỚI REVIT”. Đây là tài liệu trong bộ sách hướng dẫn sử dụng Revit phiên bản 2017 với các tiêu chí mà các phần mềm kiến trúc cần có như: Đơn giản - Linh hoạt - Khả thi - Nhiều tiện ích - Làm việc theo BIM - Liên kết với nhiều chương trình khác.

1. THIẾT KẾ KIẾN TRÚC VỚI REVIT

2. GIÁO TRÌNH THỰC HÀNH THIẾT KẾ KIẾN TRÚC VỚI REVIT

3. THIẾT KẾ KIẾN TRÚC - REVIT TOÀN TẬP

4. THIẾT KẾ KIẾN TRÚC VỚI REVIT MEP

5. THIẾT KẾ ĐIỆN HỘP CHUẨN - CÁC CÔNG CỤ HỖ TRỢ', N'0060.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 200, 9, 6, 41)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (72, N'Vũ Trụ Từ Hư Không', CAST(123000 AS Decimal(18, 0)), N'Tại sao tồn tại một cái gì đó thay vì không có gì?

Lawrence M. Krauss - tác giả bán chạy nhất và nhà vật lý nổi tiếng đã đưa ra một quan điểm khác biệt về cách mọi thứ tồn tại: "Vũ trụ đến từ đâu? Cái gì ở đó trước đó? Tương lai sẽ mang đến điều gì? Và cuối cùng, tại sao tồn tại một cái gì đó thay vì không có gì?"

Đặt tên cho phụ đề của cuốn sách bằng một câu hỏi “kinh điển”, “Tại sao tồn tại một cái gì đó thay vì không có gì?”, Krauss có tham vọng kết nối những phát hiện lớn lao của khoa học hiện đại với một câu hỏi đã gây sự tò mò cho các nhà thần học, triết gia, các nhà triết học tự nhiên và cả công chúng trong lịch sử.

Cách đặt vấn đề và trình bày của Krauss luôn thể hiện chủ nghĩa mà ông theo đuổi và tôn thờ, chủ nghĩa “nghi ngờ một cách có khoa học”. Nhưng không chỉ dừng lại ở những nghi ngờ “tại sao”, trong lời mở đầu của cuốn sách, tác giả cũng đã lý giải rằng thực ra câu hỏi đơn thuần “tại sao” không hoàn toàn là một câu hỏi hợp lý, vì nó luôn bao hàm cả mục tiêu và luôn khiến người ta không thỏa mãn. Trong khoa học, khi ai đó muốn hỏi “tại sao”, thì thực ra người đó đang muốn trả lời câu hỏi “bằng cách nào” hay “như thế nào”. Đây chính là cách Krauss đã bắt đầu triển khai các ý tưởng của cuốn sách.

Vũ trụ từ hư không có một kết cấu uyển chuyển, đủ để dẫn dắt người đọc phổ thông tiệm cận với khoa học về thiên văn. Krauss đã bắt đầu câu chuyện cuốn hút của mình bằng chương giải thích ngắn gọn về sự ra đời của thuyết Big Bang, giải thích cặn kẽ về sự giãn nở của vũ trụ với những mô tả về nghiên cứu của Edwin Hubble và cách xác định tuổi của vũ trụ. Câu chuyện được tiếp tục với những lý giải về việc tìm ra bức xạ nền vi ba – bằng chứng còn sót lại của Big Bang, rồi cùng các nhà vật lý đến với những nghiên cứu “cân vũ trụ” để cố gắng lý giải cho câu hỏi “vũ trụ phẳng”, “vũ trụ đóng”, hay “vũ trụ mở”…

Qua 11 chương sách, tác giả đã đề cập đến cả một hành trình khám phá vũ trụ đầy ấn tượng mà loài người thực hiện trong lịch sử tiến hóa của mình.

Tạp chí khoa học Nature danh tiếng từng ca ngợi cuốn sách, coi Krauss là người kể chuyện vũ trụ duyên dáng nhất. Clinton Richard Dawkins, một cựu giáo sư Đại học Oxford, một nhà sinh học tiến hóa đã so sánh thành công của cuốn sách này ngang với tác phẩm kinh điển Nguồn gốc các loài của Charles Darwin.

Tất cả những ai quan tâm đến Vật lý học, Vũ trụ học, những ai tò mò Vũ trụ của chúng ta đã bắt đầu như thế nào, và kết thúc ra sao đều nên đọc cuốn sách này.

', N'0061.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 200, 9, 7, 44)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (73, N'Mọi Điều Bạn Cần Biết Về Vũ Trụ', CAST(227000 AS Decimal(18, 0)), N'VŨ TRỤ

Từ Trái Đất tới những nơi xa xôi nhất trong vũ trụ, ở đây bạn sẽ tìm thấy mọi thứ bạn cần (và xa hơn nữa) về vũ trụ đầy ngạc nhiên của chúng ta. Bắt đầu với những ngôi sao và hành tinh mà mắt thường có thể quan sát được, cuốn sách tiên phong này sẽ đưa bạn qua một hành trình trong không gian không thể nào quên. Trên hành trình này bạn sẽ gặp những kỳ quan của Hệ Mặt Trời, những đột phá thiên văn quan trọng, những chuyến bay vào không gian có người lái đầu tiên, cuộc hạ cánh xuống Mặt Trăng, những chòm sao chính, những thiên hà lân cận và xa xôi, những lỗ đen, vật chất tối, những ngôi sao lùn đỏ và chuẩn tinh. Bạn sẽ biết về Vụ Nổ Lớn, cân nhắc về tương lai của vũ trụ, và khám phá xem chúng ta đang ở gần đến đâu câu trả lời cho câu hỏi vĩnh cửu: Chúng ta có đơn độc hay không?

Mọi thứ bạn cần biết về các hành tinh, ngôi sao và tất cả những gì ngoài kia.
Đầy ắp những hình minh họa, sơ đồ và dòng thời gian đẹp mắt
Thông tin dễ tiếp cận và cập nhật, bao gồm cả những khám phá mới nhất về các ngoại hành tinh.

', N'0062.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 100, 9, 7, 44)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (74, N'Vũ Trụ Song Song', CAST(90000 AS Decimal(18, 0)), N'Tác giả hai cuốn sách bán chạy nhất, The Elegant Universe và The Fabric of the Cosmos, cho ra đời cuốn sách xử lý vấn đề bao quát nhất: Vũ trụ của chúng ta có phải là vũ trụ duy nhất?', N'0063.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 100, 13, 7, 44)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (75, N'Bức Tranh Toàn Cảnh - Nguồn Gốc Của Sự Sống, Của Nghĩa Lý Và Của Chính Vũ Trụ', CAST(228000 AS Decimal(18, 0)), N'Bức Tranh Toàn Cảnh - Nguồn Gốc Của Sự Sống, Của Nghĩa Lý Và Của Chính Vũ Trụ

Sự sống nảy sinh như thế nào? Làm sao một ""phép mầu"" như thế lại là kết quả của những tương tác hóa học, được vận hành theo một số ít ỏi các định luật vật lý?

Liệu con người chúng ta có quan trọng hay không, khi chỉ là một loài sinh vật nhỏ bé sống trên một hành tinh trôi nổi giữa vũ trụ bao la?

Thế giới này diễn tiến theo một con đường tất định hay bất định? Có một Thượng đế toàn năng thiết kế và sắp đặt mọi thứ trên đời, hay thế giới tự nhiên chỉ đơn thuần dựa vào một cơ chế đơn giản: chọn lọc và tiến hóa?

Trên đây chỉ là một vài trong vô vàn những câu hỏi làm nên BỨC TRANH TOÀN CẢNH.

Là nhà vật lý lý thuyết hàng đầu của thời đại, SEAN CARROLL đủ thẩm quyền để bàn luận về những vấn đề hệ trọng nhất trong vật lý cũng như trong tự nhiên. BỨC TRANH TOÀN CẢNH của ông là một bức tranh nhìn rộng chứ không nhìn quá sâu, nhìn bao quát thay vì đi vào chi tiết; một bức tranh như còn đang được vẽ tiếp, đang hiện dần lên. Hành trình truy tầm thực tại nền, hay một lý thuyết tối hậu, hãy còn tiếp diễn. Thành tựu tri thức của nhân loại thật đáng được tán dương, nhưng theo quan điểm của SEAN CARROLL, mỗi người chúng ta phải luôn sẵn sàng để cập nhật ""niềm tin"" của mình mỗi khi có dữ liệu mới.
', N'0064.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 200, 15, 7, 45)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (76, N'Combo Sách Lược Sử Thời Gian Và Vũ Trụ Trong Vỏ Hạt Dẻ (Bộ 2 Cuốn)', CAST(171000 AS Decimal(18, 0)), N'Combo Sách Lược Sử Thời Gian và Vũ Trụ Trong Vỏ Hạt Dẻ (Bộ 2 Cuốn)

1. Lược Sử Thời Gian

Tò mò là một trong những phẩm chất bẩm sinh vô cùng quan trọng của chúng ta, và những vấn đề như Bản chất của vũ trụ là gì? Vũ trụ từ đâu ra? Chúng ta đến từ đâu và đóng vai trò gì trong vũ trụ? Có giới hạn cho sự nhận thức của con người không?... là những câu hỏi mà biết bao nhiêu thế hệ con người đã đặt ra dưới dạng này hoặc dạng khác từ khi bắt đầu biết nhận thức và suy ngẫm về thế giới này. Tất cả những vấn đề được nên ra trong tác phẩm Lược sử thời gian như Vũ trụ giãn nở, Lỗ đen, Nguồn gốc và số phận của vũ trụ, Mũi tên thời gian… đều là mong muốn của tác giả để phần nào trả lời được những câu hỏi đó, và hướng tới việc giải thích các giai đoạn lịch sử của toàn bộ vũ trụ.
Bằng ngôn ngữ sáng sủa, lập luận chặt chẽ rất thuyết phục, và sự dí dỏm rất riêng, tác giả Stephen Hawking đặt ra cho mình nhiệm vụ diễn tả những điều phức tạp nhất trong vật lý học một cách dễ hiểu đối với mọi người, không dùng bất kỳ công thức toán học nào, trừ phương trình nổi tiếng của Einstein: E = mc2

2. Vũ Trụ Trong Vỏ Hạt Dẻ

Stephen Hawking, một trong những nhà khoa học có ảnh hưởng nhất trong thời đại chúng ta, là một biểu tượng trí tuệ, được biết đến không chỉ vì sự mạo hiểm trong các ý tưởng, mà còn vì sự rõ ràng và hóm hỉnh mà ông thể hiện. Trong tác phẩm này, Hawking đưa chúng ta đến đỉnh cao của vật lý lý thuyết, nơi mà sự thật thường xa lạ hơn là hư cấu, để giải thích theo từ ngữ bình dân về các nguyên tắc kiểm soát vũ trụ của chúng ta.
Giống như nhiều người trong cộng đồng vật lý lý thuyết, Giáo sư Hawking luôn tìm cách khám phá chén thánh của khoa học – Lý thuyết về mọi thứ. Với phong cách dễ tiếp cận và dí dỏm của mình, ông hướng dẫn chúng ta tiến từng bước một để khám phá bí mật của vũ trụ – từ siêu trọng lực đến siêu đối xứng, từ lý thuyết lượng tử đến lý thuyết M, từ phép toàn ảnh đến tính đối ngẫu. Và ông đưa chúng ta đến hậu trường của một trong những cuộc phiêu lưu trí tuệ thú vị nhất của ông khi tìm cách “kết hợp Lý thuyết tương đối tổng quát của Einstein và ý tưởng đa lịch sử của Richard Feynman thành một lý thuyết thống nhất hoàn chỉnh sẽ mô tả mọi thứ xảy ra trong vũ trụ.”

', N'0065.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 120, 3, 7, 46)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (77, N'Những Câu Hỏi Lớn Vũ Trụ (Tái Bản)', CAST(135000 AS Decimal(18, 0)), N'NHỮNG CÂU HỎI LỚN đề cập đến những vấn đề cơ bản trong khoa học tự nhiên và xã hội, nhưng vẫn khiến những bộ óc vĩ đại trong lịch sử đau đầu.

Trong cuốn sách này, Stuart Clark đã đưa ra và thảo luận 20 câu hỏi thế kỷ về thiên văn và vũ trụ. 

vũ trụ là gì?

vũ trụ rộng lớn thế nào?

vũ trụ bao nhiêu tuổi?

những ngôi sao hình thành từ đâu?

trái đất hình thành như thế nào?

vì sao các hành tinh luôn bay theo quỹ đạo?

einstein đúng hay sai?

lỗ đen là gì?
', N'0066.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 100, 11, 7, 47)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (78, N'Khoa Học Khám Phá - Thế Giới Lượng Tử Kỳ Bí', CAST(51000 AS Decimal(18, 0)), N'...Tôi muốn nhận thức được cái cấu trúc hành xử của tự nhiên. Tôi muốn biết cái thế giới thần kỳ mà chúng ta sống trong đó hoạt động như thế nào. Từ mong muốn đó, và được thôi thúc bởi khát khao hiểu biết không ngừng, khoảng năm 15 tuổi, thông qua các bài giảng và tài liệu khoa học đại chúng, tôi đã có những hiểu biết đầu tiên về vật lý lượng tử. Mối quan tâm đến chủ đề vô cùng hấp dẫn và xâm chiếm tôi hoàn toàn này phát triển càng ngày càng mạnh mẽ. Những câu hỏi liên tiếp phát sinh đòi hỏi phải có những câu trả lời hối thúc tôi , nhưng không ai có thể trả lời cho tôi điều đó. ... Sau khi đã nhận thức điều đó một cách rõ ràng, và sau khi đã nghiên cứu vật lý lượng tử 2 năm, tôi cảm thấy một áp lực thôi thúc tôi sắp xếp lại những kiến thức mà mình đã thu thập được cho đến thời điểm này. Từ đó tôi có ý tưởng lưu lại bằng văn bản một số chủ đề trung tâm cũng như một số hiệu ứng xuất hiện trong vật lý lượng tử theo hiểu biết của riêng tôi. Tôi rất vui mừng khi thực hiện công việc này, khi bắt đầu có ý nghĩ tìm ra một cấu trúc hoàn toàn mới, có giá trị giáo khoa cho những chủ đề lượng tử dưới dạng một cuốn sách tự viết, để cuối cùng cũng lấp đầy khoảng trống tư liệu giữa các tài liệu khoa học đại chúng và tài liệu học tập, nghiên cứu chính thống.', N'0067.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 120, 3, 7, 48)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (79, N'Thần Số Học', CAST(153300 AS Decimal(18, 0)), N'Ngày sinh, ngày tốt nghiệp, số nhà, số đăng ký xe, số sổ hộ khẩu, số căn cước công dân... vô vàn con số hiện diện xung quanh chúng ta mỗi ngày, và có một vài con số nhất định liên tục lặp lại. Bạn đã từng chú ý đến điều này chưa? Sự xuất hiện của các con số có thể không chỉ là điều ngẫu nhiên như bạn mặc định.

Và bạn có từng nghĩ ngôn ngữ số học có thể là chìa khóa giải mã những câu hỏi về vận mệnh và ý nghĩa cuộc sống luôn thường trực trong mỗi chúng ta chưa? Những con số chứa đựng ý nghĩa sâu xa và có thể ảnh hưởng đến chúng ta nhiều hơn chúng ta vẫn nghĩ. Nếu bạn đã từng băn khoăn bạn là ai và tại sao lại sở hữu những tính cách như hiện tại; nếu bạn đã từng thắc mắc về con đường tương lai và vận mệnh của bản thân, cuốn sách này có thể cho bạn lời giải đáp hợp lý. Nếu bạn đang đau đáu về con đường sự nghiệp và mông lung không biết bản thân thực sự thích gì ; nếu bạn vẫn đang đi tìm câu hỏi về niềm đam mê và khao khát thực sự của bản thân, cuốn sách này có thể cho thể cho câu trả lời thuyết phục.

Trong hành trình tìm kiếm con đường riêng cho mình, khám phá vận mệnh của bạn thân, sự hiểu biết về Thần số học, hiểu biết về ý nghĩa và sự huyền nhiệm của những con số có thể giúp bạn xóa tan màn sương mờ ảo, tránh được những trầy trật, vất ngã, hay thậm chí là lạc lối, để tù đó tự vạch ra một hướng phù hợp, từ đó sống một cách trọn vẹn, tận hưởng niềm vui và ý nghĩa của cuộc sống.

Những trích dẫn tâm đắc

- Nghệ thuật của thần số học nằm ở bản chất của chúng, sự rung cảm, cách chúng được sử dụng để giúp bạn thấu hiểu bản thân và thế giới xung quanh mình. Có lẽ bạn chưa bao giờ nghĩ rằng con số lại có tính cách riêng nhưng nếu chú ý thì bạn sẽ thấy trong chúng ta sẽ có người ưa thích một vài con số nhất định hơn những con số khác. Chúng ta đưa ra lựa chọn này vì cảm thấy bị thu hút bởi một loại trực giác đối với bản chất hay tính cách của con số đó.

- Câu hỏi quan trọng nhất mà tất cả chúng ta cần phải trả lời đó là vũ trụ có phải là một nơi thân thiện hay không

- Ngẫu nhiên là trạng thái không tồn tại một trật tự hay ý nghĩa sâu xa nào. Điều đáng sợ là vũ trụ này đầy rẫy các sự kiện xảy ra ngẫu nhiên, và không có một luật lệ nào chi phối nó. Trên thực tế, chúng ta thấy rằng mệnh đề này là không đúng, vì khoa học, vật lý, toán học, sinh học, thiên văn học đều dựa trên một trật tự và nó còn có thể dự đoán được một số quy luật của tự nhiên. Hơn nữa nếu vũ trụ bị cai trị bởi những sự kiện ngẫu nhiên không lường trước thì sẽ không có cấu trúc bền vững nào dành cho nó. Ngược lại, vũ trụ duy trì hình thái, cấu trúc, quy luật theo một cách chính xác và có trật tự.
', N'0068.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 150, 9, 7, 49)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (80, N'Bộ Sách Chiêm Tinh Học Ứng Dụng + Thần Số Học Ứng Dụng + Thần Số Học (Bộ 3 Cuốn)', CAST(473000 AS Decimal(18, 0)), N'Bạn có từng thắc mắc sao chỉ ngay trong lần đầu tiên gặp đã có những người mang lại cho bạn cảm giác thân thiết hay không? Bạn đã từng băn khoăn khi tình cờ nhìn thấy các dãy số lặp lại chưa?

Tất cả những thắc mắc đó sẽ được giải đáp qua combo sách ba cuốn này. Ba cuốn sách này không chỉ là công cụ giúp bạn tìm ra và khai thác tiềm năng lớn nhất của bản thân mà còn là loại “phép màu” chính bạn có thể tự thực hiện để phát triển bản thân trong thời hiện đại.

Combo gồm 3 cuốn:

Chiêm tinh học ứng dụng: Tìm hiểu tác động của các chòm sao khi lần lượt ở các vị trí cung Mặt Trời, cung Mặt Trăng và cung Mọc sẽ giúp bạn hiểu hơn về tính cách, suy nghĩ của chính mình cũng như những người xung quanh, từ đó có những ứng xử phù hợp và kết nối sâu sắc hơn với họ.

Thần số học ứng dụng: Thần số học cũng có thể giúp bạn nhìn lại quá khứ. Khi suy ngẫm về các sự kiện của cuộc đời mình và cách chúng diễn ra trong các chu kỳ số, bạn sẽ nhìn nhận rõ ràng hơn về những gì đã xảy ra và nguyên nhân của những điều đó. Biết được những gì bạn sắp phải trải qua trong một năm, tháng hoặc ngày cụ thể giúp bạn điều hướng chu kỳ cuộc sống dễ dàng hơn. Bạn sẽ có thể dự đoán và chuẩn bị cho những thử thách sắp tới cũng như tận dụng các cơ hội tuyệt vời và đầy tiềm năng.

Thần số học: Trong hành trình tìm kiếm con đường riêng cho mình, khám phá vận mệnh của bạn thân, sự hiểu biết về Thần số học, hiểu biết về ý nghĩa và sự huyền nhiệm của những con số có thể giúp bạn xóa tan màn sương mờ ảo, tránh được những trầy trật, vất ngã, hay thậm chí là lạc lối, để tù đó tự vạch ra một hướng phù hợp, từ đó sống một cách trọn vẹn, tận hưởng niềm vui và ý nghĩa của cuộc sống.
.', N'0069.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 200, 9, 7, 50)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (81, N'Khoa Học Khám Phá - Trả Lời Ngắn Gọn Những Câu Hỏi Lớn', CAST(76000 AS Decimal(18, 0)), N'Khoa Học Khám Phá - Trả Lời Ngắn Gọn Những Câu Hỏi Lớn

Các nhà khoa học, các chuyên gia kỹ thuật, các doanh nhân tầm cỡ, các nhà chính trị hàng đầu và công chúng bình dân thường hỏi Stephen Hawking xem ông nghĩ gì đối với “các câu hỏi lớn” của thời đại, những câu hỏi mà phần lớn các nhà khoa học khác đôi khi lảng tránh. Stephen đã tạo ra một kho lưu trữ riêng các câu trả lời của mình, dưới dạng các bài nói, phỏng vấn và bài viết. Cuốn sách này được lấy ra từ kho lưu trữ cá nhân ấy của Stephen và hình thành trong khoảng thời gian ông ra đi. 

Trong cuốn sách này, Stephen Hawking đã trả lời các câu hỏi như: Có chăng Thượng đế? Mọi sự đã khởi đầu như thế nào? Liệu chúng ta có thể dự đoán tương lai không? Bên trong lỗ đen có gì? Du hành thời gian có khả thi không? Chúng ta định hình tương lai bằng cách nào?... bằng những suy luận bắt nguồn từ lĩnh vực khoa học của ông, rất sắc bén đồng thời cũng vô cùng ngắn gọn, thật sâu xa nhưng cũng rất giản dị, như chính bản thân ông vậy.
', N'0070.jpg', CAST(N'2023-03-15T00:00:00.000' AS DateTime), 100, 3, 7, 46)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (82, N'Dự Án Phượng Hoàng - The Phoenix Project', CAST(194000 AS Decimal(18, 0)), N'Câu chuyện về DevOps và chìa khóa thành công cho mọi doanh nghiệp công nghệ

Bill là một quản lý CNTT tại Parts Unlimited. Đó là sáng thứ Ba và trên đường đến văn phòng, Bill nhận được cuộc gọi từ CEO.
Dự án Phượng hoàng, sáng kiến CNTT mới rất quan trọng đối với tương lai của Parts Unlimited, nhưng lại vượt quá ngân sách và triển khai quá chậm. Vị CEO muốn Bill báo cáo trực tiếp với anh ta và sửa chữa mớ hỗn độn trong 90 ngày, nếu không, toàn bộ bộ phận của Bill sẽ được thuê ngoài. Với sự giúp đỡ của một thành viên hội đồng tương lai và triết lý bí ẩn về Ba Phương pháp, Bill bắt đầu thấy công việc CNTT có nhiều điểm tương đồng với công việc của nhà máy sản xuất hơn anh tưởng tượng. Với khoảng thời gian hạn hẹp, Bill phải tổ chức luồng công việc hợp lý và phục vụ hiệu quả các chức năng kinh doanh khác tại công ty. Với tiết tấu nhanh cùng lối kể chuyện thú vị, ba ngôi sao sáng của phong trào DevOps mang đến một câu chuyện mà bất cứ ai làm việc trong lĩnh vực CNTT cũng sẽ nhận ra. Người đọc sẽ không chỉ học cách cải thiện công việc CNTT của tổ chức mà còn có cái nhìn hoàn toàn khác về bộ phận này.

- Các tác giả đã khéo léo lồng ghép các khái niệm về DevOps vào trong câu chuyện thú vị và gay cấn về Dự án Phượng hoàng, một sản phẩm đến từ bộ phận CNTT của Parts Unlimited. Câu chuyện đưa người đọc qua nhiều cung bậc cảm xúc của những người làm CNTT – một ngành tưởng như khô khan và chỉ liên quan đến các con số. Thông qua hành trình của Bill và Dự án Phượng hoàng, độc giả sẽ có thêm nhiều kiến thức bổ ích về ngành CNTT, đặc biệt là mối quan hệ mật thiết giữa CNTT với sự vận hành và phát triển của bất cứ tổ chức nào trong thời đại ngày nay.

- Cuốn sách chỉ ra thực trạng khó khăn mà hầu hết các công ty có bộ phận CNTT đều mắc phải, đó là hoạt động CNTT không gắn liền với vận hành và phát triển doanh nghiệp. Câu chuyện của anh chàng Bill và Dự án Phượng hoàng sẽ cho độc giả có cái nhìn toàn diện và sâu xa hơn về vai trò và vị trí của bộ phận CNTT đối với bất kỳ hoạt động nào của doanh nghiệp.

- Cuốn sách có kết cấu độc đáo, mở đầu bằng một câu chuyện ly kỳ, cuốn hút về công nghệ, kết thúc bằng một cuốn sổ tay cung cấp kiến thức về DevOps.

- Cuốn sổ tay DevOps được đặt ngay sau phần kể chuyện, giống như một tổng kết kiến thức ngắn gọn được rút ra từ câu chuyện Dự án Phượng hoàng. Các tác giả đã đưa ra nhiều khái niệm hữu ích về quản lý, vận hành hoạt động công nghệ trong các tổ chức hiện đại. Đây là những kiến thức không thể thiếu đối với bất kỳ doanh nghiệp nào muốn bứt phá trong thời đại kỹ thuật số.

- "Cuốn sách hấp dẫn này nắm bắt những vấn đề nan giải mà nhiều công ty phụ thuộc vào CNTT phải đối mặt và đưa ra các giải pháp trong thế giới thực. Deming từng nói: ''Bạn không bắt buộc phải thay đổi để sống sót”. Dự án Phượng hoàng sẽ có ảnh hưởng sâu sắc đến CNTT, giống như cuốn sách Mục tiêu của Tiến sĩ Goldratt dành cho sản xuất."

', N'0071.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 400, 2, 8, 51)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (83, N'Người Trong Muôn Nghề: Ngành It Có Gì?', CAST(169000 AS Decimal(18, 0)), N'"Học công nghệ thông tin rồi đi lắp máy tính với cài win dạo à?"

"Sao lại lao đầu vào cái nghề toàn số má với mấy dòng lệnh khó hiểu thế?"

"Dân làm máy tính vừa “đụt” vừa khô khan, ai yêu nổi, yêu nổi ai?"

"Lập trình khó lắm, chắc phải siêu sao toán mới học được."

"Làm công nghệ lương nghìn đô như bỡn!"

Đó chắc hẳn là những câu hội thoại, những lời đánh giá mà các bạn đang học/làm Công nghệ thông tin (CNTT) gặp phải ít nhất 1 lần trong đời, còn những người không theo học/làm CNTT từng nghĩ đến ít nhất 1 lần trong đời (trung thực với bản thân và thừa nhận đi!).

Trong quá trình thực hiện bộ sách hướng nghiệp cho các bạn trẻ, chúng tôi cũng không ngừng trăn trở: Ngành CNTT có thật sự như vậy không? Làm sao để giúp các bạn trẻ có được một cái nhìn toàn diện và khách quan nhất về lĩnh vực rộng lớn này? Những cuốn sách về CNTT hiện có trên thị trường thường là tài liệu nặng tính kỹ thuật dành cho dân chuyên ngành, hoặc những bài viết ngắn với thông tin khá chung chung, hoặc chỉ có góc nhìn từ một cá nhân nên thiếu tính đa chiều. Vậy là nhóm độc giả nằm “lưng chừng” như những bạn học sinh cấp 3, sinh viên Đại học và các bậc phụ huynh đang quan tâm, muốn tìm hiểu về ngành CNTT bị bỏ mặc “bơ vơ”, biết đọc gì đây?

Đó là lý do cuốn sách bạn đang cầm trên tay ra đời.

Nằm trong series sách hướng nghiệp của Spiderum và TopCV, “Người trong muôn nghề: Ngành IT có gì?” là:

Cuốn sách đầu tiên trên thị trường đem đến bức tranh toàn cảnh về ngành CNTT cũng như lộ trình phát triển của các vị trí nghề nghiệp phổ biến trong lĩnh vực này. 

Cuốn sách đầu tiên giúp bạn hiểu ngành CNTT không chỉ dừng ở chiếc máy tính hay những dòng code khô khan mà còn rất nhiều những câu chuyện thú vị khác: thiết kế, làm sản phẩm, làm game, làm ứng dụng di động, làm web, gặp gỡ và giao tiếp khách hàng,

Cuốn sách đầu tiên “phá vỡ” các định kiến như: Làm CNTT chỉ toàn những kẻ nhút nhát, “đầu to mắt cận” hay Nghề này không dành cho con gái. Bạn sẽ thấy, dân IT cũng bạo dạn đi Tây đi Tàu “chinh chiến” thật oách, thấy ngành này chẳng hề khô khan chút nào qua góc nhìn của một người vợ có chồng là lập trình viên, và thấy các bạn nữ cũng không thua kém cánh đàn ông về khoản công nghệ nếu thật sự yêu thích.

Cuốn sách là tập hợp 21 bài viết chứa đựng những chia sẻ “móc hết gan ruột” của các tác giả - những người trực tiếp hoạt động trong lĩnh vực công nghệ. Họ ở đủ mọi độ tuổi, vị trí công việc, địa lý, giới tính: Từ bạn trẻ đang là sinh viên, những người mới vào nghề vài năm tới các đàn anh cỡ 20 năm trong nghề; Từ người học tập và sinh sống tại nước ngoài cho đến bạn xuất thân bình dị từ làng quê nghèo; Từ bậc tiền bối đặt nền móng cho nền CNTT Việt Nam trong lịch sử tới các doanh nhân thời hiện đại gây dựng những công ty công nghệ trị giá hàng triệu, hàng tỷ USD,

 
', N'0072.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 120, 3, 8, 39)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (84, N'Hiểm Họa Hacker Hiểu Biết Và Phòng Chống', CAST(100000 AS Decimal(18, 0)), N'Gần đây người ta thường nói đến hacker (hiểu theo nghĩa tiêu cực là tin tặc), đến sự nguy hiểm của những cuộc tấn công mạng. Nhưng nhiều người trong số chúng ta vẫn cho rằng, mối đe dọa này chẳng mấy liên quan đến thường dân. Thực tế lại không như vậy. Hầu như tất cả các công trình công nghiệp hiện nay đều đã được tự động hóa, ứng dụng công nghệ thông tin (CNTT), trong đó có những công trình đặc biệt quan trọng đối với một quốc gia như chế biến dầu khí, nhà máy điện, cảng hàng không... Cuốn sách này đề cập đến một vấn đề quan trọng: an ninh của các công trình công nghiệp tối quan trọng, và cũng là an ninh của quốc gia nói chung.

  Việc tự động hóa, ứng dụng CNTT trong sản xuất giúp nâng cao độ tin cậy, tăng năng suất vì loại bỏ được lỗi do con người gây ra. Thế nhưng, đây lại chính là mục tiêu tấn công của hacker. Trên thế giới hiện nay đã có nhiều trường hợp xảy ra, chỉ một nhóm hacker cũng có thể làm đình trệ cả một hệ thống lớn.

  Ví dụ điển hình là cuộc tấn công bằng mã độc vào Cụm cảng Hàng không Việt Nam tại Nội Bài và Tân Sơn Nhất vào cuối tháng 7/2016 đã gây ngưng trệ hoạt động tại các sân bay, đồng thời một lượng dữ liệu lớn của khách hàng Vietnam Airlines bị đánh cắp. Chưa dừng ở đó, vụ mất tiền từ tài khoản của khách hàng tại Vietcombank cũng cho thấy có bàn tay của hacker chuyên nghiệp.

Sẽ ra sao nếu như đứng sau những cuộc tấn công như vậy lại là bọn khủng bố, hay tệ hơn là kẻ thù tiềm năng, và thậm chí cả một quốc gia thù địch với tiềm lực công nghệ lẫn tài chính mạnh hơn rất nhiều, nghĩa là khả năng đạt mục tiêu cũng lớn hơn và hậu quả sẽ thảm khốc hơn.

  Chính vì vậy, sự ra mắt của cuốn sách “Hiểm họa hacker: Hiểu biết và phòng chống” là rất đúng lúc và cần thiết. Tác giả của cuốn sách này là một nhà khoa học Nga - chuyên gia về an ninh thông tin. Và chúng ta đều biết rằng an ninh thông tin của Nga là một trong những trường phái mạnh hàng đầu thế giới.

  Cuốn sách rất thiết thực cho cán bộ và đại diện các cơ quan an ninh, nó cũng cần thiết cho lãnh đạo các công trình tối quan trọng để nhận thức rõ tính cấp thiết của vấn đề an ninh thông tin. Hơn nữa, cuốn sách còn rất bổ ích cho các doanh nhân, chuyên viên CNTT, và cho cả những người quan tâm đến CNTT và an ninh mạng.
', N'0073.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 100, 3, 8, 39)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (85, N'Nghệ Thuật Ẩn Mình', CAST(194000 AS Decimal(18, 0)), N'Nghệ Thuật Ẩn Mình

Trong cuốn sách này, Kevin Mitnick, hacker nổi tiếng nhất thế giới, sẽ hướng dẫn các biện pháp dễ thực hiện (và ít tốn kém) giúp bạn – trên cương vị một cá nhân bình thường và một người tiêu dùng – có thể giấu các thông tin nhận dạng cá nhân của mình trong kỷ nguyên của Dữ liệu Lớn, vốn không thiếu những scandal quy mô quốc tế về những vụ vi phạm dữ liệu người dùng thường xuyên xuất hiện trên các mặt báo. Mitnick bàn đến nhiều phương tiện mà chúng ta sử dụng hằng ngày – từ điện thoại, email, cho đến tin nhắn,… – chỉ ra những lỗ hổng mà người khác có thể lợi dụng để giành quyền kiểm soát các dữ liệu của chúng ta, đồng thời đưa ra những giải pháp phòng chống cụ thể và hữu hiệu mà bất kỳ ai cũng có thể thực hiện để tự bảo vệ mình.

Nhưng có lẽ một trong những giá trị quan trọng nhất của cuốn sách là qua đó, tác giả đã giải ảo niềm tin thơ ngây của đại đa số chúng ta rằng những hoạt động của mình trên mạng là đàng hoàng và lành mạnh nên có thể công khai, rằng chỉ những người có ý đồ xấu mới phải tìm cách che giấu các dữ liệu cá nhân. Hay nói như Mikko Hypponen, nhà nghiên cứu trưởng của hãng bảo mật F-Secure, thì: “Có thể bạn không có gì phải giấu diếm. Nhưng bạn có rất nhiều thứ phải bảo vệ đấy.”

“Hacker bị săn lùng gắt gao nhất của FBI.” – Wired

“Hacker nổi tiếng nhất thế giới kiêm người hùng trong nền văn hóa mạng […] vừa viết cuốn cẩm nang về an ninh hệ thống dựa trên chính những kinh nghiệm của mình. Đây là tài liệu phải đọc đối với các chuyên gia IT, nhưng đồng thời còn dành cho cả công chúng nói chung, giới hàn lâm, và các doanh nghiệp.” – Library Journal

“Còn ai khác xứng đáng hơn Mitnick – hacker bị truy nã quốc tế rồi trở thành cố vấn an ninh cho các doanh nghiệp Fortune 500 – trong vai trò người thầy hướng dẫn bạn cách giữ an toàn cho dữ liệu trước những cuộc tấn công lừa đảo, sâu máy tính, và những tổ chức gián điệp mạng như Fancy Bears?” – Esquire

“[Nghệ thuật ẩn mình] là lời cảnh tỉnh, nhắc nhở chúng ta rằng các dữ liệu thô – từ email, ô tô, mạng wifi ở nhà,… – khiến chúng ta dễ dàng trở thành nạn nhân như thế nào.” - New York Times Book Review

', N'0074.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 120, 3, 8, 52)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (86, N'Công Nghệ Thông Tin - Định Hướng Học Tập Nghiên Cứu Và Phát Triển Nghề Nghiệp', CAST(68000 AS Decimal(18, 0)), N'Công Nghệ Thông Tin - Định Hướng Học Tập, Nghiên Cứu Và Phát Triển Nghề Nghiệp

Chương 1. Giới thiệp

Chương 2. Định hướng nghề nghiệp và việc làm

Chương 3. Định hướng học tập

Chương 4. Đào tạo và quản lý đào tạo CNTT

Chương 5. Ứng dụng và xây dựng sản phẩm CNTT

Chương 6. Kết luận
', N'0075.jpg', CAST(N'2023-03-16T00:00:00.000' AS DateTime), 200, 16, 8, 39)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (87, N'Digital Transformation - Chuyển Đổi Số', CAST(169000 AS Decimal(18, 0)), N'Bất kỳ tổ chức nào cũng đều phải đối mặt với những thay đổi lớn tới từ bên ngoài trong quá trình chuyển đổi số. Vậy tổ chức của bạn phải bắt đầu từ đâu? Làm thế nào bạn có được nguồn lực phù hợp? Quá trình này nên được thực hiện như thế nào? Bnên tập trung đo lường những dữ liệu nào?...

Với “cách thức” chuyển đổi số được tạo ra từ những thành công trên mọi lĩnh vực, Lindsay Herbert chắt lọc nó thành năm giai đoạn triển khai công nghệ số cho doanh nghiệp. Các giai đoạn này hoạt động như một khung lặp nhằm đổi mới liên tục, cho phép bạn tạo ra kết quả ngay lập tức, cũng như tăng dần sự thay đổi trong toàn tổ chức của bạn.

Trong Chuyển đổi số, Herbert truyền tải kinh nghiệm của riêng mình trong các chương trình thay đổi và đổi mới hàng đầu trên toàn cầu, cũng như những hiểu biết sâu sắc từ các chuyên gia và lãnh đạo từ các tổ chức đa dạng như Tổ chức Quốc tế về Bảo tồn Thiên nhiên, Cao ủy Liên Hợp Quốc về người tị nạn, Hiệp hội Ung thư Hoa Kỳ, Liên đoàn Quốc tế Nhân quyền, Đại học Harvard, Morgan Stanley, Rijksmuseum và nhiều người khác.

', N'0076.jpg', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 150, 17, 8, 53)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (88, N'Python Cơ Bản (Tái Bản 2022)', CAST(106000 AS Decimal(18, 0)), N'Hiện nay ngôn ngữ lập trình bậc cao Python đang nổi lên như một ngôn ngữ lập trình được sử dụng NHIỀU NHẤT trên thế giới. Điều này được giải thích bằng các lý do sau:

Python là ngôn ngữ lập trình bậc cao khá đơn giản, dễ học, dễ viết.

Cách viết lệnh của Python khá đặc biệt, sử dụng các dấu cách (viết thụt vào) để mô tả các nhóm (block) lệnh. Đặc điểm này làm cho việc viết lệnh Python gần giống với cách viết, trình bày văn bản hàng ngày. Chính đặc điểm này làm cho ngôn ngữ lập trình Python rất dễ viết, trong sáng, ngày càng phát triển và được đưa vào môi trường giáo dục thay cho các ngôn ngữ truyền thống như Pascal, C hay Java.

Python là ngôn ngữ mã nguồn mở và cho phép cộng đồng có thể đóng góp bằng cách bổ sung các module, các kho hàm số, thư viện thuật toán. Điều này làm cho Python phát triển BÙNG NỔ trong giới khoa học và giáo dục đại học. Đặc biệt trong một số ngành mũi nhọn của CNTT như IoT, trí tuệ nhân tạo (AI), dữ liệu lớn (big data) và CMCN 4.0, các phát triển rất nhanh thời gian gần đây của công nghệ đều gắn liền với Python.

Ngoài các lý do nêu trên, Python còn có một tính chất khác biệt nữa: Python là ngôn ngữ thông dịch và luôn có môi trường tương tác Python Shell đi kèm. Chính môi trường tương tác này sẽ giúp ích rất nhiều cho những người muốn làm quen và học Python.

Sách Pyhon cơ bản là cuốn sách đầu tiên, cơ bản, dành cho người mới bắt đầu học ngôn ngữ lập trình này.

Sách dày 254 trang, bao gồm 16 chương, cùng với trên 350 bài tập từ đơn giản đến phức tạp, phù hợp cho mọi đối tượng từ cấp THCS, THPT hoặc sinh viên đại học. Sách cũng có thể dùng cho giáo viên dạy Tin học các trường phổ thông và đại học.
', N'0077.jpg', CAST(N'2023-03-16T00:00:00.000' AS DateTime), 150, 5, 8, 54)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (118, N'Hành Trang Lập Trình - Những Kỹ Năng Lập Trình Viên Chuyên Nghiệp Cần Có', CAST(121710 AS Decimal(18, 0)), N'Cuốn sách gồm 2 nội dung chính:

• Chương I: Phần này trình bày những suy nghĩ và kĩ năng mềm cần thiết để bạn có thể hòa nhập và tiến xa được trong lĩnh vực công nghệ phần mềm. Nội dung trong phần này lại được chia thành những mục nhỏ hơn tương ứng với từng giai đoạn học tập và làm việc:

o Giai đoạn 1 – Học nghề: Trình bày những thái độ và kĩ năng học tập cần thiết để có thể học tập hiệu quả ở trường, cũng như chuẩn bị hành trang cho quá trình làm việc sau này.

o Giai đoạn 2 – Vào nghề: Cung cấp một vài thông tin hữu ích liên quan tới việc tìm kiếm và ứng tuyển vào những công ty công nghệ, phần này cũng đưa ra vài góc nhìn liên quan tới việc đánh giá và so sánh nơi làm việc để bạn tìm ra được công ty phù hợp.

o Giai đoạn 3 – Phát triển trong nghề: Sau khi đã tìm được nơi làm việc, phần này sẽ trình bày những suy nghĩ và cách tư duy làm việc để giúp bạn có thể tiến bộ hơn trong sự nghiệp lập trình viên.

• Chương II: Phần này sẽ đi sâu vào một vài kiến thức kĩ thuật nền tảng mình nghĩ là cần thiết cho quá trình phát triển sau này của một lập trình viên.

o Phần 1 – Clean Code (Mã sạch): Những dòng code được viết ra không phải chỉ dành cho máy tính, mà còn là để cho con người (bảo trì, phát triển…), đây là điều cực kì quan trọng nhưng thường ít được dạy kĩ càng khi ở trường. Phần này sẽ hướng dẫn các bạn cách để viết mã sạch.

o Phần 2 – Những nguyên lí lập trình nâng cao (SOLID): Viết code chạy được chỉ là bước đầu tiên, để trở thành lập trình viên giỏi chúng ta cần phải biết cách viết code dễ bảo trì, dễ mở rộng và linh hoạt hơn. Phần này sẽ cùng bạn bàn luận về những nguyên lí lập trình nâng cao mà mọi lập trình viên có kinh nghiệm cần phải biết.

o Phần 3 – Đơn giản hóa các khái niệm kĩ thuật phức tạp: Lập trình không dễ, những cũng không thật sự khó, phần này sẽ cố gắng giải thích những khái niệm và kĩ thuật phức tạp nhằm giúp bạn có thể nhanh chóng nâng cao kĩ năng của bản thân.
', N'0078.jpg', CAST(N'2023-03-16T00:00:00.000' AS DateTime), 200, 18, 8, 55)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (119, N'Hello Các Bạn Mình Là Tôi Đi Code Dạo', CAST(160000 AS Decimal(18, 0)), N'Hello Các Bạn Mình Là Tôi Đi Code Dạo

Cho tới thời điểm hiện tại, IT vẫn đang là một ngành hot và là sự lựa chọn của rất nhiều các bạn học sinh, sinh viên. Tuy nhiên, cho đến nay, những nguồn tài nguyên học tập trong ngành còn quá ít. Ngoài những tài liệu học tập của trường học thì những tài liệu khác chủ yếu vẫn là các thông tin trên internet hoặc từ những kinh nghiệm của những người đi trước. Để bạn đọc có cái nhìn chân thực và rõ nét hơn về ngành IT, thông qua cuốn sách này, tác giả Phạm Huy Hoàng đã tóm tắt và chia sẻ lại những câu chuyện, bài học kinh nghiệm đã gặp, đã đúc rút được để bạn đọc tham khảo và tìm ra những điểm tương đồng với những gì mình gặp trong khi học tập và làm việc để từ đó rút ra được bài học cho riêng mình.

“Tôi Đi Code Dạo” là một blog, fanpage và Youtube channel được sáng lập bởi Phạm Huy Hoàng - một full-stack developer đã tốt nghiệp Thạc sĩ ngành Computer Science tại Đại học Lancaster ở Anh (Học bổng 18.000 bảng) và hiện đang làm việc cho một startup công nghệ tại Singapore.

Nội dung mà "Tôi Đi Code Dạo" chia sẻ một nửa là về kĩ thuật lập trình, một nửa còn lại là những kinh nghiệm mà "Mr. Code Dạo" đã học được như: cách deal lương, sắp xếp thời gian, kĩ năng mềm, ngôn ngữ lập trình nên học, con đường phát triển nghề nghiệp… Đó là những điều quan trọng không thua gì kĩ năng lập trình.

Phương châm của “Tôi Đi Code Dạo" là: Developer cần biết nhiều điều hơn ngoài code, blog sẽ vừa dạy bạn code, vừa dạy bạn những điều còn lại.

“Hello các bạn, mình là tôi đi code dạo” tổng hợp và chọn lọc hơn 60 bài viết trên blog của tác giả Phạm Huy Hoàng, chủ blog và fanpage “Tôi đi code dạo”. Cuốn sách hướng dẫn những kỹ năng mềm và những phần kỹ thuật thuần code, đồng thời chia sẻ những kinh nghiệm trong quá trình học tập và làm việc của tác giả.

“Hello các bạn, mình là Tôi Đi Code Dạo” được tóm tắt khá ngắn gọn, lồng ghép một số câu chuyện vui để bạn đọc có thể cảm thấy thư giãn và tham khảo thêm thông tin một cách dễ dàng hơn.

Không chỉ là những kiến thức chuyên ngành khô khan, những câu chuyện đời, chuyện nghề rất thật và nhiều cảm xúc qua lối viết giản dị nhưng dí dỏm sẽ mang đến cho người đọc cảm giác gần gũi, dễ tiếp thu và đồng cảm.

Nếu bạn đã, đang và sẽ theo con đường lập trình viên thì đây chính là cuốn sách hữu ích dành cho bạn, giúp bạn có thêm những kỹ năng căn bản cũng như kinh nghiệm cần thiết trong hành trình theo đuổi ước mơ và nghề nghiệp của bản thân.
.', N'0079.jpg', CAST(N'2023-03-19T00:00:00.000' AS DateTime), 300, 9, 8, 56)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNXB], [MaChuDe], [MaTacGia]) VALUES (120, N'Clean Code - Mã Sạch Và Con Đường Trở Thành Lập Trình Viên Giỏi', CAST(189500 AS Decimal(18, 0)), N'Clean Code

Mã sạch và con đường trở thành lập trình viên giỏi

Hiện nay, lập trình viên là một trong những nghề nghiệp được nhiều người lựa chọn theo đuổi và gắn bó. Đây là công việc đòi hỏi sự tỉ mỉ, nhiều công sức nhưng mang lại giá trị cao và một tương lai công việc hứa hẹn. Là một trong số những chuyên gia giàu kinh nghiệm, điêu luyện và lành nghề trong ngành, tác giả đã đúc rút từ kinh nghiệm của mình, viết về những tình huống trong thực tế, đôi khi có thể trái ngược với lý thuyết để xây dựng nên cuốn cẩm nang này, nhằm hỗ trợ những người đang muốn trở thành một lập trình viên chuyên nghiệp.

Cuốn sách được nhiều lập trình viên đánh giá là quyển sách giá trị nhất mà họ từng đọc trong sự nghiệp của mình. Cuốn sách hướng dẫn cách để viết những đoạn mã có thể hoạt động tốt, cũng như truyền tải được ý định của người viết nên chúng.

Cuốn sách được chia thành ba phần lớn. Phần đầu tiên mô tả các nguyên tắc, mô hình và cách thực hành viết mã sạch. Phần thứ hai gồm nhiều tình huống điển hình với mức độ phức tạp gia tang không ngừng. Mỗi tình huống là một bài tập giúp làm sạch mã, chuyển đổi mã có nhiều vấn đề thành mã có ít vấn đề hơn. Và phần cuối là tuyển tập rất nhiều những dấu hiệu của mã có vấn đề, những tìm tòi, suy nghiệm từ thực tiễn được đúc rút qua cách tình huống điển hình.
', N'0080.jpg', CAST(N'2023-03-25T00:00:00.000' AS DateTime), 200, 11, 8, 57)
SET IDENTITY_INSERT [dbo].[Sach] OFF
GO
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (1, N'Lý Lan')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (2, N'Thẩm Thạch Khê')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (3, N'Philip Roth')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (4, N'Thâm Tâm')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (5, N'Mika Waltari')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (6, N'Trương Chí Hùng')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (7, N'Sơn Nam')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (8, N'Sir Arthur Conan Doyle')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (9, N'Agatha Christie')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (10, N'Làn')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (11, N'Yang Phan')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (12, N'Hồ Công Thiết')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (13, N'Phạm Thị Nhọc Liên')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (14, N'Lý Thượng Long')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (15, N'Otsuichi')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (16, N'Dolores Redondo')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (17, N'Mitzi Szereto')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (18, N'Tống Ngọc')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (19, N'Katherine Applegate')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (20, N'Stephen King')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (21, N'Nghệ sĩ Kim Cương')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (22, N'Lê Thẩm Dương')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (23, N'Phạm Viêm Phương')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (35, N'Đinh Thu Hiền')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (36, N'Trương Thị Hồng Tâm')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (37, N'Alex Ferguson')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (38, N'Guillem Balague')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (39, N'Nhiều Tác Giả')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (40, N'Cung Kim Tuyến')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (41, N'Phạm quang Huy')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (42, N'Nguyễn Hồng Hải
')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (43, N'CD/DVD')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (44, N'Lawrence M Krauss')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (45, N'Sean Carroll')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (46, N'Stephen Hawking')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (47, N'Stuart Clark')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (48, N'Silvilia Arroyo Camejo')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (49, N'Hans Decoz')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (50, N'Joy Woodward')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (51, N'Gene Kim')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (52, N'Kevin Mitnick')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (53, N'Lindsay Herbert')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (54, N'Bùi Việt Hà')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (55, N'PGS TS Phạm Văn Ất')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (56, N'Phạm Huy Hoàng')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (57, N'Nguyễn Văn Trung')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe] FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[ChuDe] ([MaChuDe])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ChuDe]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXB]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
