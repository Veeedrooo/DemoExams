USE [master]
GO
/****** Object:  Database [dergachIsp]    Script Date: 25.03.2023 13:19:07 ******/
CREATE DATABASE [dergachIsp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dergachIsp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\dergachIsp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dergachIsp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\dergachIsp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dergachIsp] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dergachIsp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dergachIsp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dergachIsp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dergachIsp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dergachIsp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dergachIsp] SET ARITHABORT OFF 
GO
ALTER DATABASE [dergachIsp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dergachIsp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dergachIsp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dergachIsp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dergachIsp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dergachIsp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dergachIsp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dergachIsp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dergachIsp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dergachIsp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dergachIsp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dergachIsp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dergachIsp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dergachIsp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dergachIsp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dergachIsp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dergachIsp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dergachIsp] SET RECOVERY FULL 
GO
ALTER DATABASE [dergachIsp] SET  MULTI_USER 
GO
ALTER DATABASE [dergachIsp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dergachIsp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dergachIsp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dergachIsp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dergachIsp] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dergachIsp', N'ON'
GO
ALTER DATABASE [dergachIsp] SET QUERY_STORE = OFF
GO
USE [dergachIsp]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [dergachIsp]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 25.03.2023 13:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[client_id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[patronymic] [varchar](50) NULL,
	[phone_number] [varchar](50) NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients_transports]    Script Date: 25.03.2023 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients_transports](
	[client_id] [int] NOT NULL,
	[transport_id] [int] NOT NULL,
	[number_transport] [nchar](10) NULL,
	[date_begin] [datetime] NULL,
	[date_end] [datetime] NULL,
	[begin_point] [varchar](50) NULL,
	[end_point] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 25.03.2023 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [int] NOT NULL,
	[role_name] [varchar](50) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transport]    Script Date: 25.03.2023 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transport](
	[transport_id] [int] NOT NULL,
	[transport_type_id] [int] NULL,
	[transport_color] [varchar](50) NULL,
	[transport_model] [varchar](50) NULL,
	[transport_number] [varchar](10) NULL,
	[date_manufacture] [date] NULL,
	[transport_enabled] [nvarchar](50) NULL,
	[current_point_location_number] [int] NULL,
	[current_point_location_address] [varchar](50) NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_transport] PRIMARY KEY CLUSTERED 
(
	[transport_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransportRole]    Script Date: 25.03.2023 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransportRole](
	[TipeTransportID] [int] NOT NULL,
	[TransporName] [nvarchar](255) NULL,
 CONSTRAINT [PK_TransportRole] PRIMARY KEY CLUSTERED 
(
	[TipeTransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 25.03.2023 13:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[UserSurname] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[UserPatronymic] [nvarchar](100) NULL,
	[login] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (1, N'Морозов', N'Геннадий', N'Валерьевич', N'9.96343e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (2, N'Седаков', N'Илья', N'Васильевич', N'1.24395e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (3, N'Киркоров', N'Филипп', N'Бедросович', N'2.85391e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (4, N'Комаров', N'Дмитрий', N'Николаевич', N'8.866e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (5, N'Мартынович', N'Арина', N'Михайловна', N'1.23457e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (6, N'Израилев', N'Исаак', N'Моисеевич', N'5.03123e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (7, N'Сергеев', N'Борис', N'Николаевич', N'9.53123e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (8, N'Климова', N'Алиса', N'Александровна', N'4.54234e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (9, N'Куликов', N'Владислав', N'Даниилович', N'8.66331e+006')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (10, N'Коротков', N'Олег', N'Матвеевич', N'9.25784e+006')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 5, N'У312ТН    ', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), N'1', N'1')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 4, N'К341ТО    ', CAST(N'2023-03-02T00:00:00.000' AS DateTime), CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'1', N'1')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 4, N'К341ТО    ', CAST(N'2023-03-15T00:00:00.000' AS DateTime), CAST(N'2023-03-30T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (9, 5, N'У312ТН    ', CAST(N'2022-12-12T00:00:00.000' AS DateTime), CAST(N'2023-01-11T00:00:00.000' AS DateTime), N'3', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 10, N'У666СР    ', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'4', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (7, 3, N'К312ОО    ', CAST(N'2023-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-30T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (9, 8, N'Г352ВС    ', CAST(N'2021-12-14T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), N'1', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 7, N'ZC182V    ', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (7, 3, N'ГГ311В    ', CAST(N'2022-05-01T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'3', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (7, 3, N'ГГ311В    ', CAST(N'2022-06-01T00:00:00.000' AS DateTime), CAST(N'2022-07-01T00:00:00.000' AS DateTime), N'2', N'2')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (9, 3, N'А513ВВ    ', CAST(N'2019-08-07T00:00:00.000' AS DateTime), CAST(N'2019-08-08T00:00:00.000' AS DateTime), N'1', N'4')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [number_transport], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 8, N'Г352ВС    ', CAST(N'2020-09-19T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime), N'4', N'2')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (1, N'Администратор')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (2, N'Менеджер')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (3, N'Клиент')
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (1, 4, N'Синий', N'MERIDA KALAHARI-500', N'XR430Z', CAST(N'2010-01-01' AS Date), N'Да', 1, N'ул. Мира 14', 500.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (2, 2, N'Синий', N'Suzuki RG200', N'АБ201В', CAST(N'2015-10-05' AS Date), N'Да', 2, N'ул. Победы 20', 1000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (3, 4, N'Красный', N'STELS 730', N'ГГ311В', CAST(N'2020-12-17' AS Date), N'Да', 2, N'ул. Победы 20', 400.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (4, 1, N'Желтый', N'LADA VESTA', N'К341ТО', CAST(N'2014-12-06' AS Date), N'Нет', NULL, NULL, 2000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (5, 1, N'Белый', N'LADA VESTA', N'У312ТН', CAST(N'2016-06-21' AS Date), N'Да', 3, N'п. Ленина 16', 2000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (6, 1, N'Белый', N'Kia Rio', N'К312ОО', CAST(N'2022-07-01' AS Date), N'Нет', NULL, NULL, 3000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (7, 4, N'Чёрный', N'MERIDA KALAHARI-500', N'ZC182V', CAST(N'2005-01-01' AS Date), N'Нет', NULL, NULL, 500.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (8, 3, N'Красный', N'Alpha RX-11', N'Г352ВС', CAST(N'2021-05-05' AS Date), N'Да', 2, N'ул. Победы 20', 900.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (9, 3, N'Красный', N'Alpha RX-15', N'А513ВВ', CAST(N'2019-04-16' AS Date), N'Да', 4, N'ул. Труда 8', 900.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (10, 2, N'Коричневый', N'Yamaha G800', N'У666СР', CAST(N'2011-05-02' AS Date), N'Нет', NULL, NULL, 1000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (11, 1, N'Фиолетовый', N'Renault Sandero-II', N'C999ЕН', CAST(N'2012-11-10' AS Date), N'Да', 4, N'ул. Труда 8', 2500.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [date_manufacture], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (12, 4, N'Белый', N'GT-50', N'XW121V', CAST(N'2017-09-11' AS Date), N'Да', 1, N'ул. Мира 14', 550.0000)
INSERT [dbo].[TransportRole] ([TipeTransportID], [TransporName]) VALUES (1, N'Автомобиль')
INSERT [dbo].[TransportRole] ([TipeTransportID], [TransporName]) VALUES (2, N'Мотоцикл')
INSERT [dbo].[TransportRole] ([TipeTransportID], [TransporName]) VALUES (3, N'Мопед')
INSERT [dbo].[TransportRole] ([TipeTransportID], [TransporName]) VALUES (4, N'Велосипед')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (1, 3, N'Морозов', N'Геннадий', N'Валерьевич', N'7efwqtub80i5@outlook.com', N'54zxr3')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (2, 2, N'Седаков', N'Илья', N'Васильевич', N'v718fhbjuq0p@mail.com', N'4d23as')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (3, 1, N'Киркоров', N'Филипп', N'Бедросович', N'7vnrat4hmcz6@yahoo.com', N'zzz323')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (4, 1, N'Комаров', N'Дмитрий', N'Николаевич', N'v4mlcsi1bgnk@tutanota.com', N'6664ee')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (5, 2, N'Мартынович', N'Арина', N'Михайловна', N'2yx3tbqv4ndi@outlook.com', N'85fd4')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (6, 2, N'Израилев', N'Исаак', N'Моисеевич', N'5bf1xdiq6zup@tutanota.com', N'99663w')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (7, 3, N'Сергеев', N'Борис', N'Николаевич', N'p7rviz42j6bh@outlook.com', N'hryus33')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (8, 3, N'Климова', N'Алиса', N'Александровна', N'g5nrmh1axwfl@outlook.com', N'watw2ain')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (9, 3, N'Куликов', N'Владислав', N'Даниилович', N'5knb4drlf2hj@tutanota.com', N'ZsdSDr')
INSERT [dbo].[users] ([user_id], [role_id], [UserSurname], [UserName], [UserPatronymic], [login], [password]) VALUES (10, 3, N'Коротков', N'Олег', N'Матвеевич', N'pk90ratym8bo@yahoo.com', N'ZZZds2')
ALTER TABLE [dbo].[clients]  WITH CHECK ADD  CONSTRAINT [FK_clients_users] FOREIGN KEY([client_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[clients] CHECK CONSTRAINT [FK_clients_users]
GO
ALTER TABLE [dbo].[clients_transports]  WITH CHECK ADD  CONSTRAINT [FK_clients_transports_clients] FOREIGN KEY([client_id])
REFERENCES [dbo].[clients] ([client_id])
GO
ALTER TABLE [dbo].[clients_transports] CHECK CONSTRAINT [FK_clients_transports_clients]
GO
ALTER TABLE [dbo].[clients_transports]  WITH CHECK ADD  CONSTRAINT [FK_clients_transports_transport] FOREIGN KEY([transport_id])
REFERENCES [dbo].[transport] ([transport_id])
GO
ALTER TABLE [dbo].[clients_transports] CHECK CONSTRAINT [FK_clients_transports_transport]
GO
ALTER TABLE [dbo].[transport]  WITH CHECK ADD  CONSTRAINT [FK_transport_TransportRole] FOREIGN KEY([transport_type_id])
REFERENCES [dbo].[TransportRole] ([TipeTransportID])
GO
ALTER TABLE [dbo].[transport] CHECK CONSTRAINT [FK_transport_TransportRole]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([role_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
USE [master]
GO
ALTER DATABASE [dergachIsp] SET  READ_WRITE 
GO
