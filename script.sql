USE [master]
GO
/****** Object:  Database [Project]    Script Date: 6/16/2022 8:12:45 AM ******/
CREATE DATABASE [Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS03\MSSQL\DATA\Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS03\MSSQL\DATA\Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project] SET  MULTI_USER 
GO
ALTER DATABASE [Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Project] SET QUERY_STORE = OFF
GO
USE [Project]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSession]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSession](
	[GroupId] [int] NOT NULL,
	[SessionId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSubject]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSubject](
	[GroupId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomGroup]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomGroup](
	[RoomId] [int] NOT NULL,
	[GroupId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlotGroup]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlotGroup](
	[SlotId] [int] NOT NULL,
	[GroupId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/16/2022 8:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GroupSession]  WITH CHECK ADD  CONSTRAINT [FK_GroupSession_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[GroupSession] CHECK CONSTRAINT [FK_GroupSession_Group]
GO
ALTER TABLE [dbo].[GroupSession]  WITH CHECK ADD  CONSTRAINT [FK_GroupSession_Session] FOREIGN KEY([SessionId])
REFERENCES [dbo].[Session] ([Id])
GO
ALTER TABLE [dbo].[GroupSession] CHECK CONSTRAINT [FK_GroupSession_Session]
GO
ALTER TABLE [dbo].[GroupSubject]  WITH CHECK ADD  CONSTRAINT [FK_GroupSubject_Group1] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[GroupSubject] CHECK CONSTRAINT [FK_GroupSubject_Group1]
GO
ALTER TABLE [dbo].[GroupSubject]  WITH CHECK ADD  CONSTRAINT [FK_GroupSubject_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[GroupSubject] CHECK CONSTRAINT [FK_GroupSubject_Subject]
GO
ALTER TABLE [dbo].[RoomGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoomGroup_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[RoomGroup] CHECK CONSTRAINT [FK_RoomGroup_Group]
GO
ALTER TABLE [dbo].[RoomGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoomGroup_Group1] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[RoomGroup] CHECK CONSTRAINT [FK_RoomGroup_Group1]
GO
ALTER TABLE [dbo].[RoomGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoomGroup_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[RoomGroup] CHECK CONSTRAINT [FK_RoomGroup_Room]
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
