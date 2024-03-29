USE [master]
GO
/****** Object:  Database [eshop]    Script Date: 2019/1/4 22:35:51 ******/
CREATE DATABASE [eshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eshop_Data', FILENAME = N'D:\学习\EShop模板 - ASP.Net\数据库\eshop_Data.MDF' , SIZE = 3712KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'eshop_Log', FILENAME = N'D:\学习\EShop模板 - ASP.Net\数据库\eshop_Log.LDF' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [eshop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eshop].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [eshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [eshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eshop] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [eshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eshop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eshop] SET  MULTI_USER 
GO
ALTER DATABASE [eshop] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [eshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eshop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [eshop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'eshop', N'ON'
GO
ALTER DATABASE [eshop] SET QUERY_STORE = OFF
GO
USE [eshop]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [eshop]
GO
/****** Object:  Table [dbo].[addname]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addname](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminId] [int] IDENTITY(1,1) NOT NULL,
	[adminName] [nvarchar](20) NULL,
	[adminPassword] [nvarchar](10) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[MerId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[classOne]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classOne](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClassI] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[classTwo]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classTwo](
	[ClassTwoId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[ClassTwoName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_classTwo] PRIMARY KEY CLUSTERED 
(
	[ClassTwoId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contact]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[Addressee] [varchar](50) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[zip] [varchar](50) NOT NULL,
	[DefaultValue] [bit] NULL,
	[datatime] [varchar](50) NULL,
	[AddnameId] [int] NULL,
	[remark] [varchar](50) NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[focus]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[focus](
	[MemberId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_focus] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[member]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Memberlevel] [int] NULL,
	[LoginName] [varchar](12) NOT NULL,
	[LoginPwd] [varchar](12) NOT NULL,
	[Sex] [varchar](50) NULL,
	[Birth] [varchar](50) NULL,
	[Eduation] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [varchar](100) NULL,
	[Zip] [varchar](6) NULL,
	[Email] [varchar](100) NULL,
	[RegDate] [varchar](50) NULL,
	[LastDate] [varchar](50) NULL,
	[LoginTimes] [int] NULL,
	[head] [varchar](50) NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[merchandisc]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merchandisc](
	[MerId] [varchar](50) NOT NULL,
	[category] [int] NULL,
	[MerName] [varchar](100) NULL,
	[Price] [decimal](18, 0) NULL,
	[SPrice] [decimal](18, 0) NULL,
	[Picture] [varchar](50) NULL,
	[GoodDesc] [text] NULL,
	[GoodFacturer] [varchar](50) NULL,
	[LeaveFactoryDate] [varchar](50) NULL,
	[Special] [int] NULL,
	[inputdate] [varchar](50) NULL,
	[bengindate] [varchar](50) NULL,
	[enddate] [varchar](50) NULL,
 CONSTRAINT [PK_merchandisc] PRIMARY KEY CLUSTERED 
(
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[MerId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[topic] [varchar](50) NOT NULL,
	[content] [varchar](100) NOT NULL,
	[MemberId] [int] NOT NULL,
	[DateLine] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[new]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[new](
	[NewId] [int] NOT NULL,
	[NewTitle] [nvarchar](50) NULL,
	[NewContent] [text] NULL,
	[NewAddTime] [datetime] NULL,
	[NewAddAuthor] [nvarchar](50) NULL,
 CONSTRAINT [PK_new] PRIMARY KEY CLUSTERED 
(
	[NewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orderDetail]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetail](
	[OrderId] [varchar](50) NOT NULL,
	[MerId] [varchar](50) NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 2019/1/4 22:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[OrderId] [varchar](50) NOT NULL,
	[MemberId] [int] NOT NULL,
	[ContactId] [int] NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[Status] [int] NOT NULL,
	[OrderDate] [varchar](50) NOT NULL,
	[PayDate] [varchar](50) NULL,
	[DeliverDate] [varchar](50) NULL,
	[ReceiptDate] [varchar](50) NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物车编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'CartId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'MerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加入是商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'MerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'MerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际售价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'SPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'Picture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'GoodDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品制造商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'GoodFacturer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'MerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'DateLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'ContactId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'PayDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'DeliverDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
USE [master]
GO
ALTER DATABASE [eshop] SET  READ_WRITE 
GO
