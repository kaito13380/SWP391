USE [master]
GO
/****** Object:  Database [eButler]    Script Date: 01/11/2022 12:36:00 SA ******/
CREATE DATABASE [eButler]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eButler', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eButler.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eButler_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eButler_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [eButler] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eButler].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eButler] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eButler] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eButler] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eButler] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eButler] SET ARITHABORT OFF 
GO
ALTER DATABASE [eButler] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eButler] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eButler] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eButler] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eButler] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eButler] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eButler] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eButler] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eButler] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eButler] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eButler] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eButler] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eButler] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eButler] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eButler] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eButler] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eButler] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eButler] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eButler] SET  MULTI_USER 
GO
ALTER DATABASE [eButler] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eButler] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eButler] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eButler] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eButler] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eButler] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [eButler] SET QUERY_STORE = OFF
GO
USE [eButler]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role_ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Introduce] [varchar](500) NULL,
	[Image] [varchar](100) NULL,
	[IsStatus] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_ID] [int] NOT NULL,
	[Service_ID] [int] NOT NULL,
	[Service_Name] [varchar](50) NOT NULL,
	[Service_Quantity] [int] NOT NULL,
	[Service_Price] [int] NOT NULL,
	[Total_Price] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
	[Req_Time] [date] NOT NULL,
	[Account_ID] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feeback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NOT NULL,
	[Service_ID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_ID] [int] NOT NULL,
	[Order_Address] [varchar](100) NOT NULL,
	[Order_Email] [varchar](50) NOT NULL,
	[Order_Time] [date] NOT NULL,
	[Order_Status] [varchar](20) NOT NULL,
	[Total_Price] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role_Name] [varchar](20) NOT NULL,
	[Role_Detail] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Working_Time] [varchar](50) NOT NULL,
	[Release_Time] [date] NOT NULL,
	[Image] [varchar](500) NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Cart]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cart_ID] [int] NULL,
	[Service_ID] [int] NULL,
 CONSTRAINT [PK_Service_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 01/11/2022 12:36:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_ID] [int] NULL,
	[Supplier_Name] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (1, N'admin', N'admin', 1, N'Admin1', NULL, NULL, NULL, NULL, NULL, N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (2, N'user', N'1', 2, N'Customer 1', N'0909000990', NULL, NULL, NULL, N'images/account1.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (3, N'seller', N'1', 3, N'Seller 1', N'09999', NULL, NULL, NULL, N'images/account2.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (4, N'cc', N'1', 4, N'Customer Care 1', N'01111', NULL, NULL, NULL, N'images/account3.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (5, N'user1', N'1', 2, N'Customer 2', N'0911', N'asd@email.com', NULL, NULL, N'images/account4.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (6, N'user2', N'1', 2, N'Customer 3', N'0119', N'asdasd@email.com', NULL, NULL, N'images/account5.png', N'inactive')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (7, N'seller1', N'1', 3, N'Seller 2', N'00001', N'aaaaa@email.com', NULL, NULL, N'images/account6.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (8, N'seller2', N'1', 3, N'Seller 3', N'12345', N'1111@email.com', NULL, NULL, N'images/account7.png', N'inactive')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (9, N'cc1', N'1', 4, N'Customer Care 2', NULL, NULL, NULL, NULL, N'images/account3.png', N'inactive')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (10, N'seller3', N'1', 3, N'Seller 3', NULL, NULL, NULL, NULL, N'images/account8.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (11, N'seller4', N'1', 3, N'Seller 4', NULL, NULL, NULL, NULL, N'images/account9.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (12, N'seller 5', N'1', 3, N'Seller 5', NULL, NULL, NULL, NULL, N'images/account10.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (13, N'seller 6', N'1', 3, N'Seller 6', NULL, NULL, NULL, NULL, N'images/account11.png', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (14, N'abc', N'1', 2, N'abcDE', N'1', N'abc@gmail.com', NULL, NULL, NULL, N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (15, N'qwe', N'1', 2, N'qweewq', N'123456789', N'qwe@gmail.com', N'', N'', N'', N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (16, N'1', N'5', 2, N'2', N'4', N'3#@3', NULL, NULL, NULL, N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (17, N'1', N'5', 2, N'2', N'4', N'3@3', NULL, NULL, NULL, N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (18, N'qwe', N'5', 2, N'aqwe', N'0', N'3#2@d', NULL, NULL, NULL, N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (19, N'das', N'123', 2, N'dsad', N'asdasd', N'asda@dsad', NULL, NULL, NULL, N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (20, N'qqq', N'123', 2, N'ewq', N'123d', N'qwe@q', NULL, NULL, NULL, N'active')
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role_ID], [Name], [Phone], [Email], [Address], [Introduce], [Image], [IsStatus]) VALUES (21, N'qwes', N'123456', 2, N'1', N'wqe', N'1@1', NULL, NULL, NULL, N'active')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Description], [Status]) VALUES (1, N'Gas', N'Gas', N'active')
INSERT [dbo].[Category] ([ID], [Name], [Description], [Status]) VALUES (2, N'Electric', N'Electric', N'active')
INSERT [dbo].[Category] ([ID], [Name], [Description], [Status]) VALUES (3, N'Rice', N'Rice', N'active')
INSERT [dbo].[Category] ([ID], [Name], [Description], [Status]) VALUES (4, N'Water', N'Water', N'active')
INSERT [dbo].[Category] ([ID], [Name], [Description], [Status]) VALUES (5, N'Electronic Device', N'Electronic Device', N'active')
INSERT [dbo].[Category] ([ID], [Name], [Description], [Status]) VALUES (6, N'Market', N'Market', N'active')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [Title], [Description], [Req_Time], [Account_ID], [Status]) VALUES (1, N'Test 1', N'ABC XYZ', CAST(N'2022-10-28' AS Date), 3, 0)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [Account_ID], [Order_Address], [Order_Email], [Order_Time], [Order_Status], [Total_Price]) VALUES (2, 7, N'ABC XYZ', N'asd@gmail.com', CAST(N'2022-01-11' AS Date), N'Done', 10000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Role_Name], [Role_Detail]) VALUES (1, N'admin', N'Administrator')
INSERT [dbo].[Role] ([ID], [Role_Name], [Role_Detail]) VALUES (2, N'customer', N'Customer')
INSERT [dbo].[Role] ([ID], [Role_Name], [Role_Detail]) VALUES (3, N'supplier', N'Seller')
INSERT [dbo].[Role] ([ID], [Role_Name], [Role_Detail]) VALUES (4, N'cc', N'Customer Care')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (1, N'Gas Binh Minh do', N'Gas Binh Minh mau do', 1, 1, 57, 300000, N'8h00 - 22h00', CAST(N'2020-07-27' AS Date), N'images/1.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (2, N'Gas Binh Minh xanh', N'Gas Binh Minh mau xanh', 1, 1, 53, 300000, N'8h00 - 22h00', CAST(N'2020-07-27' AS Date), N'images/2.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (3, N'Gas Binh Minh vang', N'Gas Binh Minh mau vang', 1, 1, 50, 300000, N'8h00 - 22h00', CAST(N'2020-07-29' AS Date), N'images/3.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (5, N'Gas Petrolimex lon', N'Gas Petrolimex loai lon', 1, 2, 68, 320000, N'9h00 - 22h00', CAST(N'2020-09-25' AS Date), N'images/4.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (6, N'Gas petrolimex nho', N'Gas Petrolimex loai nho', 1, 2, 55, 240000, N'9h00 - 22h00', CAST(N'2020-09-25' AS Date), N'images/5.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (7, N'Sua dien tai gia HCM', N'Sua he thong dien tai gia o HCM', 2, 9, 1, 100000, N'8h00 - 21h00', CAST(N'2020-01-20' AS Date), N'images/6.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (8, N'Sua dien tai gia HN', N'Sua he thong dien tai nha o Ha Noi', 2, 10, 1, 100000, N'8h00 - 21h00', CAST(N'2020-01-20' AS Date), N'images/6.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (9, N'Gao thom Jasmine 85', N'Gao thom Jasmin 85 thom ngon va deo', 3, 11, 107, 14000, N'7h00 - 20h00', CAST(N'2021-05-15' AS Date), N'images/7.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (10, N'Gao Ham Chau', N'Gao Ham Chau noi tieng thom ngon va day dan', 3, 11, 104, 13500, N'7h00 - 20h00', CAST(N'2021-05-15' AS Date), N'images/8.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (11, N'Gao nang Xuan', N'Gao nang Xuan dac san duoc lai tao tu  2 giong lua  Tam Xoan va loai Khao Dawk Mali', 3, 12, 97, 23000, N'8h00 - 20h00', CAST(N'2021-07-27' AS Date), N'images/9.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (12, N'Gao Bac Huong', N'Gao Bac Huong deo dep thom ngon', 3, 12, 112, 22000, N'8h00 - 20h00', CAST(N'2021-07-27' AS Date), N'images/10.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (13, N'Gao ST24', N'Gao ST24', 3, 13, 87, 36000, N'8h00 - 21h00', CAST(N'2021-04-05' AS Date), N'images/11.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (14, N'Gao ST25', N'Gao ST25', 3, 13, 0, 40000, N'8h00 - 21h00', CAST(N'2021-04-05' AS Date), N'images/12.jpg', N'Unavailable')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (15, N'Lavie 350ml', N'Chai Lavie dugn tich 350ml', 4, 5, 247, 6000, N'8h00 - 21h00', CAST(N'2020-03-14' AS Date), N'images/13.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (16, N'Lavie 500ml', N'Chai Lavie dung tich 500ml', 4, 5, 297, 8000, N'8h00 - 21h00', CAST(N'2020-03-14' AS Date), N'images/14.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (17, N'Lavie 1,5L', N'Chai Lavie dung tich 1,5L', 4, 5, 175, 12000, N'8h00 - 21h00', CAST(N'2020-03-14' AS Date), N'images/15.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (18, N'Aquafina 350ml', N'Chai Aquafina dung tich 350ml', 4, 6, 212, 7000, N'8h00 - 21h00', CAST(N'2020-04-18' AS Date), N'images/16.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (19, N'Aquafina 500ml', N'Chai Aquafina dung tich 500ml', 4, 6, 259, 8000, N'8h00 - 21h00', CAST(N'2020-04-18' AS Date), N'images/17.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (21, N'Aquafina 1,5L', N'Chai Aquafina dung tich 1,5L', 4, 6, 197, 11000, N'8h00 - 21h00', CAST(N'2020-04-18' AS Date), N'images/18.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (22, N'Vinh Hao 450ml', N'Chai nuoc Vinh Hao dung tich 450ml', 4, 7, 317, 7500, N'8h00 - 22h00', CAST(N'2020-06-22' AS Date), N'images/19.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (24, N'Vinh Hao 1L', N'Chai nuoc Vinh Hao dung tich 1L', 4, 7, 165, 10000, N'8h000 - 22h00', CAST(N'2020-06-22' AS Date), N'images/20.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (25, N'Combo Rau cu xanh', N'Rau sup lo xanh + ca chua 2 trai + thi la + bap cai + nam 100gr', 6, 14, 5, 100000, N'6h00 - 22h00', CAST(N'2022-05-10' AS Date), N'images/21.jpg', N'Waiting')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (27, N'Combo Rau Cu Xanh 2', N'Rau muong + ca chua 2 qua + hanh la + hanh kho + nam', 6, 14, 7, 95000, N'6h00 - 22h00', CAST(N'2022-05-10' AS Date), N'images/22.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (29, N'Combo Nam thuong hang', N'Nam moc nhi 2gr + nam rom 100gr + Nam kim cham 200gr', 6, 15, 12, 75000, N'6h00 - 22h00', CAST(N'2022-07-27' AS Date), N'images/23.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (30, N'Combo Ca Tuoi', N'Ca ngu 1kg + Ca Thu dao 55gr + Ca chua + thi la', 6, 15, 7, 175000, N'6h00 - 22h00', CAST(N'2022-07-30' AS Date), N'images/24.jpg', N'Waiting')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (31, N'Tu lanh Samsung', N'Tu lanh Samsung doi moi', 5, 17, 17, 6700000, N'6h00 - 22h00', CAST(N'2022-01-07' AS Date), N'images/25.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (32, N'May Lanh Toshiba', N'may lanh hieu Toshiba cuc chat luong', 5, 17, 17, 4500000, N'6h00 -22h00', CAST(N'2022-01-07' AS Date), N'images/26.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (34, N'Quat loc khong khi eQuazt', N'Quat loc khong khi cua hang eQuazt sieu ben va sach se', 5, 16, 12, 3500000, N'6h00 - 21h00', CAST(N'2022-04-17' AS Date), N'images/27.jpg', N'Available')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Category_ID], [Supplier_ID], [Quantity], [Price], [Working_Time], [Release_Time], [Image], [Status]) VALUES (35, N'May hut bui Akasha', N'May hut bui mini hang Akasha', 5, 16, 7, 2300000, N'6h00 - 21h00', CAST(N'2022-04-17' AS Date), N'images/28.jpg', N'Available')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (1, 3, N'Gas Binh Minh', N'12A Truong Trinh', N'0121984120', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (2, 3, N'Petrolimex Gas', N'147C Tan Phu', N'0747894522', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (3, 3, N'Siam Gas', N'275 Ly Chinh Thang', N'0417845112', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (4, 3, N'Good Gas', N'1C Hoang Van Thu', N'0777477212', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (5, 7, N'Valie', N'5 bis Le Thanh Tong', N'0121212154', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (6, 7, N'Aquafina', N'57 Le Loi', N'0512154578', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (7, 7, N'Satori', N'117 Phan Dinh Phung', N'0479452409', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (8, 7, N'Vinh Hao', N'99F Le Thi Rieng', N'0426456488', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (9, 10, N'Vien Thong TPHCM', N'23F Tran Hien', N'0246456495', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (10, 10, N'Vien Thong Ha Noi', N'786E hem 16', N'0111145458', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (11, 11, N'Gao Hat Ngoc Troi', N'14F/65 Nguyen Hong Dao', N'0646456464', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (12, 11, N'Gao Minh Tam', N'11/47 Bac Hai', N'0456456465', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (13, 11, N'Gao ST Thanh Tin', N'543 Bo Ke', N'0787879549', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (14, 12, N'Bach Hoa Xanh', N'57 Nguyen Thi Minh Khai', N'0774787521', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (15, 12, N'VinMart', N'165 Nguyen Khai', N'0897545454', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (16, 13, N'Nguyen Kim', N'99 Cong Hoa', N'0987954594', N'active')
INSERT [dbo].[Supplier] ([ID], [Account_ID], [Supplier_Name], [Address], [Phone], [Status]) VALUES (17, 13, N'Dien May Xanh', N'9L Duong so 1', N'0549496488', N'active')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feeback_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feeback_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Service] FOREIGN KEY([Service_ID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Service]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Category]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Supplier]
GO
ALTER TABLE [dbo].[Service_Cart]  WITH CHECK ADD  CONSTRAINT [FK_Service_Cart_Cart] FOREIGN KEY([Cart_ID])
REFERENCES [dbo].[Cart] ([ID])
GO
ALTER TABLE [dbo].[Service_Cart] CHECK CONSTRAINT [FK_Service_Cart_Cart]
GO
ALTER TABLE [dbo].[Service_Cart]  WITH CHECK ADD  CONSTRAINT [FK_Service_Cart_Service] FOREIGN KEY([Service_ID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[Service_Cart] CHECK CONSTRAINT [FK_Service_Cart_Service]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Account]
GO
USE [master]
GO
ALTER DATABASE [eButler] SET  READ_WRITE 
GO
