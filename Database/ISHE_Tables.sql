USE [smarthouse_ISHE]
GO
ALTER TABLE [dbo].[TellerAccount] DROP CONSTRAINT [FK__TellerAcc__Accou__6CA31EA0]
GO
ALTER TABLE [dbo].[SurveyRequest] DROP CONSTRAINT [FK__SurveyReq__Staff__13BCEBC1]
GO
ALTER TABLE [dbo].[SurveyRequest] DROP CONSTRAINT [FK__SurveyReq__Custo__12C8C788]
GO
ALTER TABLE [dbo].[Survey] DROP CONSTRAINT [FK__Survey__SurveyRe__1881A0DE]
GO
ALTER TABLE [dbo].[Survey] DROP CONSTRAINT [FK__Survey__Recommen__1975C517]
GO
ALTER TABLE [dbo].[StaffAccount] DROP CONSTRAINT [FK__StaffAcco__Staff__68D28DBC]
GO
ALTER TABLE [dbo].[StaffAccount] DROP CONSTRAINT [FK__StaffAcco__Accou__67DE6983]
GO
ALTER TABLE [dbo].[SmartDevicePromotion] DROP CONSTRAINT [FK__SmartDevi__Promo__473C8FC7]
GO
ALTER TABLE [dbo].[SmartDevicePromotion] DROP CONSTRAINT [FK__SmartDevi__Devic__4830B400]
GO
ALTER TABLE [dbo].[SmartDevicePackage] DROP CONSTRAINT [FK__SmartDevi__Smart__056ECC6A]
GO
ALTER TABLE [dbo].[SmartDevicePackage] DROP CONSTRAINT [FK__SmartDevi__Devic__0662F0A3]
GO
ALTER TABLE [dbo].[SmartDevice] DROP CONSTRAINT [FK__SmartDevi__Manuf__7CD98669]
GO
ALTER TABLE [dbo].[Payment] DROP CONSTRAINT [FK__Payment__Contrac__30592A6F]
GO
ALTER TABLE [dbo].[OwnerAccount] DROP CONSTRAINT [FK__OwnerAcco__Accou__6501FCD8]
GO
ALTER TABLE [dbo].[Notification] DROP CONSTRAINT [FK__Notificat__Accou__725BF7F6]
GO
ALTER TABLE [dbo].[Image] DROP CONSTRAINT [FK__Image__SmartDevi__0EF836A4]
GO
ALTER TABLE [dbo].[Image] DROP CONSTRAINT [FK__Image__DevicePac__0E04126B]
GO
ALTER TABLE [dbo].[FeedbackDevicePackage] DROP CONSTRAINT [FK__FeedbackD__Devic__0A338187]
GO
ALTER TABLE [dbo].[FeedbackDevicePackage] DROP CONSTRAINT [FK__FeedbackD__Custo__093F5D4E]
GO
ALTER TABLE [dbo].[DeviceToken] DROP CONSTRAINT [FK__DeviceTok__Accou__61316BF4]
GO
ALTER TABLE [dbo].[DevicePackageUsage] DROP CONSTRAINT [FK__DevicePac__Devic__25DB9BFC]
GO
ALTER TABLE [dbo].[DevicePackageUsage] DROP CONSTRAINT [FK__DevicePac__Contr__24E777C3]
GO
ALTER TABLE [dbo].[DevicePackage] DROP CONSTRAINT [FK__DevicePac__Manuf__00AA174D]
GO
ALTER TABLE [dbo].[CustomerAccount] DROP CONSTRAINT [FK__CustomerA__Accou__6F7F8B4B]
GO
ALTER TABLE [dbo].[ContractModificationRequest] DROP CONSTRAINT [FK__ContractM__Contr__38EE7070]
GO
ALTER TABLE [dbo].[ContractDetail] DROP CONSTRAINT [FK__ContractD__Smart__2AA05119]
GO
ALTER TABLE [dbo].[ContractDetail] DROP CONSTRAINT [FK__ContractD__Contr__29AC2CE0]
GO
ALTER TABLE [dbo].[Contract] DROP CONSTRAINT [FK__Contract__Teller__2022C2A6]
GO
ALTER TABLE [dbo].[Contract] DROP CONSTRAINT [FK__Contract__Survey__1E3A7A34]
GO
ALTER TABLE [dbo].[Contract] DROP CONSTRAINT [FK__Contract__StaffI__1F2E9E6D]
GO
ALTER TABLE [dbo].[Contract] DROP CONSTRAINT [FK__Contract__Custom__2116E6DF]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__RoleId__5D60DB10]
GO
ALTER TABLE [dbo].[Acceptance] DROP CONSTRAINT [FK__Acceptanc__Contr__351DDF8C]
GO
ALTER TABLE [dbo].[SurveyRequest] DROP CONSTRAINT [DF__SurveyReq__Creat__14B10FFA]
GO
ALTER TABLE [dbo].[Survey] DROP CONSTRAINT [DF__Survey__CreateAt__1A69E950]
GO
ALTER TABLE [dbo].[StaffAccount] DROP CONSTRAINT [DF__StaffAcco__IsLea__69C6B1F5]
GO
ALTER TABLE [dbo].[SmartDevice] DROP CONSTRAINT [DF__SmartDevi__Creat__7DCDAAA2]
GO
ALTER TABLE [dbo].[Promotion] DROP CONSTRAINT [DF__Promotion__Creat__79FD19BE]
GO
ALTER TABLE [dbo].[Payment] DROP CONSTRAINT [DF__Payment__CreateA__314D4EA8]
GO
ALTER TABLE [dbo].[Notification] DROP CONSTRAINT [DF__Notificat__Creat__74444068]
GO
ALTER TABLE [dbo].[Notification] DROP CONSTRAINT [DF__Notificat__IsRea__73501C2F]
GO
ALTER TABLE [dbo].[Manufacturer] DROP CONSTRAINT [DF__Manufactu__Creat__7720AD13]
GO
ALTER TABLE [dbo].[Image] DROP CONSTRAINT [DF__Image__CreateAt__0FEC5ADD]
GO
ALTER TABLE [dbo].[FeedbackDevicePackage] DROP CONSTRAINT [DF__FeedbackD__Creat__0B27A5C0]
GO
ALTER TABLE [dbo].[DeviceToken] DROP CONSTRAINT [DF__DeviceTok__Creat__6225902D]
GO
ALTER TABLE [dbo].[DevicePackageUsage] DROP CONSTRAINT [DF__DevicePac__Creat__26CFC035]
GO
ALTER TABLE [dbo].[DevicePackage] DROP CONSTRAINT [DF__DevicePac__Creat__02925FBF]
GO
ALTER TABLE [dbo].[ContractModificationRequest] DROP CONSTRAINT [DF__ContractM__Creat__39E294A9]
GO
ALTER TABLE [dbo].[ContractDetail] DROP CONSTRAINT [DF__ContractD__Creat__2D7CBDC4]
GO
ALTER TABLE [dbo].[ContractDetail] DROP CONSTRAINT [DF__ContractD__Insta__2C88998B]
GO
ALTER TABLE [dbo].[ContractDetail] DROP CONSTRAINT [DF__ContractD__IsIns__2B947552]
GO
ALTER TABLE [dbo].[Contract] DROP CONSTRAINT [DF__Contract__Create__220B0B18]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF__Account__CreateA__5E54FF49]
GO
ALTER TABLE [dbo].[Acceptance] DROP CONSTRAINT [DF__Acceptanc__Creat__361203C5]
GO
/****** Object:  Table [dbo].[TellerAccount]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TellerAccount]') AND type in (N'U'))
DROP TABLE [dbo].[TellerAccount]
GO
/****** Object:  Table [dbo].[SurveyRequest]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SurveyRequest]') AND type in (N'U'))
DROP TABLE [dbo].[SurveyRequest]
GO
/****** Object:  Table [dbo].[Survey]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Survey]') AND type in (N'U'))
DROP TABLE [dbo].[Survey]
GO
/****** Object:  Table [dbo].[StaffAccount]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StaffAccount]') AND type in (N'U'))
DROP TABLE [dbo].[StaffAccount]
GO
/****** Object:  Table [dbo].[SmartDevicePromotion]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SmartDevicePromotion]') AND type in (N'U'))
DROP TABLE [dbo].[SmartDevicePromotion]
GO
/****** Object:  Table [dbo].[SmartDevicePackage]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SmartDevicePackage]') AND type in (N'U'))
DROP TABLE [dbo].[SmartDevicePackage]
GO
/****** Object:  Table [dbo].[SmartDevice]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SmartDevice]') AND type in (N'U'))
DROP TABLE [dbo].[SmartDevice]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Promotion]') AND type in (N'U'))
DROP TABLE [dbo].[Promotion]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payment]') AND type in (N'U'))
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[OwnerAccount]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OwnerAccount]') AND type in (N'U'))
DROP TABLE [dbo].[OwnerAccount]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notification]') AND type in (N'U'))
DROP TABLE [dbo].[Notification]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[Manufacturer]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Image]') AND type in (N'U'))
DROP TABLE [dbo].[Image]
GO
/****** Object:  Table [dbo].[FeedbackDevicePackage]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedbackDevicePackage]') AND type in (N'U'))
DROP TABLE [dbo].[FeedbackDevicePackage]
GO
/****** Object:  Table [dbo].[DeviceToken]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeviceToken]') AND type in (N'U'))
DROP TABLE [dbo].[DeviceToken]
GO
/****** Object:  Table [dbo].[DevicePackageUsage]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DevicePackageUsage]') AND type in (N'U'))
DROP TABLE [dbo].[DevicePackageUsage]
GO
/****** Object:  Table [dbo].[DevicePackage]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DevicePackage]') AND type in (N'U'))
DROP TABLE [dbo].[DevicePackage]
GO
/****** Object:  Table [dbo].[CustomerAccount]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAccount]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerAccount]
GO
/****** Object:  Table [dbo].[ContractModificationRequest]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContractModificationRequest]') AND type in (N'U'))
DROP TABLE [dbo].[ContractModificationRequest]
GO
/****** Object:  Table [dbo].[ContractDetail]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContractDetail]') AND type in (N'U'))
DROP TABLE [dbo].[ContractDetail]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contract]') AND type in (N'U'))
DROP TABLE [dbo].[Contract]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Acceptance]    Script Date: 5/31/2024 12:16:55 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Acceptance]') AND type in (N'U'))
DROP TABLE [dbo].[Acceptance]
GO
USE [master]
GO
/****** Object:  Database [smarthouse_ISHE]    Script Date: 5/31/2024 12:16:55 AM ******/
DROP DATABASE [smarthouse_ISHE]
GO
/****** Object:  Database [smarthouse_ISHE]    Script Date: 5/31/2024 12:16:55 AM ******/
CREATE DATABASE [smarthouse_ISHE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'smarthouse_ISHE', FILENAME = N'D:\sql-freeasphost-user-dbs\smarthouse_ISHE.mdf' , SIZE = 10240KB , MAXSIZE = 51200KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'smarthouse_ISHE_log', FILENAME = N'D:\sql-freeasphost-user-dbs\smarthouse_ISHE.ldf' , SIZE = 5120KB , MAXSIZE = 25600KB , FILEGROWTH = 5120KB )
GO
ALTER DATABASE [smarthouse_ISHE] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [smarthouse_ISHE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [smarthouse_ISHE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET ARITHABORT OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [smarthouse_ISHE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [smarthouse_ISHE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [smarthouse_ISHE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [smarthouse_ISHE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET RECOVERY FULL 
GO
ALTER DATABASE [smarthouse_ISHE] SET  MULTI_USER 
GO
ALTER DATABASE [smarthouse_ISHE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [smarthouse_ISHE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [smarthouse_ISHE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [smarthouse_ISHE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [smarthouse_ISHE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [smarthouse_ISHE] SET QUERY_STORE = OFF
GO
USE [smarthouse_ISHE]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [smarthouse_ISHE]
GO
/****** Object:  Table [dbo].[Acceptance]    Script Date: 5/31/2024 12:17:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceptance](
	[Id] [uniqueidentifier] NOT NULL,
	[ContractId] [varchar](255) NOT NULL,
	[ImageUrl] [varchar](max) NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[PhoneNumber] [varchar](30) NOT NULL,
	[PasswordHash] [varchar](255) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Id] [varchar](255) NOT NULL,
	[SurveyId] [uniqueidentifier] NOT NULL,
	[StaffId] [uniqueidentifier] NOT NULL,
	[TellerId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[StartPlanDate] [datetime] NOT NULL,
	[EndPlanDate] [datetime] NOT NULL,
	[ActualStartDate] [datetime] NULL,
	[ActualEndDate] [datetime] NULL,
	[TotalAmount] [int] NOT NULL,
	[ImageUrl] [varchar](max) NULL,
	[Deposit] [int] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SurveyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractDetail]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[ContractId] [varchar](255) NOT NULL,
	[SmartDeviceId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Type] [varchar](100) NOT NULL,
	[IsInstallation] [bit] NOT NULL,
	[InstallationPrice] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractModificationRequest]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractModificationRequest](
	[Id] [uniqueidentifier] NOT NULL,
	[ContractId] [varchar](255) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAccount]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAccount](
	[AccountId] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Email] [varchar](100) NULL,
	[Avatar] [varchar](max) NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Otp] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevicePackage]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevicePackage](
	[Id] [uniqueidentifier] NOT NULL,
	[ManufacturerId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[WarrantyDuration] [int] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[CompletionTime] [int] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevicePackageUsage]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevicePackageUsage](
	[Id] [uniqueidentifier] NOT NULL,
	[ContractId] [varchar](255) NOT NULL,
	[DevicePackageId] [uniqueidentifier] NOT NULL,
	[DiscountAmount] [int] NULL,
	[Price] [int] NOT NULL,
	[WarrantyDuration] [int] NULL,
	[StartWarranty] [datetime] NULL,
	[EndWarranty] [datetime] NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceToken]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceToken](
	[Id] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NOT NULL,
	[Token] [varchar](max) NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackDevicePackage]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackDevicePackage](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[DevicePackageId] [uniqueidentifier] NOT NULL,
	[Rating] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [uniqueidentifier] NOT NULL,
	[DevicePackageId] [uniqueidentifier] NULL,
	[SmartDeviceId] [uniqueidentifier] NULL,
	[Url] [varchar](max) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
	[Image] [varchar](max) NULL,
	[Origin] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[IsRead] [bit] NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OwnerAccount]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnerAccount](
	[AccountId] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Email] [varchar](100) NULL,
	[Avatar] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [varchar](255) NOT NULL,
	[ContractId] [varchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[PaymentMethod] [nvarchar](100) NOT NULL,
	[Amount] [int] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DiscountAmount] [int] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartDevice]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartDevice](
	[Id] [uniqueidentifier] NOT NULL,
	[ManufacturerId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[InstallationPrice] [int] NOT NULL,
	[DeviceType] [nvarchar](255) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartDevicePackage]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartDevicePackage](
	[SmartDeviceId] [uniqueidentifier] NOT NULL,
	[DevicePackageId] [uniqueidentifier] NOT NULL,
	[SmartDeviceQuantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SmartDeviceId] ASC,
	[DevicePackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartDevicePromotion]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartDevicePromotion](
	[PromotionId] [uniqueidentifier] NOT NULL,
	[DevicePackageId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC,
	[DevicePackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffAccount]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffAccount](
	[AccountId] [uniqueidentifier] NOT NULL,
	[StaffLeadId] [uniqueidentifier] NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Email] [varchar](100) NULL,
	[IsLead] [bit] NOT NULL,
	[Avatar] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Survey]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey](
	[Id] [uniqueidentifier] NOT NULL,
	[SurveyRequestId] [uniqueidentifier] NOT NULL,
	[RecommendDevicePackageId] [uniqueidentifier] NULL,
	[RoomArea] [decimal](18, 2) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AppointmentDate] [datetime] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SurveyRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyRequest]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyRequest](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[StaffId] [uniqueidentifier] NULL,
	[SurveyDate] [datetime] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TellerAccount]    Script Date: 5/31/2024 12:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TellerAccount](
	[AccountId] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Email] [varchar](100) NULL,
	[Avatar] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Acceptance] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Contract] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[ContractDetail] ADD  DEFAULT ((0)) FOR [IsInstallation]
GO
ALTER TABLE [dbo].[ContractDetail] ADD  DEFAULT ((0)) FOR [InstallationPrice]
GO
ALTER TABLE [dbo].[ContractDetail] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[ContractModificationRequest] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[DevicePackage] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[DevicePackageUsage] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[DeviceToken] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[FeedbackDevicePackage] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Image] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Manufacturer] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[SmartDevice] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[StaffAccount] ADD  DEFAULT ((0)) FOR [IsLead]
GO
ALTER TABLE [dbo].[Survey] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[SurveyRequest] ADD  DEFAULT (dateadd(hour,(7),getutcdate())) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Acceptance]  WITH CHECK ADD FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerAccount] ([AccountId])
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD FOREIGN KEY([StaffId])
REFERENCES [dbo].[StaffAccount] ([AccountId])
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD FOREIGN KEY([SurveyId])
REFERENCES [dbo].[Survey] ([Id])
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD FOREIGN KEY([TellerId])
REFERENCES [dbo].[TellerAccount] ([AccountId])
GO
ALTER TABLE [dbo].[ContractDetail]  WITH CHECK ADD FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[ContractDetail]  WITH CHECK ADD FOREIGN KEY([SmartDeviceId])
REFERENCES [dbo].[SmartDevice] ([Id])
GO
ALTER TABLE [dbo].[ContractModificationRequest]  WITH CHECK ADD FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[CustomerAccount]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[DevicePackage]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([Id])
GO
ALTER TABLE [dbo].[DevicePackageUsage]  WITH CHECK ADD FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[DevicePackageUsage]  WITH CHECK ADD FOREIGN KEY([DevicePackageId])
REFERENCES [dbo].[DevicePackage] ([Id])
GO
ALTER TABLE [dbo].[DeviceToken]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[FeedbackDevicePackage]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerAccount] ([AccountId])
GO
ALTER TABLE [dbo].[FeedbackDevicePackage]  WITH CHECK ADD FOREIGN KEY([DevicePackageId])
REFERENCES [dbo].[DevicePackage] ([Id])
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD FOREIGN KEY([DevicePackageId])
REFERENCES [dbo].[DevicePackage] ([Id])
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD FOREIGN KEY([SmartDeviceId])
REFERENCES [dbo].[SmartDevice] ([Id])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[OwnerAccount]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[SmartDevice]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([Id])
GO
ALTER TABLE [dbo].[SmartDevicePackage]  WITH CHECK ADD FOREIGN KEY([DevicePackageId])
REFERENCES [dbo].[DevicePackage] ([Id])
GO
ALTER TABLE [dbo].[SmartDevicePackage]  WITH CHECK ADD FOREIGN KEY([SmartDeviceId])
REFERENCES [dbo].[SmartDevice] ([Id])
GO
ALTER TABLE [dbo].[SmartDevicePromotion]  WITH CHECK ADD FOREIGN KEY([DevicePackageId])
REFERENCES [dbo].[DevicePackage] ([Id])
GO
ALTER TABLE [dbo].[SmartDevicePromotion]  WITH CHECK ADD FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[StaffAccount]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[StaffAccount]  WITH CHECK ADD FOREIGN KEY([StaffLeadId])
REFERENCES [dbo].[StaffAccount] ([AccountId])
GO
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD FOREIGN KEY([RecommendDevicePackageId])
REFERENCES [dbo].[DevicePackage] ([Id])
GO
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD FOREIGN KEY([SurveyRequestId])
REFERENCES [dbo].[SurveyRequest] ([Id])
GO
ALTER TABLE [dbo].[SurveyRequest]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerAccount] ([AccountId])
GO
ALTER TABLE [dbo].[SurveyRequest]  WITH CHECK ADD FOREIGN KEY([StaffId])
REFERENCES [dbo].[StaffAccount] ([AccountId])
GO
ALTER TABLE [dbo].[TellerAccount]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
USE [master]
GO
ALTER DATABASE [smarthouse_ISHE] SET  READ_WRITE 
GO
