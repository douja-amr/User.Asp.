USE [master]
GO
/****** Object:  Database [AuthUser]    Script Date: 03/03/2021 17:20:38 ******/
CREATE DATABASE [AuthUser]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AuthUser', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AuthUser.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AuthUser_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AuthUser_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AuthUser] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AuthUser].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AuthUser] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AuthUser] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AuthUser] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AuthUser] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AuthUser] SET ARITHABORT OFF 
GO
ALTER DATABASE [AuthUser] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AuthUser] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AuthUser] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AuthUser] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AuthUser] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AuthUser] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AuthUser] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AuthUser] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AuthUser] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AuthUser] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AuthUser] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AuthUser] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AuthUser] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AuthUser] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AuthUser] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AuthUser] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AuthUser] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AuthUser] SET RECOVERY FULL 
GO
ALTER DATABASE [AuthUser] SET  MULTI_USER 
GO
ALTER DATABASE [AuthUser] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AuthUser] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AuthUser] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AuthUser] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AuthUser] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AuthUser] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AuthUser', N'ON'
GO
ALTER DATABASE [AuthUser] SET QUERY_STORE = OFF
GO
USE [AuthUser]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03/03/2021 17:20:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[firstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[CIN] [nvarchar](100) NULL,
	[Adresse] [nvarchar](100) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210224084718_Auth', N'5.0.3')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1b774f27-88e8-4921-b8f8-c2fbf16db88c', N'User', N'USER', N'325e3cee-f45f-4a20-8a7e-25e8ddd9a0f7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a5911e0c-e126-4bb2-a895-3c0d63c2118e', N'Admin', N'ADMIN', N'3b782dcc-b313-413f-98b6-8f5785e41c47')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1d74dd21-af8b-479b-a6ab-12fe4146be27', N'1b774f27-88e8-4921-b8f8-c2fbf16db88c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6156847d-f627-4a58-96c4-ece28a4a6056', N'1b774f27-88e8-4921-b8f8-c2fbf16db88c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2cefca6a-cb25-41ef-94b6-9c33a4170a2e', N'a5911e0c-e126-4bb2-a895-3c0d63c2118e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c245cca-3335-40e7-a4f0-c953beb5e9b5', N'a5911e0c-e126-4bb2-a895-3c0d63c2118e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e4eee541-a2ca-4858-9485-b72741c89eb5', N'a5911e0c-e126-4bb2-a895-3c0d63c2118e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f69d7581-2bc9-4b02-a18f-363890d6020f', N'a5911e0c-e126-4bb2-a895-3c0d63c2118e')
GO
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1', N'qdqsd', N'azdazd', N'qsf', N'dazd', N'aaaa', NULL, N'khadija.amardoul1@gmail.com', N'khadija.amardoul1@gmail.com', 0, N'123456Ab.', NULL, NULL, N'679606641', 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1d74dd21-af8b-479b-a6ab-12fe4146be27', N'wafaa', NULL, NULL, NULL, N'wafaa1@gmail.com', N'WAFAA1@GMAIL.COM', N'wafaa1@gmail.com', N'WAFAA1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO/9ijemdqy+7pErlguryMXsiyXavLVbdSA1OrPMCgNIsOMkeP3i1QEmSUb7lcVUxQ==', N'5MJM7HESXKH7F3PFQBSVSKDQXUV55SFC', N'c0a43a86-0d8d-413a-9cd4-6ac77df23580', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2', N'Ima', N'Allison', N'Veniam est nemo il', N'Laboris sit cupidata', N'bimazagu', N'juviwupaw', N'gewivifiri@mailinator.com', N'nuled@mailinator.com', 1, N'Adam123.', NULL, N'Magna reiciendis vol', N'+1 (482) 796-3312', 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2cefca6a-cb25-41ef-94b6-9c33a4170a2e', N'Althea', NULL, NULL, NULL, N'hewa@mailinator.com', N'HEWA@MAILINATOR.COM', N'hewa@mailinator.com', N'HEWA@MAILINATOR.COM', 1, N'AQAAAAEAACcQAAAAEKfDURPGvfGiM3rd26H/DchukeEK8OKPQHMpsE2WdHkaoApBKzS5oRBiUpk5wF9a6A==', N'764D4M5SOUVPBIHIXC3RHQ7KFQUFK4CV', N'79f3854c-4bdb-4a6c-b47d-232f31abf845', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'31987f31-2040-4a08-b753-ec67ce7b5fcb', N'mery', NULL, NULL, NULL, N'mery@gmail.com', N'MERY@GMAIL.COM', N'mery@gmail.com', N'MERY@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPuWV3tYdh9VN5P1NWIdq1i/E/N8F/eAu7uarEZILUuh5PpznWG9XUD7fcAIJQ+RyA==', N'DBLHCSR2KWGSYXE7W7MNJUIPKRIE47WK', N'549af6a3-fdb0-4568-a58a-56e155c81672', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3fbca2c7-219f-4800-ac8f-e8754c49cd74', N'yaa', NULL, NULL, NULL, N'yaa@gmail.com', N'YAA@GMAIL.COM', N'yaa@gmail.com', N'YAA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBX8jDIo2RxjOX83yns3qRZ3AfeZCOU2BRt8r73+UdJit3q2wOjGYUUSNXR/xtrsow==', N'5KIWR7YPIBH7NW7WYI5XKV5LM2T43PZZ', N'828f88f1-3e43-4150-b395-a61622ab624e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4c245cca-3335-40e7-a4f0-c953beb5e9b5', N'Noelani', NULL, NULL, NULL, N'dejaf@mailinator.com', N'DEJAF@MAILINATOR.COM', N'dejaf@mailinator.com', N'DEJAF@MAILINATOR.COM', 0, N'AQAAAAEAACcQAAAAEEl+W4h1b7ZbiSL7bgFtzyquStmbwjZt1uCRoDi0P+0wvin7gmP+zHSpYq6UdmJSWg==', N'2NKA2GH53PBJWXRVYEJYC2D6N75XCJXJ', N'beac1962-17e5-4940-ad99-13668986b58d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6156847d-f627-4a58-96c4-ece28a4a6056', N'Signe', NULL, NULL, NULL, N'jyvufem@mailinator.com', N'JYVUFEM@MAILINATOR.COM', N'jyvufem@mailinator.com', N'JYVUFEM@MAILINATOR.COM', 1, N'AQAAAAEAACcQAAAAEMpcIOKQaDUaCISYbqPJKrvuUGEgXUUqoPvgPEmk2EGzbHP7vK+KeJefhlrkD4efnQ==', N'X6QKY6L2VZDSBZ25MV6LUTUD7VADKFW4', N'4a4bc6e2-5969-467f-9e06-a29ce4cc3d58', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7c3e9770-a991-4460-bb53-3face21ddd47', N'douja', NULL, NULL, NULL, N'douja@gmail.com', N'DOUJA@GMAIL.COM', N'douja@gmail.com', N'DOUJA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK/u/yD/KWauknGAqOovc8Y4zpuslNvUUDiy8+Ktm7hLquOaN5No8FgWXbqne7MPqw==', N'AUNK7NDFGEW4CVMN23OUYIXE3LTA7WM7', N'871d6a07-093d-496e-90d9-cadc489aff96', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a6f500ab-af45-41d7-9c0e-148d4859aece', N'Murphy', NULL, NULL, NULL, N'favamovex@mailinator.com', N'FAVAMOVEX@MAILINATOR.COM', N'favamovex@mailinator.com', N'FAVAMOVEX@MAILINATOR.COM', 1, N'AQAAAAEAACcQAAAAEJYMJWkDEsTYdUaM+NKw1bIhC8aHrTlZnP6UnizUHMzCX5ZHvorjPDxe2ojv+4vICQ==', N'C3DA36RLRYT4DKDJVCWHKS2ENPOULXPU', N'587cd2c8-e335-4d7b-8366-7a9b51c9d490', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e4eee541-a2ca-4858-9485-b72741c89eb5', N'wafaa', NULL, NULL, NULL, N'wafaa@gmail.com', N'WAFAA@GMAIL.COM', N'wafaa@gmail.com', N'WAFAA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELdlU888a/UqNcQRfbhYJFPlkrOlu9/wAh6cE3DNrAGmOp70uvPY9kp9ETqHU2Rg2g==', N'SPURD4GU3YAKGO43LROWSSUW2QCE6LNO', N'190a86e9-4c6b-4c1e-9b0b-2e11cc10c517', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [LastName], [CIN], [Adresse], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f69d7581-2bc9-4b02-a18f-363890d6020f', N'khadija', NULL, NULL, NULL, N'khadija1@gmail.com', N'KHADIJA1@GMAIL.COM', N'khadija1@gmail.com', N'KHADIJA1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPswYIgvWg7uHkbkLeHgtdx/JaYg2ezSrHYUgPNTeECpLhjhlmaEZq2aaVHjtMnDfg==', N'7AJ47Q7ZVA6PJT5L23EI2ZEIWKXCVVNG', N'43a8ca6a-06fb-4aa4-86a7-fe20c305e842', NULL, 0, 0, NULL, 1, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 03/03/2021 17:20:40 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 03/03/2021 17:20:40 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 03/03/2021 17:20:40 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 03/03/2021 17:20:40 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 03/03/2021 17:20:40 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 03/03/2021 17:20:40 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 03/03/2021 17:20:40 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[spGetUserById]    Script Date: 03/03/2021 17:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spGetUserById]
@Id int
as
Begin
 Select * from AspNetUsers
 Where Id = @Id
End
GO
USE [master]
GO
ALTER DATABASE [AuthUser] SET  READ_WRITE 
GO
