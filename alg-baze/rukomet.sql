USE [master]
GO
/****** Object:  Database [rukomet]    Script Date: 29.1.2021. 20:01:53 ******/
CREATE DATABASE [rukomet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'rukomet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\rukomet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'rukomet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\rukomet_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [rukomet] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [rukomet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [rukomet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [rukomet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [rukomet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [rukomet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [rukomet] SET ARITHABORT OFF 
GO
ALTER DATABASE [rukomet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [rukomet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [rukomet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [rukomet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [rukomet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [rukomet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [rukomet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [rukomet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [rukomet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [rukomet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [rukomet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [rukomet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [rukomet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [rukomet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [rukomet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [rukomet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [rukomet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [rukomet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [rukomet] SET  MULTI_USER 
GO
ALTER DATABASE [rukomet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [rukomet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [rukomet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [rukomet] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [rukomet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [rukomet] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [rukomet] SET QUERY_STORE = OFF
GO
USE [rukomet]
GO
/****** Object:  Table [dbo].[igraci]    Script Date: 29.1.2021. 20:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[igraci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tim_id] [int] NULL,
	[ime] [nvarchar](50) NOT NULL,
	[prezime] [nvarchar](50) NOT NULL,
	[cijena] [money] NULL,
	[pozicija] [varchar](max) NULL,
 CONSTRAINT [PK_igraci] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statistika]    Script Date: 29.1.2021. 20:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statistika](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[igrac_id] [int] NOT NULL,
	[broj_golova] [int] NULL,
	[susret_id] [int] NOT NULL,
 CONSTRAINT [PK_statistika] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[susreti]    Script Date: 29.1.2021. 20:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[susreti](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domacin_id] [int] NOT NULL,
	[gost_id] [int] NOT NULL,
	[datum] [datetime] NOT NULL,
	[ishod] [nchar](5) NULL,
 CONSTRAINT [PK_susreti] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timovi]    Script Date: 29.1.2021. 20:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timovi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naziv] [nvarchar](50) NOT NULL,
	[trener] [nvarchar](50) NULL,
	[drzava] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_timovi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[igraci] ON 

INSERT [dbo].[igraci] ([id], [tim_id], [ime], [prezime], [cijena], [pozicija]) VALUES (1, NULL, N'Jure', N'juric', 10056.0000, N'centar')
INSERT [dbo].[igraci] ([id], [tim_id], [ime], [prezime], [cijena], [pozicija]) VALUES (2, 2, N'Marko', N'marki', 500.0000, N'left')
INSERT [dbo].[igraci] ([id], [tim_id], [ime], [prezime], [cijena], [pozicija]) VALUES (3, 2, N'mirko', N'mrki', 100.0000, N'back')
INSERT [dbo].[igraci] ([id], [tim_id], [ime], [prezime], [cijena], [pozicija]) VALUES (4, 6, N'ddd', N'dd', 55.0000, N'left')
SET IDENTITY_INSERT [dbo].[igraci] OFF
GO
SET IDENTITY_INSERT [dbo].[statistika] ON 

INSERT [dbo].[statistika] ([id], [igrac_id], [broj_golova], [susret_id]) VALUES (2, 3, 10, 2)
INSERT [dbo].[statistika] ([id], [igrac_id], [broj_golova], [susret_id]) VALUES (5, 4, 15, 2)
INSERT [dbo].[statistika] ([id], [igrac_id], [broj_golova], [susret_id]) VALUES (6, 4, 20, 5)
SET IDENTITY_INSERT [dbo].[statistika] OFF
GO
SET IDENTITY_INSERT [dbo].[susreti] ON 

INSERT [dbo].[susreti] ([id], [domacin_id], [gost_id], [datum], [ishod]) VALUES (2, 2, 6, CAST(N'2021-01-29T19:30:00.000' AS DateTime), N'25:20')
INSERT [dbo].[susreti] ([id], [domacin_id], [gost_id], [datum], [ishod]) VALUES (3, 6, 2, CAST(N'2021-01-30T20:00:00.000' AS DateTime), N'30:28')
INSERT [dbo].[susreti] ([id], [domacin_id], [gost_id], [datum], [ishod]) VALUES (5, 2, 7, CAST(N'2021-02-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[susreti] ([id], [domacin_id], [gost_id], [datum], [ishod]) VALUES (6, 7, 2, CAST(N'2021-02-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[susreti] ([id], [domacin_id], [gost_id], [datum], [ishod]) VALUES (8, 7, 6, CAST(N'2021-02-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[susreti] ([id], [domacin_id], [gost_id], [datum], [ishod]) VALUES (9, 6, 7, CAST(N'2021-02-07T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[susreti] OFF
GO
SET IDENTITY_INSERT [dbo].[timovi] ON 

INSERT [dbo].[timovi] ([id], [naziv], [trener], [drzava]) VALUES (2, N'kauboji', N'Jimmy', N'Hr')
INSERT [dbo].[timovi] ([id], [naziv], [trener], [drzava]) VALUES (5, N'indija', N'muhhabaraharata', N'Slo')
INSERT [dbo].[timovi] ([id], [naziv], [trener], [drzava]) VALUES (6, N'japan', N'A-ca', N'Jp')
INSERT [dbo].[timovi] ([id], [naziv], [trener], [drzava]) VALUES (7, N'Kinezi', N'Chin chin', N'Chn')
INSERT [dbo].[timovi] ([id], [naziv], [trener], [drzava]) VALUES (8, N'Mexici', N'Juan tequila', N'Mx')
SET IDENTITY_INSERT [dbo].[timovi] OFF
GO
ALTER TABLE [dbo].[igraci] ADD  CONSTRAINT [DF_igraci_pozicija]  DEFAULT ('centar') FOR [pozicija]
GO
ALTER TABLE [dbo].[igraci]  WITH CHECK ADD  CONSTRAINT [FK_igraci_timovi] FOREIGN KEY([tim_id])
REFERENCES [dbo].[timovi] ([id])
GO
ALTER TABLE [dbo].[igraci] CHECK CONSTRAINT [FK_igraci_timovi]
GO
ALTER TABLE [dbo].[statistika]  WITH CHECK ADD  CONSTRAINT [FK_statistika_igraci] FOREIGN KEY([igrac_id])
REFERENCES [dbo].[igraci] ([id])
GO
ALTER TABLE [dbo].[statistika] CHECK CONSTRAINT [FK_statistika_igraci]
GO
ALTER TABLE [dbo].[statistika]  WITH CHECK ADD  CONSTRAINT [FK_statistika_susreti] FOREIGN KEY([susret_id])
REFERENCES [dbo].[susreti] ([id])
GO
ALTER TABLE [dbo].[statistika] CHECK CONSTRAINT [FK_statistika_susreti]
GO
ALTER TABLE [dbo].[susreti]  WITH CHECK ADD  CONSTRAINT [FK_susreti_timovi_dom] FOREIGN KEY([domacin_id])
REFERENCES [dbo].[timovi] ([id])
GO
ALTER TABLE [dbo].[susreti] CHECK CONSTRAINT [FK_susreti_timovi_dom]
GO
ALTER TABLE [dbo].[susreti]  WITH CHECK ADD  CONSTRAINT [FK_susreti_timovi_gost] FOREIGN KEY([gost_id])
REFERENCES [dbo].[timovi] ([id])
GO
ALTER TABLE [dbo].[susreti] CHECK CONSTRAINT [FK_susreti_timovi_gost]
GO
USE [master]
GO
ALTER DATABASE [rukomet] SET  READ_WRITE 
GO
