USE [master]
GO
/****** Object:  Database [BankDatabase]    Script Date: 11/23/2021 10:06:59 AM ******/
CREATE DATABASE [BankDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BankDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BankDatabase.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BankDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BankDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BankDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BankDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BankDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BankDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BankDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BankDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BankDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [BankDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BankDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BankDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BankDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BankDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BankDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BankDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BankDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BankDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BankDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BankDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BankDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BankDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BankDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BankDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BankDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BankDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BankDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [BankDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [BankDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BankDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BankDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BankDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BankDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BankDatabase', N'ON'
GO
USE [BankDatabase]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 11/23/2021 10:06:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bank](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Branch] [varchar](20) NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 11/23/2021 10:06:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccount](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Branch] [varchar](20) NULL,
	[AccountNumber] [int] NULL,
	[Currency] [decimal](18, 2) NULL,
 CONSTRAINT [PK_BankAccount] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/23/2021 10:06:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](20) NULL,
	[LName] [varchar](20) NULL,
	[MiddleName] [varchar](20) NULL,
	[DOB] [date] NULL,
	[Gender] [char](1) NULL,
	[BankAccount] [int] NULL,
	[ActiveAccount] [int] NULL,
	[InactiveAccount] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bank] ON 

INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (1, N'Tabaris')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (2, N'Jounieh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (3, N'Zouk Mosbeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (4, N'Ashrafieh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (5, N'Tripoli')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (6, N'Dbayeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (7, N'Tabaris')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (8, N'Ashrafieh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (9, N'Dbayeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (10, N'Zouk Mosbeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (11, N'Jounieh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (12, N'Tabaris')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (13, N'Dbayeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (14, N'Tripoli')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (15, N'Jounieh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (16, N'Ashrafieh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (17, N'Tabaris')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (18, N'Jounieh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (19, N'Zouk Mosbeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (20, N'Tripoli')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (21, N'Zouk Mosbeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (22, N'Dbayeh')
INSERT [dbo].[Bank] ([UserId], [Branch]) VALUES (23, N'Tripoli')
SET IDENTITY_INSERT [dbo].[Bank] OFF
SET IDENTITY_INSERT [dbo].[BankAccount] ON 

INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (4, N'Ashrafieh', 13214, CAST(10.40 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (5, N'Tripoli', 245321, CAST(10010.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (6, N'Dbayeh', 4125124, CAST(124151124.10 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (7, N'Tabaris', 9101371, CAST(12894710.19 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (8, N'Ashrafieh', 572136, CAST(682468.56 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (9, N'Dbayeh', 612437, CAST(935817.31 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (10, N'Zouk Mosbeh', 836458, CAST(143681.90 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (11, N'Jounieh', 563612, CAST(7134671.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (12, N'Tabaris', 782341, CAST(8231613.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (13, N'Dbayeh', 346132, CAST(182382.45 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (14, N'Tripoli', 214613, CAST(1347137.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (15, N'Jounieh', 9325147, CAST(9219321.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (16, N'Ashrafieh', 771891, CAST(1345043.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (17, N'Tabaris', 9525681, CAST(450841.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (18, N'Jounieh', 963178, CAST(135692.42 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (19, N'Zouk Mosbeh', 7813251, CAST(1351354.27 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (20, N'Tripoli', 512436, CAST(123616.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (21, N'Zouk Mosbeh', 2135137, CAST(214713.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (22, N'Dbayeh', 7234376, CAST(24792247.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (23, N'Tripoli', 813461, CAST(2135371.00 AS Decimal(18, 2)))
INSERT [dbo].[BankAccount] ([UserId], [Branch], [AccountNumber], [Currency]) VALUES (24, N'Ashrafieh', 613471, CAST(100150.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[BankAccount] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (1, N'Mario', N'Hakim', N'Nasry', CAST(N'1998-03-08' AS Date), N'M', 3, 2, 1)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (2, N'Rita', N'Hakim', N'Joseph', CAST(N'1972-03-02' AS Date), N'F', 0, 0, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (3, N'Joe', N'Hakim', N'Nasry', CAST(N'1995-01-16' AS Date), N'M', 2, 1, 1)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (4, N'Eliana', N'El-Hayek', N'Tony', CAST(N'1993-05-23' AS Date), N'F', 1, 1, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (5, N'Nour', N'Chidiac', N'Antoine', CAST(N'2000-09-09' AS Date), N'F', 1, 1, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (6, N'Christ', N'Hachach', N'Charbel', CAST(N'1999-07-12' AS Date), N'M', 4, 2, 2)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (7, N'Charbel', N'Najem', N'Claude', CAST(N'2001-11-24' AS Date), N'M', 3, 1, 2)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (8, N'Jimmy', N'Sebaaly', N'Maroun', CAST(N'1998-08-27' AS Date), N'M', 2, 2, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (9, N'Elias', N'Taoum', N'Georges', CAST(N'1998-04-13' AS Date), N'M', 4, 4, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (10, N'Nadim', N'Chidiac', N'Antoine', CAST(N'2001-05-16' AS Date), N'M', 0, 0, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (11, N'Rita', N'Tannous', N'Joseph', CAST(N'1972-09-21' AS Date), N'F', 1, 1, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (12, N'Jhonny', N'Hakim', N'Joseph', CAST(N'1972-10-23' AS Date), N'M', 3, 2, 1)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (13, N'Nasry', N'Hakim', N'Joseph', CAST(N'1968-03-10' AS Date), N'M', 4, 4, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (14, N'Gilbert', N'Neaimeh', N'Charbel', CAST(N'1945-02-12' AS Date), N'M', 2, 1, 1)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (15, N'Andrea', N'El-Khoury', N'Jhonny', CAST(N'1982-09-29' AS Date), N'F', 2, 1, 1)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (16, N'Charbel', N'El-Khoury', N'Youssef', CAST(N'1967-09-21' AS Date), N'M', 3, 1, 2)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (17, N'Therese', N'El-Khoury', N'Marwan', CAST(N'1966-09-23' AS Date), N'F', 1, 1, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (18, N'Tony', N'El-Khoury', N'Charbel', CAST(N'1994-04-21' AS Date), N'M', 1, 1, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (19, N'Elie', N'Merhej', N'Georges', CAST(N'1965-04-28' AS Date), N'M', 3, 2, 1)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (20, N'Samira', N'Merhej', N'Charbel', CAST(N'1970-04-23' AS Date), N'F', 0, 0, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (21, N'Jimmy', N'Salem', N'Rafic', CAST(N'1989-09-25' AS Date), N'M', 4, 2, 2)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (22, N'Marc', N'Sadaka', N'Kamal', CAST(N'1958-02-15' AS Date), N'M', 0, 0, 0)
INSERT [dbo].[User] ([UserId], [FName], [LName], [MiddleName], [DOB], [Gender], [BankAccount], [ActiveAccount], [InactiveAccount]) VALUES (23, N'Rafic', N'Yazbeck', N'Charbel', CAST(N'1994-03-29' AS Date), N'M', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Bank] FOREIGN KEY([UserId])
REFERENCES [dbo].[Bank] ([UserId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Bank]
GO
/****** Object:  StoredProcedure [dbo].[proc_GetActiveAccount]    Script Date: 11/23/2021 10:06:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GetActiveAccount]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		
		select FName, LName, ActiveAccount

		from [dbo].[User]

		where ActiveAccount > 0;
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GetUserWithNoAcc]    Script Date: 11/23/2021 10:06:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_GetUserWithNoAcc]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [UserId]
      ,[FName]
      ,[LName]
      ,[MiddleName]
      ,[DOB]
      ,[Gender]
      ,[BankAccount]

		from [dbo].[User]
		where BankAccount = 0;
END

GO
/****** Object:  StoredProcedure [dbo].[proc_InsertRecord]    Script Date: 11/23/2021 10:06:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_InsertRecord]
	-- Add the parameters for the stored procedure here
	(
		@UserId int,
		@Branch varchar(20),
		@AccountNumber int,
		@Currency decimal(18,2)
	)
AS
BEGIN

	SET NOCOUNT ON;
	SET IDENTITY_INSERT BankAccount ON
  Insert Into [dbo].[BankAccount]
				
				(
					UserId,
					Branch,
					AccountNumber,
					Currency
				)

	Values		(
					@UserId,
					@Branch,
					@AccountNumber,
					@Currency
				)

	SET IDENTITY_INSERT BankAccount OFF 

END

GO
USE [master]
GO
ALTER DATABASE [BankDatabase] SET  READ_WRITE 
GO
