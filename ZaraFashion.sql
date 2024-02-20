USE [master]
GO
/****** Object:  Database [ZaraFashion]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 2/20/2024 4:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[ImportBill]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[ImportBillDetail]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[Location]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 2/20/2024 4:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_id] [int] NULL,
	[Shipper_id] [int] NULL,
	[delivery_id] [int] NULL,
	[Staff_name] [nvarchar](100) NULL,
	[totalprice] [float] NULL,
	[createDate] [date] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderdetail]    Script Date: 2/20/2024 4:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Od_id] [int] NULL,
	[Product_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_Orderdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[ProductInfor]    Script Date: 2/20/2024 4:05:09 PM ******/
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
 CONSTRAINT [PK_ProductInfor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 2/20/2024 4:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Saleevent_id] [int] NULL,
	[Proinfo_id] [int] NULL,
	[percent] [decimal](4, 2) NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleEvent]    Script Date: 2/20/2024 4:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleEvent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startdate] [date] NULL,
	[enddate] [date] NULL,
 CONSTRAINT [PK_SaleEvent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 2/20/2024 4:05:09 PM ******/
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
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Style]    Script Date: 2/20/2024 4:05:09 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 2/20/2024 4:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NULL,
	[rollid] [int] NULL,
	[name] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
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

INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [password]) VALUES (1, N'Customer 1', N'Tu Hiep, Ha Noi', N'123456789', N'customer1@email.com', N'password1')
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [password]) VALUES (2, N'Customer 2', N'Hoang Mai, Ha Noi', N'987654321', N'customer2@email.com', N'password2')
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [password]) VALUES (3, N'Customer 3', N'Hanoi, Vietnam', N'111222333', N'customer3@email.com', N'password3')
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [password]) VALUES (4, N'Customer 4', N'Hanoi, Vietnam', N'444555666', N'customer4@email.com', N'password4')
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [password]) VALUES (5, N'Customer 5', N'Hanoi, Vietnam', N'777888999', N'customer5@email.com', N'password5')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Delivery] ON 

INSERT [dbo].[Delivery] ([id], [name], [email], [phone], [password]) VALUES (1, N'Grab', N'grab@email.com', N'123-456-7890', N'secure123')
INSERT [dbo].[Delivery] ([id], [name], [email], [phone], [password]) VALUES (2, N'Uber', N'uber@email.com', N'987-654-3210', N'pass123')
INSERT [dbo].[Delivery] ([id], [name], [email], [phone], [password]) VALUES (3, N'Bob Johnson', N'bob.johnson@email.com', N'555-123-4567', N'secretPass')
INSERT [dbo].[Delivery] ([id], [name], [email], [phone], [password]) VALUES (4, N'Sarah Williams', N'sarah.w@email.com', N'789-456-1230', N'myPassword')
INSERT [dbo].[Delivery] ([id], [name], [email], [phone], [password]) VALUES (5, N'Alex Brown', N'alex.brown@email.com', N'333-888-5555', N'abc@1234')
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
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([id], [name]) VALUES (1, N'Tu Hiep')
INSERT [dbo].[Location] ([id], [name]) VALUES (2, N'Hoang Mai')
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [Staff_name], [totalprice], [createDate], [status]) VALUES (1, 1, 1, 1, N'123', 200, CAST(N'2024-01-28' AS Date), N'shipping')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [Staff_name], [totalprice], [createDate], [status]) VALUES (2, 2, 1, 1, N'123', 100, CAST(N'2024-01-28' AS Date), N'pending')
INSERT [dbo].[Order] ([id], [Customer_id], [Shipper_id], [delivery_id], [Staff_name], [totalprice], [createDate], [status]) VALUES (3, 3, 1, 2, N'123', 300, CAST(N'2024-01-28' AS Date), N'shipping')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'L', N'Red', N'RELAXED FIT JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'M', N'Red', N'RELAXED FIT JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'S', N'Red', N'RELAXED FIT JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (1, N'XL', N'Red', N'RELAXED FIT JACKET', 0, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'L', N'Grey', N'OVERSIZE FIT PADDED JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'M', N'Grey', N'OVERSIZE FIT PADDED JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'S', N'Grey', N'OVERSIZE FIT PADDED JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (2, N'XL', N'Grey', N'OVERSIZE FIT PADDED JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (6, N'L', N'Blue', N'JACQUARD DENIM JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (6, N'M', N'Blue', N'JACQUARD DENIM JACKET', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (6, N'S', N'Blue', N'JACQUARD DENIM JACKET', 3, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'L', N'Black', N'WOOL BLEND JACKET', 4, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'L', N'Grey', N'WOOL BLEND JACKET', 6, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'M', N'Black', N'WOOL BLEND JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'M', N'Grey', N'WOOL BLEND JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'S', N'Black', N'WOOL BLEND JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'S', N'Grey', N'WOOL BLEND JACKET', 5, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'XL', N'Black', N'WOOL BLEND JACKET', 3, NULL)
INSERT [dbo].[Product] ([product_info_id], [size], [color], [name], [quantity], [status]) VALUES (7, N'XL', N'Grey', N'WOOL BLEND JACKET', 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductInfor] ON 

INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin]) VALUES (1, N'Relaxed fit collared overshirt featuring long sleeves with buttoned cuffs. Welt pockets on the hip. Button-up front.', 98.99, N'OUTER SHELL
52% acrylic
40% polyester
8% wool', N'Caring for your clothes is caring for the environment.
Freshening up and brushing garments is a natural way to care for delicate clothing. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment. ', N'images/product-item-16.jpg', 1, N'China')
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin]) VALUES (2, N'Oversize fit jacket made of technical fabric. High neck with an adjustable detachable hood and long sleeves with inner elasticated cuffs. Welt pockets at the hip and an inside pocket. Adjustable hem with elasticated', 219, N'OUTER SHELL
92% polyester
8% polyamide', N'Caring for your clothes is caring for the environment.
To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. This process is more gentle on fabrics and also reduces water and energy consumption when washing. ', N'images/product-item-17.jpg', 1, N'China')
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin]) VALUES (6, N'JACQUARD DENIM JACKET', 98.99, N'OUTER SHELL
65% cotton
20% polyester
', N'Caring for your clothes is caring for the environment.
To lengthen the life of denim garments, always turn them inside out and wash at low temperatures. This will help you preserve their colours and the structure of the fabric, as well as reduce energy consumption. ', N'images/product-item-18.jpg', 1, N'China')
INSERT [dbo].[ProductInfor] ([id], [description], [price], [material], [care_guide], [img_default], [style_id], [origin]) VALUES (7, N'Jacket made of wool blend fabric. Lapel collar and long sleeves. Welt pockets at hip and interior pocket. Rib trim. Front zip closure.', 109, N'62% polyester
31% wool
7% other fibres', N'Caring for your clothes is caring for the environment.
To keep your jackets and coats clean, just freshen them out and wipe them with a cloth or clothing brush. If dry cleaning is necessary, try to look for dry cleaners that use environmentally respectful technologies.', N'images/product-item-19.jpg', 1, NULL)
SET IDENTITY_INSERT [dbo].[ProductInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipper] ON 

INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone]) VALUES (1, 1, N'Shipper 1', N'shipperpass1', 1, N'111111111')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone]) VALUES (2, 2, N'Shipper 2', N'shipperpass2', 2, N'222222222')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone]) VALUES (3, 1, N'Shipper 3', N'shipperpass3', 1, N'333333333')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone]) VALUES (4, 1, N'Shipper 4', N'shipperpass4', 2, N'444444444')
INSERT [dbo].[Shipper] ([id], [delivery_id], [name], [password], [location_id], [phone]) VALUES (5, 2, N'Shipper 5', N'shipperpass5', 1, N'555555555')
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
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'123', N'1234', 3, N'123', N'123', N'123', N'khongmanhphuc2003@gmail.com')
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'anh', N'123', 3, N'anh', N'anh', N'anh', N'anh')
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'anhthoi', N'123', 3, N'123', N'123', N'123', N'nqs190503@gmail.com')
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'haha', N'1234', 1, N'phuc', N'1234567', N'qưer', N'fsdfsd')
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'lamdeptrai', N'123', 3, N'2', N'2', N'2', N'2@dqd')
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'mra', N'123', 3, N'123', N'123', N'123', N'nqs190503@gmail.com')
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'phuc', N'1', 1, N'1', N'1', N'1', N'1')
INSERT [dbo].[User] ([username], [password], [rollid], [name], [phone], [address], [email]) VALUES (N'phucdeptrai', N'123', 3, N'123', N'123', N'123', N'phuckmhe170685@fpt.edu.vn')
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([product_info_id], [size], [color])
REFERENCES [dbo].[Product] ([product_info_id], [size], [color])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[ImportBill]  WITH CHECK ADD  CONSTRAINT [FK_ImportBill_User] FOREIGN KEY([user_name])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[ImportBill] CHECK CONSTRAINT [FK_ImportBill_User]
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
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([Staff_name])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_Orderdetail_Order] FOREIGN KEY([Od_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Orderdetail] CHECK CONSTRAINT [FK_Orderdetail_Order]
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
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_SaleEvent1] FOREIGN KEY([Saleevent_id])
REFERENCES [dbo].[SaleEvent] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_SaleEvent1]
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
