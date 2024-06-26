USE [master]
GO
/****** Object:  Database [ZaraFashion]    Script Date: 3/29/2024 1:27:58 PM ******/
CREATE DATABASE [ZaraFashion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ZaraFashion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ZaraFashion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ZaraFashion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ZaraFashion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ZaraFashion] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ZaraFashion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ZaraFashion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ZaraFashion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ZaraFashion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ZaraFashion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ZaraFashion] SET ARITHABORT OFF 
GO
ALTER DATABASE [ZaraFashion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ZaraFashion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ZaraFashion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ZaraFashion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ZaraFashion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ZaraFashion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ZaraFashion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ZaraFashion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ZaraFashion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ZaraFashion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ZaraFashion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ZaraFashion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ZaraFashion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ZaraFashion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ZaraFashion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ZaraFashion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ZaraFashion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ZaraFashion] SET RECOVERY FULL 
GO
ALTER DATABASE [ZaraFashion] SET  MULTI_USER 
GO
ALTER DATABASE [ZaraFashion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ZaraFashion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ZaraFashion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ZaraFashion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ZaraFashion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ZaraFashion] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ZaraFashion] SET QUERY_STORE = OFF
GO
USE [ZaraFashion]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[product_info_id] [int] NULL,
	[size] [nvarchar](5) NULL,
	[color] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[date] [date] NULL,
	[cusId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[account] [nvarchar](100) NULL,
	[password] [nvarchar](50) NULL,
	[image] [nvarchar](100) NULL,
	[date] [date] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](max) NULL,
	[phone] [nvarchar](50) NULL,
	[password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_info_id] [int] NOT NULL,
	[size] [nvarchar](5) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[path] [nvarchar](100) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportBill]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportBill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[user_name] [nvarchar](100) NULL,
	[moneytotal] [float] NULL,
 CONSTRAINT [PK_ImportBill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportBillDetail]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportBillDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Product_id] [int] NULL,
	[ImportB_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[dof] [date] NULL,
	[exp] [date] NULL,
 CONSTRAINT [PK_ImportBillDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_id] [int] NULL,
	[Shipper_id] [int] NULL,
	[delivery_id] [int] NULL,
	[User_id] [int] NULL,
	[totalprice] [float] NULL,
	[createDate] [datetime] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderdetail]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Od_id] [int] NULL,
	[product_info_id] [int] NULL,
	[size] [nvarchar](5) NULL,
	[color] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_Orderdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_info_id] [int] NOT NULL,
	[size] [nvarchar](5) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[name] [nvarchar](100) NULL,
	[quantity] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_info_id] ASC,
	[size] ASC,
	[color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInfor]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInfor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](max) NULL,
	[price] [float] NULL,
	[material] [nvarchar](50) NULL,
	[care_guide] [nvarchar](max) NULL,
	[img_default] [nvarchar](100) NULL,
	[style_id] [int] NULL,
	[origin] [nvarchar](50) NULL,
	[price_sale] [float] NULL,
 CONSTRAINT [PK_ProductInfor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Saleevent_id] [int] NULL,
	[Proinfo_id] [int] NULL,
	[percent] [float] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleEvent]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleEvent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startdate] [date] NULL,
	[enddate] [date] NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_SaleEvent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[delivery_id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[location_id] [int] NULL,
	[phone] [nvarchar](50) NULL,
	[image] [nvarchar](100) NULL,
	[ship_account] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Style]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cate_id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/29/2024 1:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[rollid] [int] NULL,
	[name] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[image] [nvarchar](100) NULL,
	[date_create] [date] NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [description]) VALUES (1, N'Men', N'Explore our curated collection for men, where style meets functionality. Discover a versatile range of fashion-forward apparel, accessories, and essentials designed to complement the modern man''s lifestyle. From timeless classics to the latest trends, our men''s category offers a diverse selection that caters to every taste and occasion. Whether you''re seeking sophisticated office attire, casual weekend wear, or rugged outdoor gear, our handpicked assortment ensures quality, comfort, and undeniable style. Elevate your wardrobe and experience the epitome of masculine elegance with our thoughtfully curated men''s collection')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (2, N'Women', N'Indulge in the essence of feminine sophistication with our carefully curated women''s collection. Embrace your individuality with a diverse array of fashion-forward garments, accessories, and essentials that celebrate the modern woman''s spirit. From chic and timeless classics to the latest trends, our collection captures the art of empowerment, self-expression, and style. Whether you''re seeking the perfect outfit for a special occasion, comfortable everyday wear, or accessories that accentuate your unique flair, our women''s category is thoughtfully designed to cater to your every desire. Explore a world of elegance, quality, and versatility, and redefine your personal style with our handpicked selection of women''s fashion and lifestyle offerings')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (3, N'Children', N'Step into a world of wonder and delight with our enchanting children''s collection. Carefully curated to spark imagination and foster joy, our range of products is crafted with the whimsy and comfort every child deserves. From adorable and durable clothing that keeps up with their boundless energy to engaging toys that inspire creativity, our children''s category is a treasure trove of delights for kids of all ages. Discover vibrant colors, playful designs, and quality craftsmanship that ensure both fun and safety. Whether you''re looking for the perfect gift, outfitting your little one for a special occasion, or simply adding a touch of magic to their everyday adventures, our collection is designed to bring smiles and laughter to every child''s world.')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [account], [password], [image], [date], [status]) VALUES (1, N'Vu Lam', N'Số nhà 3, Tứ Hiệp, Hoàng Mai, Hà Nội', N'0977511978', N'lam@gmail.com', N'lam', N'1', N'images/preview.jpg', CAST(N'2024-03-09' AS Date), N'Activated')
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [account], [password], [image], [date], [status]) VALUES (2, N'MTP123', N'Số nhà 3, Tứ Hiệp, Hai Bà Trưng, Hà Nội', N'0123123123', N'MTP@gmail.com', N'MTP', N'123', N'images/profile-image-default.jpg', CAST(N'2024-03-10' AS Date), N'Activated')
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [account], [password], [image], [date], [status]) VALUES (21, N'Vu Lam', N'Số nhà 3, Tứ Hiệp, Hoàng Mai, Hà Nội', N'0977511978', N'lamvnthe176279@fpt.edu.vn', N'116104562155113340961', N'Lam2482003@', N'https://lh3.googleusercontent.com/a/ACg8ocKf9RerCvbalW9wtase2zCZfWkEdjfJBEej3SDGOYj3=s96-c', CAST(N'2024-03-14' AS Date), N'Activated')
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [account], [password], [image], [date], [status]) VALUES (22, N'Vu Lam', N'Số nhà 3, Tứ Hiệp, Tây Hồ, Hà Nội', N'0977511978', N'toiladodom27@gmail.com', N'Phuc1234', N'12345678Aaa', N'images/profile-image-default.jpg', CAST(N'2024-03-29' AS Date), N'Activated')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Delivery] ON 

INSERT [dbo].[Delivery] ([id], [name], [email], [phone], [password]) VALUES (1, N'Grab', N'grab@email.com', N'123-456-7890', N'secure123')
INSERT [dbo].[Delivery] ([id], [name], [email], [phone], [password]) VALUES (2, N'Uber', N'uber@email.com', N'987-654-3210', N'pass123')
SET IDENTITY_INSERT [dbo].[Delivery] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (1, 1, N'S', N'Red', N'images/product-item-16.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (3, 1, N'S', N'Red', N'images/product-detail-item-16-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (4, 1, N'S', N'Red', N'images/product-detail-item-16-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (5, 1, N'S', N'Red', N'images/product-detail-item-16-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (6, 1, N'S', N'Red', N'images/product-detail-item-16-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (8, 1, N'S', N'Red', N'images/product-detail-item-16-5.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (9, 1, N'S', N'Red', N'images/product-detail-item-16-6.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (10, 1, N'S', N'Red', N'images/product-detail-item-16-7.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (11, 1, N'S', N'Red', N'images/product-detail-item-16-8.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (12, 2, N'S', N'Grey', N'images/product-item-17.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (13, 2, N'S', N'Grey', N'images/product-detail-item-17-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (14, 2, N'S', N'Grey', N'images/product-detail-item-17-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (15, 2, N'S', N'Grey', N'images/product-detail-item-17-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (16, 2, N'S', N'Grey', N'images/product-detail-item-17-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (17, 2, N'S', N'Grey', N'images/product-detail-item-17-5.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (18, 2, N'S', N'Grey', N'images/product-detail-item-17-6.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (19, 2, N'S', N'Grey', N'images/product-detail-item-17-7.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (20, 2, N'S', N'Grey', N'images/product-detail-item-17-8.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (21, 2, N'S', N'Grey', N'images/product-detail-item-17-9.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (22, 6, N'S', N'Blue', N'images/product-item-18.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (23, 6, N'S', N'Blue', N'images/product-detail-item-18-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (24, 6, N'S', N'Blue', N'images/product-detail-item-18-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (25, 6, N'S', N'Blue', N'images/product-detail-item-18-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (26, 6, N'S', N'Blue', N'images/product-detail-item-18-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (27, 6, N'S', N'Blue', N'images/product-detail-item-18-5.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (28, 6, N'S', N'Blue', N'images/product-detail-item-18-6.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (29, 6, N'S', N'Blue', N'images/product-detail-item-18-7.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (30, 6, N'S', N'Blue', N'images/product-detail-item-18-8.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (31, 7, N'S', N'Black', N'images/product-item-19-black.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (32, 7, N'S', N'Black', N'images/product-detail-item-19-black-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (33, 7, N'S', N'Black', N'images/product-detail-item-19-black-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (34, 7, N'S', N'Black', N'images/product-detail-item-19-black-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (35, 7, N'S', N'Black', N'images/product-detail-item-19-black-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (36, 7, N'S', N'Black', N'images/product-detail-item-19-black-5.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (37, 7, N'S', N'Black', N'images/product-detail-item-19-black-6.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (40, 7, N'S', N'Black', N'images/product-detail-item-19-black-7.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (41, 7, N'S', N'Black', N'images/product-detail-item-19-black-8.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (42, 7, N'S', N'Black', N'images/product-detail-item-19-black-9.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (43, 7, N'S', N'Grey', N'images/product-item-19.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (44, 7, N'S', N'Grey', N'images/product-detail-item-19-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (45, 7, N'S', N'Grey', N'images/product-detail-item-19-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (46, 7, N'S', N'Grey', N'images/product-detail-item-19-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (47, 7, N'S', N'Grey', N'images/product-detail-item-19-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (48, 7, N'S', N'Grey', N'images/product-detail-item-19-5.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (49, 7, N'S', N'Grey', N'images/product-detail-item-19-6.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (50, 7, N'S', N'Grey', N'images/product-detail-item-19-7.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (51, 7, N'S', N'Grey', N'images/product-detail-item-19-8.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (52, 7, N'S', N'Grey', N'images/product-detail-item-19-9.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (53, 14, N'S', N'Yellow', N'images/product-item-30.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (55, 14, N'S', N'Yellow', N'images/product-detail-item-30-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (56, 14, N'S', N'Yellow', N'images/product-detail-item-30-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (57, 14, N'S', N'Yellow', N'images/product-detail-item-30-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (58, 14, N'S', N'Yellow', N'images/product-detail-item-30-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (59, 14, N'S', N'Yellow', N'images/product-detail-item-30-5.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (60, 14, N'S', N'Yellow', N'images/product-detail-item-30-6.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (61, 14, N'S', N'Yellow', N'images/product-detail-item-30-7.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (62, 14, N'S', N'Yellow', N'images/product-detail-item-30-8.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (65, 15, N'S', N'Black', N'images/product-item-31.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (66, 15, N'S', N'Black', N'images/product-detail-item-31-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (67, 15, N'S', N'Black', N'images/product-detail-item-31-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (68, 15, N'S', N'Black', N'images/product-detail-item-31-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (69, 15, N'S', N'Black', N'images/product-detail-item-31-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (70, 15, N'S', N'Black', N'images/product-detail-item-31-5.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (71, 15, N'S', N'Black', N'images/product-detail-item-31-6.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (72, 15, N'S', N'Black', N'images/product-detail-item-31-7.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (73, 16, N'S', N'Blue', N'images/product-item-32.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (74, 16, N'S', N'Blue', N'images/product-detail-item-32-1.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (75, 16, N'S', N'Blue', N'images/product-detail-item-32-2.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (76, 16, N'S', N'Blue', N'images/product-detail-item-32-3.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (77, 16, N'S', N'Blue', N'images/product-detail-item-32-4.jpg')
INSERT [dbo].[Image] ([id], [product_info_id], [size], [color], [path]) VALUES (78, 16, N'S', N'Blue', N'images/product-detail-item-32-5.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([id], [name]) VALUES (35, N'Ba Đình, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (36, N'Hai Bà Trưng, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (37, N'Hoàng Mai, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (38, N'Thanh Xuân, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (39, N'Long Biên, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (40, N'Tây Hồ, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (41, N'Cầu Giấy, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (42, N'Nam Từ Liêm, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (43, N'Bắc Từ Liêm, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (44, N'Hà Đông, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (45, N'Sơn Tây, Hà Nội')
INSERT [dbo].[Location] ([id], [name]) VALUES (46, N'Quận 1, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (47, N'Quận 2, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (48, N'Quận 3, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (49, N'Quận 4, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (50, N'Quận 5, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (51, N'Quận 6, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (52, N'Quận 7, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (53, N'Quận 8, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (54, N'Quận 9, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (55, N'Quận 10, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (56, N'Quận 11, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (57, N'Quận 12, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (58, N'Bình Thạnh, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (59, N'Gò Vấp, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (60, N'Phú Nhuận, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (61, N'Tân Bình, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (62, N'Tân Phú, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (63, N'Bình Tân, Thành phố Hồ Chí Minh')
INSERT [dbo].[Location] ([id], [name]) VALUES (64, N'Thủ Đức, Thành phố Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (1, 1, 1, 1, 3, 200, CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'0')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (2, 2, 1, 1, 3, 100, CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'2')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (3, 21, NULL, 2, 3, 300, CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'0')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (4, 1, 1, 1, 2, 399, CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'5')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (5, 2, 1, 1, 3, 436, CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'5')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (7, 21, NULL, 1, NULL, 98.989997863769531, CAST(N'2024-03-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (8, 21, NULL, 2, NULL, 109, CAST(N'2024-03-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (9, 22, NULL, 1, NULL, 98.989997863769531, CAST(N'2024-03-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (10, 22, NULL, 1, NULL, 219, CAST(N'2024-03-29T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (11, 1, 3, 1, 3, 425.989990234375, CAST(N'2024-03-29T10:58:49.933' AS DateTime), N'6')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [User_id], [totalprice], [createDate], [status]) VALUES (12, 1, NULL, 1, NULL, 98.989997863769531, CAST(N'2024-03-29T12:34:27.797' AS DateTime), N'0')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Orderdetail] ON 

INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (1, 1, 1, N'S', N'Red', 2, 197.98)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (2, 2, 2, N'S', N'Grey', 1, 219)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (3, 3, 1, N'S', N'Red', 1, 98.99)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (4, 4, 7, N'S', N'Black', 4, 436)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (5, 7, 1, N'S', N'Red', 1, 98.989997863769531)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (6, 7, 7, N'S', N'Black', 1, 109)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (7, 9, 6, N'S', N'Blue', 1, 98.989997863769531)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (8, 9, 2, N'S', N'Grey', 1, 219)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (9, 11, 7, N'M', N'Black', 3, 327)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (10, 11, 6, N'S', N'Blue', 1, 98.989997863769531)
INSERT [dbo].[Orderdetail] ([id], [Od_id], [product_info_id], [size], [color], [quantity], [price]) VALUES (11, 12, 6, N'S', N'Blue', 1, 98.989997863769531)
SET IDENTITY_INSERT [dbo].[Orderdetail] OFF
GO
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'L', N'Red', N'RELAXED FIT JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'M', N'Red', N'RELAXED FIT JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'S', N'Red', N'RELAXED FIT JACKET', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'XL', N'Red', N'RELAXED FIT JACKET', 0, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'L', N'Grey', N'OVERSIZE FIT PADDED JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'M', N'Grey', N'OVERSIZE FIT PADDED JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'S', N'Grey', N'OVERSIZE FIT PADDED JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'XL', N'Grey', N'OVERSIZE FIT PADDED JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (6, N'L', N'Blue', N'JACQUARD DENIM JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (6, N'M', N'Blue', N'JACQUARD DENIM JACKET', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (6, N'S', N'Blue', N'JACQUARD DENIM JACKET', 9, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'L', N'Black', N'WOOL BLEND JACKET', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'L', N'Grey', N'WOOL BLEND JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'M', N'Black', N'WOOL BLEND JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'M', N'Grey', N'WOOL BLEND JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'S', N'Black', N'WOOL BLEND JACKET', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'S', N'Grey', N'WOOL BLEND JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'XL', N'Black', N'WOOL BLEND JACKET', 3, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'XL', N'Grey', N'WOOL BLEND JACKET', 0, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (14, N'L', N'Yellow', N'LINEN BLEND JACKET - LIMITED EDITION', 1, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (14, N'M', N'Yellow', N'LINEN BLEND JACKET - LIMITED EDITION', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (14, N'S', N'Yellow', N'LINEN BLEND JACKET - LIMITED EDITION', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (14, N'XL', N'Yellow', N'LINEN BLEND JACKET - LIMITED EDITION', 2, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (15, N'L', N'Black', N'ZW COLLECTION WOOL BLEND TAILORED FROCK COAT', 7, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (15, N'L', N'Blue', N'DENIM JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (15, N'M', N'Black', N'ZW COLLECTION WOOL BLEND TAILORED FROCK COAT', 2, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (15, N'S', N'Black', N'ZW COLLECTION WOOL BLEND TAILORED FROCK COAT', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (15, N'Xl', N'Black', N'ZW COLLECTION WOOL BLEND TAILORED FROCK COAT', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (15, N'Xl', N'Blue', N'DENIM JACKET', 3, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (16, N'M', N'Blue', N'DENIM JACKET', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (16, N'S', N'Blue', N'DENIM JACKET', 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductInfor] ON 

INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin], [price_sale]) VALUES (1, N'Relaxed fit collared overshirt featuring long sleeves with buttoned cuffs. Welt pockets on the hip. Button-up front.', 98.99, N'OUTER SHELL
52% acrylic
40% polyester
8% wool', N'Caring for your clothes is caring for the environment.
Freshening up and brushing garments is a natural way to care for delicate clothing. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment. ', N'images/product-item-16.jpg', 1, N'China', 98.99)
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin], [price_sale]) VALUES (2, N'Oversize fit jacket made of technical fabric. High neck with an adjustable detachable hood and long sleeves with inner elasticated cuffs. Welt pockets at the hip and an inside pocket. Adjustable hem with elasticated', 219, N'OUTER SHELL
92% polyester
8% polyamide', N'Caring for your clothes is caring for the environment.
To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. This process is more gentle on fabrics and also reduces water and energy consumption when washing. ', N'images/product-item-17.jpg', 1, N'China', 98.989997863769531)
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin], [price_sale]) VALUES (6, N'JACQUARD DENIM JACKET', 98.99, N'OUTER SHELL
65% cotton
20% polyester
', N'Caring for your clothes is caring for the environment.
To lengthen the life of denim garments, always turn them inside out and wash at low temperatures. This will help you preserve their colours and the structure of the fabric, as well as reduce energy consumption. ', N'images/product-item-18.jpg', 1, N'China', 98.989997863769531)
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin], [price_sale]) VALUES (7, N'Jacket made of wool blend fabric. Lapel collar and long sleeves. Welt pockets at hip and interior pocket. Rib trim. Front zip closure.', 109, N'62% polyester
31% wool
7% other fibres', N'Caring for your clothes is caring for the environment.
To keep your jackets and coats clean, just freshen them out and wipe them with a cloth or clothing brush. If dry cleaning is necessary, try to look for dry cleaners that use environmentally respectful technologies.', N'images/product-item-19.jpg', 1, NULL, 109)
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin], [price_sale]) VALUES (14, N'Cropped fit jacket made of a linen blend fabric. Featuring a lapel collar, long sleeves and welt pockets at the hip. Front zip fastening.', 189, N'OUTER SHELL
70% linen
30% polyeste', N'Caring for your clothes is caring for the environment.
To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. This process is more gentle on fabrics and also reduces water and energy consumption when washing. ', N'images/product-item-30.jpg', 1, N'Made in Morocco', 189)
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin], [price_sale]) VALUES (15, N'ZW COLLECTION WOOL BLEND TAILORED FROCK COAT', 290, N'OUTER SHELL
70% linen
30% polyeste', N'Caring for your clothes is caring for the environment.
To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. This process is more gentle on fabrics and also reduces water and energy consumption when washing. ', N'images/product-item-31.jpg', 13, N'China', 290)
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin], [price_sale]) VALUES (16, N'Collared jacket with long sleeves. Button-up front. Buttoned flap patch pockets on the chest.', 133, N'OUTER SHELL
70% linen
30% polyeste', N'Caring for your clothes is caring for the environment.
To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. This process is more gentle on fabrics and also reduces water and energy consumption when washing. ', N'images/product-item-32.jpg', 31, N'China', 133)
SET IDENTITY_INSERT [dbo].[ProductInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipper] ON 

INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (1, 1, N'Shipper 1', N'shipperpass1', 35, N'111111111', N'images/profile-image-default.jpg', N'shipper1')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (2, 2, N'Shipper 2', N'shipperpass2', 36, N'222222222', N'images/profile-image-default.jpg', N'shipper2')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (3, 1, N'Shipper 3', N'shipperpass3', 37, N'333333333', N'images/profile-image-default.jpg', N'shipper3')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (4, 1, N'Shipper 4', N'shipperpass4', 38, N'444444444', N'images/profile-image-default.jpg', N'shipper4')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (5, 2, N'Shipper 5', N'shipperpass5', 39, N'555555555', N'images/profile-image-default.jpg', N'shipper5')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (6, 1, N'lam2', N'123', 40, N'12323123', N'images/profile-image-default.jpg', N'shipper6')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (7, 1, N'tom', N'222', 41, N'323333333', N'images/profile-image-default.jpg', N'shipper7')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone], [image], [ship_account]) VALUES (9, 1, N'Vu Tien Duc', N'123', 42, N'0982726556', N'images/banner-image-4.jpg', N'shipper8')
SET IDENTITY_INSERT [dbo].[Shipper] OFF
GO
SET IDENTITY_INSERT [dbo].[Style] ON 

INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (1, 1, N'Jacket', N'Introducing our exceptional line of jackets, where style seamlessly meets functionality. Embrace the perfect blend of fashion and practicality with our meticulously designed collection. Crafted with the finest materials and attention to detail, our jackets offer a versatile and timeless appeal suitable for various occasions.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (2, 1, N'Coat', N'The tailored silhouette of the coat strikes the perfect balance between modernity and classic tailoring, flattering the wearer with a sleek and versatile design. Whether you''re navigating the urban landscape or attending a formal occasion, this coat effortlessly elevates your ensemble.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (3, 1, N'Puffers', N'Step into the cocoon of comfort provided by the premium down insulation, ensuring optimal heat retention without compromising on the lightweight feel. The quilted pattern not only enhances insulation but also adds a touch of modern aesthetics to your ensemble.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (4, 1, N'Sweater', N'Designed with a discerning eye for detail, this sweater boasts a versatile and timeless silhouette that effortlessly transitions from laid-back weekends to casual workdays. The fine craftsmanship is evident in the meticulous stitching and attention to texture, providing a tactile experience that complements its aesthetic appeal.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (5, 1, N'Trouser', N'Immerse yourself in the luxury of high-quality fabrics that ensure a soft and comfortable feel throughout the day. The tailored fit strikes an ideal balance, providing a polished silhouette without compromising on ease of movement. From the office to casual outings, these trousers are designed to complement various occasions with impeccable flair.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (6, 1, N'Jean', N'Immerse yourself in the durability and flexibility of our carefully selected denim fabric, ensuring a comfortable fit that molds to your shape over time. The classic straight-leg silhouette strikes the perfect balance between contemporary trends and timeless appeal, making these jeans a versatile addition to your wardrobe')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (7, 1, N'Hoodie', N'Immerse yourself in the soft embrace of high-quality cotton or a cozy blend of fabrics, ensuring a warm and comfortable feel against your skin. The relaxed fit provides ease of movement, making this hoodie ideal for everything from laid-back weekends to active pursuits.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (8, 1, N'Shirt', N'Experience the luxurious feel of high-quality cotton or a blend of premium fabrics that not only ensures comfort but also enhances the shirt''s durability. Our shirts are tailored for a flattering fit, striking the perfect balance between a polished silhouette and the freedom of movement.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (9, 1, N'T-Shirt', N'Immerse yourself in the soft embrace of high-quality cotton, ensuring a lightweight and breathable feel against your skin. The relaxed fit provides ease of movement, making it perfect for various occasions – from laid-back weekends to casual outings with friends.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (10, 1, N'Polo-Shirt', N'Experience the luxurious touch of high-quality cotton or a comfortable blend of fabrics, ensuring a smooth and breathable feel against your skin. The tailored fit strikes the perfect balance between a polished silhouette and relaxed comfort, making our polo shirt a versatile choice for various occasions.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (11, 1, N'Blazer', N'Crafted from high-quality fabrics, our blazer offers a tailored fit that strikes the perfect balance between comfort and elegance. The structured silhouette and precise lines enhance your posture, creating a polished look that seamlessly transitions from formal occasions to smart-casual settings.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (12, 1, N'Suits', N'ZARA''s men''s suits come in a variety of silhouettes and a vast color palette to suit every style for every man. From classic cuts and sober tones to on-trend ensembles, this edit offers an array of options perfect for any occasion.

Men''s black suits offer unlimited combinations to create powerful outfits for any occasion, whether formal or festive. Meanwhile, gray suits for men also offer a wide range of different combinations in order to provide a versatile alternative that gives a subtle touch of light to the final look.

From special occasions to parties, our men''s suits edit suits all types of wardrobes, ranging from those with sophisticated and timeless styles to those who enjoy being completely fashionable.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (13, 2, N'Coats', N'Coats for women come with specific requirements and our edit considers all. Padded, quilted, puffer and fur coats come in multiple colours and silhouettes to suit every shape and style penchant, while shearling, padded and teddy coats add to the edit. They''re joined by bombers, parkas trench coats which cater to both smart and casual occasions. Leather, denim and wool coats - as well as cropped and long coats - stand their ground in this comprehensive edit that ensures there is a coat for every occasion.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (14, 2, N'Puffers', N'Women''s quilted jackets are one of the star garments because of their adaptability to all kinds of temperatures and occasions. The coldest days call for a long down jacket that offers maximum protection, and even if the temperature rises a few degrees, the light women''s down jacket guarantees the necessary level of warmth with maximum freedom of movement.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (15, 2, N'Knitwear', N'Knitwear is an basic addition to a woman''s wardrobe. From cosy jumpers to lightweight sweaters, there are smart and casual options that are ready to adapt to work and weekend outfits. Chunky cardigans and cable-knits are popular options to wear with jeans as well as dresses, while sporty marl sweaters and cotton cardigans make for everyday options. From oversized and fluffy to fitted designs, our knitwear covers every occasion')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (16, 2, N'Blazer', N'Women''s blazers are a versatile and fashionable addition to any closet. A classic black blazer is a must-have item that can be dressed up or down for any occasion. It can be paired with jeans and a tee for a casual look or a dress or skirt for a more formal outfit. For those on the hunt for on-point tailoring, Zara offers a wide selection of blazers for you to mix and match. Tailoring is so versatile as it can be mixed and matched with the matching pants or with a whole other outfit. For a more edgy and modern look, consider a leather effect blazer. This style of blazer has a sleek and stylish appearance that can add some edge to the outfit. It can be paired with skinny jeans and heels for a night out or a skirt and boots for a more casual look. A leather effect blazer adds texture and intrigue to the look and would look amazing with a band tee collection.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (17, 2, N'Dresses', N'Zara’s selection of women’s dresses caters to all styles. Ranging from elegant and delicate designs to bold and fresh pieces, the collection is as varied as stylish.

Find the most sophisticated versions of the iconic little black dress among a selection of versatile black dresses and create a flawless look that adapts to any occasion, or go for a floral dress if you are looking for a more feminine and delicate look.

The edit features attractive pieces to build stylish casual looks for everyday wear as well as party dresses that breathe modernity and style for special occasions. From short to long party dresses, they come in different lengths that flatter different heights.

A long boho dress can create an effortless and detailed look that exudes a charming sense of freedom. Whether plain or patterned, midi or maxi, it adds a joyful touch to any festive outfit.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (18, 2, N'Jumpsuits', N'Zara''s selection of jumpsuits for women combines the comfort of one-piece clothing with the style of the latest trends. The cut-out jumpsuit, the seamless jumpsuit or the corset style are proof that it is possible to integrate a variety of designs in a natural way without compromising on the essence of the jumpsuit. The distinguished lapels of the blazer-inspired proposals serve to further highlight the versatility of this garment.

From a smart event to a casual lunch, the long-sleeved jumpsuit does not dissapoint. Another style that differs in design, but has an equally flattering silhouette, is the long-sleeved short jumpsuit. An elegant jumpsuit remains elegant regardless of the cut or fabric—whether it is a printed short jumpsuit or a long party jumpsuit.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (19, 2, N'Cardigans', N'he cardigan is a timeless addition to a woman''s style arsenal and one for all the ages. From cosy knitwear to lightweight layers, our collection spans both when it comes to cardigans, creating an online edit of perennially cool coverups.

As an everyday basic, the cardigan becomes a basic - traditional in cut and plain in design. As a style statement, it arrives in multicoloured intarsia, patterned, checked, striped and fluffy iterations.

Chunky, cable-knit and oversized are countered with cropped and body-con options so they can be the main event or a complementary layer. Just like our collection of sweaters and vests, they come in various fabrications from cotton and cashmere to wool and silk.

In addition to neutrals, cardigans come in statement shades including green, blue, black and pink, as well as multicoloured to raise your spirits and your sartorial game. As well as crew-neck, V-neck and turtleneck, the collection has flattering coords as well as cardigan dresses and coats which double up pieces to wear solo or with the rest of your casual repertoire.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (20, 2, N'Sweaters', N'Women’s knitted sweaters run the gamut between relaxed and casual to worthy of wearing with a suit or to a party. Our collection of knitwear adds practicality as well as style to every outfit and comprises a wide range of silhouettes.

V-neck and round-neck sweaters earn their popularity because of their versatility to be low-key as well as super chic. Polo neck sweaters, oversized sweaters and hooded sweaters also appear in this knitwear edit which is easily worn with tailored trousers for a formal occasions; over shirts, dresses and skirts; and joggers and sneakers for a day when comfort comes as priority.

Our collection of knitted sweaters for women extends to long-sleeved, short-sleeved and sleeveless styles, as well as variations with collars, buttons and zips. Graphic, romantic and fashionable slogans appear as prints and intarsia to bring statement-making accents to wardrobes and ensembles.

Elsewhere, interesting details such as shoulder pads, embellishment and embroidery are incorporated into our collection of sweaters to add a point of difference. Ribbed and cable knits join fine knits in multiple different designs and silhouettes to ensure there is a weight and weave to suit everyone.
')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (21, 2, N'Bodysuits', N'The black bodysuit is a fashion staple. For the season, we’ve updated the basic leotard with cuts, like blouse sleeves and halter necks, as well as played with textured lace fabrics and sheer panels on night out styles. Wear yours tucked into a statement skirt or pants, or under a sheer dress for a fresh evening look.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (22, 2, N'Shirts', N'Plaid shirts come in a variety of colors and styles, from traditional red and black to more muted tones like navy and green. Short-sleeved shirts are perfect for warmer weather and can be styled in many different ways. They are a perfect spring and summer-appropriate alternative to long-sleeved shirts. Pair a loose-fitting short-sleeved shirt with denim shorts and sandals for a relaxed weekend look')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (23, 2, N'Blouses', N'Blouses for women are historical pieces of clothing that have become a total must-have piece in any feminine wardrobe over time. Hence, Zara’s newest womenswear collection has included an extensive selection of the latest blouse designs with everything you can consider so that all situations, be they casual or formal and all individual preferences feel represented and cared for.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (24, 2, N'T-Shirts', N'In this collection, Zara presents women''s T-shirts in a variety of designs for one of the most versatile and infallible pieces there is. From basic T-shirts to tops with which to wear to events or to elevate everyday looks, the quintbasic casual style garment offers more possibilities than one could ever imagi')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (25, 2, N'SweatShirts', N'Style and comfort are the absolute stars of the ZARA women''s sweatshirt collection. Sweatshirts have become part of our everyday wardrobe, no longer restricted to the sports section.

The dominant interpretation of this garment is the wide sweatshirt, ideal if you''re looking for a casual look. In this case, it is a good idea to choose more fitted bottoms if you want to balance the silhouette. On the other hand, short sweatshirts are the perfect garment to combine with high-waisted pants —the infallible formula to achieve the effect of infinite legs. A fun look only needs a long sweatshirt as a dress to conquer with its personality.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (26, 2, N'Pants', N'Pants are a fundamental part of feminine wardrobes- so much so that sometimes we forget to invest in such an important piece. Whether you want to dress them up or down, they will always complete your looks in style. For the warmest months, the perfect pants will be white pants')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (27, 2, N'Jeans', N'NULLLadies'' jeans are an important part of our everyday closets. They can dress up or dress down an outfit, and they can work for the office and a night out with friends. At Zara, we know a thing or two when it comes to denim, and our jeans are no exception. From original blue and black denim jeans to high-waist fit, ripped jeans to skinny jeans, and white jeans, there is a pair of jeans for every occasion')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (28, 2, N'Skirts', N'ZARA''s skirts come full of style and will add a feminine touch to any look.

The mini skirt has been an iconic garment since its inception in the 60''s and is a must-have in every woman''s wardrobe. An ideal complement to many outfits, the mini skirt can be worn with sandals, sneakers and elegant shoes, with or without heels. Furthermore, by combining boots and ankle boots with a short skirt, you can achieve a romantic look or an impeccable cosmopolitan style, depending on the footwear design.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (29, 2, N'Shorts', N'Women’s shorts are having a fashion comeback and there are a thousand new ways to style them. Denim shorts, co-ords, Bermuda shorts, cycling shorts and smart tailoring styles are all valid this season, and are ready to shop in our online collection. Just decide if you want to add heels or flats.
')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (30, 2, N'Co-order Sets', N'Co-ord sets for women have been on the rise forever due to their absolute timelessness and their capacity to create ensembles that look as put together as it gets in little to no time. Zara’s newest womenswear collection offers a wide selection of coordinated looks, including top and trousers co-ords, as well as top and skirt sets. When it comes to volumes and length, the selection guarantees alternatives that cover an extensive amount of different situations and personal preferences.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (31, 3, N'Coats', N'A coat for a girl is an investment. Our outerwear collection is comprised of options to suit all tastes; waterproof coats are joined by warm wool coats, while there are also options to suit casual outfits - such as a parka coat or denim coat. Smart everyday options come in the form of peacoats and duffle coats. Arriving in long and short lengths - as well as classic colors like black, blue, and white - our coats for girls are trendy and timeless.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (32, 3, N'SweatShirts', N'Pairing a white sweatshirt with dress pants makes for a dynamic office look. For a trendy and stylish look, a black sweatshirt can be paired with black leggings and a camel long coat. Throw on a pair of maxi sunglasses and you''ve got yourself a look.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (33, 3, N'KnitWear', N'Our knitwear for girls comes in all styles, shapes, and sizes. Sweaters, sweatshirts, and cardigans make up our collection of knitted tops and are complemented by pants and sweatpants. Our kids'' knitwear selection extends into accessories: hats, scarves, gloves, and socks are all made to be soft and comfortable. Knitted clothes provide versatile wardrobe options for kids and our plain and patterned designs elevate our collection.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (34, 3, N'Pants', N'Diverse, versatile, and comfortable, our collection of pants for girls includes jeans, leggings, and sweatpants which have been designed to be worn for school as well as socializing. As with all our kids'' clothes, our pants are comfortable to wear, walk, and run in and complement all our tops and footwear. Trendy styles mix with perennial designs which results in plain as well as patterned pants in this fashionable collection.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (35, 3, N'Jeans', N'Our denim collection is headed up by our wide assortment of jeans for kids. Our collection for girls has multiple styles and includes ripped, baggy, skinny, and flared jeans. As one of the most versatile items in a girls'' wardrobe, our jeans are stylish and trendy. Worn with our selection of tops and accessories, they can be dressed up or down. Blue, black, white, as well as brighter hues, are all available to complete a fashionable ensemble.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (36, 3, N'Skirts', N'From long skirts to mini skirts, our collection of skirts for girls has a wide variety of lengths and styles. For formal occasions, plain skirts in black, blue, and white fit the bill, meanwhile, fun outfits are completed by our collection of colorful and printed skirts. Versatile enough to be worn with shirts as well as sweatshirts, cardigans, and t-shirts, skirts can be worn year-round with tights, boots, socks, and sandals.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (37, 3, N'Shorts', N'Shorts are a perennial style staple and the collection for girls ensures to start kids off in style. Bermuda, cycling, and culotte silhouettes all make the cut, and because shorts are more versatile than pants, they can be worn with sandals as well as tights and boots. Colorways also cater to different occasions with plain white, blue, and black variations proving popular.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (38, 3, N'Shirts', N'Shirts come in many forms in our collection for girls. From button-down shirts for school and smart occasions to blouses for less formal days, long-sleeved to short-sleeved styles, they offer a traditional-meets-trendy alternative to t-shirts, sweatshirts, and other tops. Floral, striped, and patterned variations complete our offering, which looks great with everything from skirts and shorts to pants and jeans.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (39, 3, N'Overshirts', N'Boys'' shirts at ZARA online. Basic and original designs. Try it on in the comfort of your home.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (40, 3, N'Trousers', N'Sporty, tailored, casual and dress trousers all play an important part in our collection of trousers for boys. From school uniforms to after-school activities, weekend fun to occasions that require something smarter, there are silhouettes and styles to suit. Original prints, interesting details and multicoloured options set these pants apart and complement our wider kids'' clothing collection of coats and blazers as well as tops and shoes')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (41, 3, N'Jeans', NULL)
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (42, 3, N'Dresses', N'Our collection of girls'' dresses cater to every taste. Simple and stretchy dresses are popular for their ease; maxi and mini dresses are loved for their versatile credentials; while our designs that come with special details like embroidery, embellishment, and fashionable patterns tick the trend box. A dress worn under cardigans and sweaters makes for a timeless outfit, while shoes or sneakers can take it in an either classic or cool direction.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (43, 3, N'Jumpsuits', N'Jumpsuits are a trendy alternative to jeans and tops. This versatile all-in-one is as comfortable as it is fashionable and our collection includes long-sleeved jumpsuits, playsuits and dungaree varieties. This classic piece is great worn with our collection of tops and outerwear and looks stylish with boots, sneakers and shoes. Handy pockets and easy fastenings make our jumpsuit designs a favourite with kids.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (44, 3, N'Summer Clothes 0', N'We work with monitoring programs to guarantee compliance with the social, environmental, and health and safety standards of our products. To assess its compliance, we have developed an audit program and plans for continual improvement.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (45, 3, N'Leggings', N'Providing comfort and flexibility, leggings, and jeggings for girls put ease into everyday dressing. Great at any age, they are a trendy alternative to pants, shorts, and jeans. Our collection comes in plain as well as printed designs which and cater to sports as well as weekend outfits and can be teamed with all our tops as well as our dresses.')
INSERT [dbo].[Style] ([id], [cate_id], [name], [description]) VALUES (46, 3, N'Pyjamas', N'We work with monitoring programs to guarantee compliance with the social, environmental, and health and safety standards of our products. To assess its compliance, we have developed an audit program and plans for continual improvement.')
SET IDENTITY_INSERT [dbo].[Style] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (1, N'lam', N'123', 3, N'Lam123', N'0333239735', N'Lai Châu', N'lam@gmail.com', N'images/preview.jpg', CAST(N'2024-03-05' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (2, N'lam', N'123', 3, N'lam', N'0333239735', N'Lai Chau', N'lam@gmail.com', N'images/profile-image-default.jpg', CAST(N'2024-03-05' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (3, N'manager', N'manager', 2, N'Manager', N'0333239735', N'Lai CHau', N'manager@gmail.com', N'images/cat-item1.jpg', CAST(N'2024-03-05' AS Date), N'Activated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (4, N'example_user', N'example_user', 3, N'John Doe', N'1234567890', N'123 Example St', N'john@example.com', N'images/profile-image-default.jpg', CAST(N'2024-03-05' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (5, N'123', N'123', 2, N'123', N'123', N'123', N'123', N'images/profile-image-default.jpg', CAST(N'2024-03-05' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (6, N'qwer', N'123', 3, N'Vũ Lâm', N'12312312', N'Lai Chau', N'lam2482003lc@gmail.com', N'images/preview.jpg', CAST(N'2024-03-05' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (7, N'test', N'123', 3, N'adasd', N'123', N'123', N'asdas@gmai.com', N'images/preview.jpg', CAST(N'2024-03-05' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (9, N'huycho', N'123', 3, N'Huy', N'123', N'123', N'Huy213@gmai.com', N'images/banner-image-5.jpg', CAST(N'2024-03-05' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (10, N'huycho', N'123', 3, N'Huy', N'123', N'123', N'Huy213@gmai.com', N'images/preview.jpg', CAST(N'2024-03-05' AS Date), N'Activated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (11, N'123', N'123', 3, N'123', N'123', N'123', N'123@gmail.com', N'images/post-small-image2.jpg', CAST(N'2024-03-05' AS Date), N'Activated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (12, N'MTPMTP', N'123123', 3, N'MTPMTP', N'123123', N'Lai CHAU', N'MTP@gmail.com', N'images/commentor-item3.jpg', CAST(N'2024-03-06' AS Date), N'Deactivated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (13, N'admin', N'admin', 1, N'admin', N'123123', N'admin', N'admin@gmail.com', N'images/profile-image-default.jpg', CAST(N'2024-03-07' AS Date), N'Activated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (43, N'123123', N'123', 3, N'Vũ Lâm', N'123123455555', N'123', N'4rest2482003@gmail.com', N'images/banner-large-3.jpg', CAST(N'2024-03-22' AS Date), N'Activated')
INSERT [dbo].[User] ([id], [username], [password], [rollid], [name], [phone], [address], [email], [image], [date_create], [status]) VALUES (44, N'nlva', N'222223', 3, N'nlva', N'1232132124444444', N'12323232132132132132', N'anhnlvhs173076@fpt.edu.vn', N'images/banner-image-1.jpg', CAST(N'2024-03-23' AS Date), N'Deactivated')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF_Cart_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('images/profile-image-default.jpg') FOR [image]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_status]  DEFAULT (N'Activated') FOR [status]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Shipper] ADD  CONSTRAINT [DF_Shipper_image]  DEFAULT (N'images/profile-image-default.jpg') FOR [image]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ('images/profile-image-default.jpg') FOR [image]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_date_create]  DEFAULT (getdate()) FOR [date_create]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_status]  DEFAULT (N'Deactivated') FOR [status]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([product_info_id], [size], [color])
REFERENCES [dbo].[Product] ([product_info_id], [size], [color])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[ImportBillDetail]  WITH CHECK ADD  CONSTRAINT [FK_ImportBillDetail_ImportBill] FOREIGN KEY([ImportB_id])
REFERENCES [dbo].[ImportBill] ([id])
GO
ALTER TABLE [dbo].[ImportBillDetail] CHECK CONSTRAINT [FK_ImportBillDetail_ImportBill]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([Customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Delivery] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[Delivery] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Delivery]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([User_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_Orderdetail_Order] FOREIGN KEY([Od_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Orderdetail] CHECK CONSTRAINT [FK_Orderdetail_Order]
GO
ALTER TABLE [dbo].[Orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_Orderdetail_Product] FOREIGN KEY([product_info_id], [size], [color])
REFERENCES [dbo].[Product] ([product_info_id], [size], [color])
GO
ALTER TABLE [dbo].[Orderdetail] CHECK CONSTRAINT [FK_Orderdetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductInfor] FOREIGN KEY([product_info_id])
REFERENCES [dbo].[ProductInfor] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductInfor]
GO
ALTER TABLE [dbo].[ProductInfor]  WITH CHECK ADD  CONSTRAINT [FK_ProductInfor_Style] FOREIGN KEY([style_id])
REFERENCES [dbo].[Style] ([id])
GO
ALTER TABLE [dbo].[ProductInfor] CHECK CONSTRAINT [FK_ProductInfor_Style]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_ProductInfor] FOREIGN KEY([Proinfo_id])
REFERENCES [dbo].[ProductInfor] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_ProductInfor]
GO
ALTER TABLE [dbo].[Shipper]  WITH CHECK ADD  CONSTRAINT [FK_Shipper_Delivery] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[Delivery] ([id])
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [FK_Shipper_Delivery]
GO
ALTER TABLE [dbo].[Shipper]  WITH CHECK ADD  CONSTRAINT [FK_Shipper_Location] FOREIGN KEY([location_id])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [FK_Shipper_Location]
GO
ALTER TABLE [dbo].[Style]  WITH CHECK ADD  CONSTRAINT [FK_Style_Category] FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Style] CHECK CONSTRAINT [FK_Style_Category]
GO
USE [master]
GO
ALTER DATABASE [ZaraFashion] SET  READ_WRITE 
GO
