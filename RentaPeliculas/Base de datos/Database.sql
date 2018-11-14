﻿USE [master]
GO
/****** Object:  Database [CursoMVC]    Script Date: 13/11/2018 18:09:56 ******/
CREATE DATABASE [CursoMVC]

GO
ALTER DATABASE [CursoMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CursoMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CursoMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CursoMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CursoMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [CursoMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CursoMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CursoMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CursoMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CursoMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CursoMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CursoMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CursoMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CursoMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CursoMVC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CursoMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CursoMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CursoMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CursoMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CursoMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CursoMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CursoMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CursoMVC] SET RECOVERY FULL 
GO
ALTER DATABASE [CursoMVC] SET  MULTI_USER 
GO
ALTER DATABASE [CursoMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CursoMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CursoMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CursoMVC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CursoMVC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CursoMVC', N'ON'
GO
ALTER DATABASE [CursoMVC] SET QUERY_STORE = OFF
GO
USE [CursoMVC]
GO
/****** Object:  Schema [cat]    Script Date: 13/11/2018 18:09:56 ******/
CREATE SCHEMA [cat]
GO
/****** Object:  Schema [movs]    Script Date: 13/11/2018 18:09:56 ******/
CREATE SCHEMA [movs]
GO
/****** Object:  Table [cat].[Clientes]    Script Date: 13/11/2018 18:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[Clientes](
	[IdClientes] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Correo] [varchar](255) NOT NULL,
	[Telefono] [varchar](20) NULL,
 CONSTRAINT [PK_CatClientes] PRIMARY KEY CLUSTERED 
(
	[IdClientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cat].[Peliculas]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[Peliculas](
	[IdCatPeliculas] [uniqueidentifier] NOT NULL,
	[Titulo] [varchar](40) NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_CatPeliculas] PRIMARY KEY CLUSTERED 
(
	[IdCatPeliculas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [cat].[Clientes] ([IdClientes], [Nombre], [Apellido], [Correo], [Telefono]) VALUES (N'e66ecef6-42e5-e811-b482-d80f9969e19a', N'Yael', N'Chavez', N'admin@aplicati.conmicrosoft.com', N'(331) 922-7242')
INSERT [cat].[Peliculas] ([IdCatPeliculas], [Titulo], [Descripcion]) VALUES (N'be7505af-b1d4-e811-b47e-107d1a02eed5', N'IT', N'Payaso diabolico aterroriza la ciudad')
INSERT [cat].[Peliculas] ([IdCatPeliculas], [Titulo], [Descripcion]) VALUES (N'30dd27c1-b1d4-e811-b47e-107d1a02eed5', N'Los piratas', N'Piratas buscan tesoro')
INSERT [cat].[Peliculas] ([IdCatPeliculas], [Titulo], [Descripcion]) VALUES (N'fbadd740-d426-4ede-aa0a-98a09bcc3f35', N'Los Simpson', N'Pelicula de los Simpson')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201811032135073_InitialCreate', N'RentaPeliculas.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CC90C668D7602A76DEF1A195F30ED09F236604BECB63012A548946363912FDB877C527E618B1275E14D976EB9BB1D0C306891C553C562912C168BFEF37F7F4C7F780E03EB0927A91F9133FB6872685B98B891E793D5999DD1E5B71FEC1FBEFFFBDFA6975EF86CFD5CD29D303A6849D233FB91D2F8D47152F71187289D84BE9B4469B4A413370A1DE445CEF1E1E1BF9CA3230703840D589635FD9411EA8738FF80CF59445C1CD30C0537918783949743CD3C47B56E5188D318B9F8CCFE840945F738F0DD2C00764503DB3A0F7C04C2CC71B0B42D4448441105514F3FA7784E9388ACE63114A0E0E125C640B744418A79174E6BF2BEBD393C66BD71EA8625949BA5340A07021E9D70F53872F3B5946C57EA03055E82A2E90BEB75AEC433FBDAC379D1A7280005C80C4F6741C288CFEC9B8AC5791ADF623A291B4E0AC8AB04E07E8B92AF9326E281D5BBDD41654EC79343F6EFC09A6501CD127C46704613141C58F7D90206FA27FCF2107DC5E4ECE468B13CF9F0EE3DF24EDE7F874FDE357B0A7D053AA1008AEE9328C609C8869755FF6DCB11DB3972C3AA59A34DA115B0259819B675839E3F62B2A28F30678E3FD8D695FF8CBDB2841BD767E2C344824634C9E0F3360B02B4087055EFB4F264FFB7703D7EF77E14AEB7E8C95FE5432FF1878993C0BCFA8483BC367DF4E3627A09E3FD85935D2551C8BE45FB2A6ABFCCA32C7159672223C9034A56988AD24D9DDA787B9934831ADFAC4BD4FD376D26A96ADE5A52D6A1756642C962DBB3A194F775F9F6B6B8F33886C1CB4D8B69A4CDE0B4FBD5440238B044B2DA808EFA1A10818EFD95D7C3CB10F9C1080B620F2EE08E2CFD24C4552F7F8CC0FC10192CF33D4A53580FBCFFA0F4B14574F83982E873EC660998E99CA2307E756EF78F11C1B759B860D6BF3D5EA30DCDC36FD1157269945C12D66A63BC8F91FB35CAE825F12E10C59FA95B02B2CF073FEC0F308A38E7AE8BD3F40A8C197BB308BCED12F09AD093E3C1706C8DDAB543320B901FEA3D126935FD5292D65E899E42F14C0C643AEFA44DD48FD1CA27FD442D49CDA216149DA272B2A1A232B07E92724AB3A03941A79C05D568FE5E3E42E33B7C39ECFE7B7C9B6DDEA6B5A0A1C639AC90F8DF98E0049631EF1E518A13528F409F756317CE423E7C8CE9ABEF4D39A79F51908DCD6AADD9902F02E3CF861C76FF67432E26143FF91EF34A7A1C834A6280EF45AF3F6175CF3949B26D4F07A19BDB66BE9D35C0345DCED33472FD7C166802603C7C21CA0F3E9CD51DCB287A23C743A06360E83EDBF2A004FA66CB4675472E708029B6CEDD22403843A98B3C558DD0216F8060E58EAA11AC8E8B88C2FD53E109968E13D608B143500A33D527549D163E71FD18059D5A925AF6DCC258DF2B1E72CD058E31610C3B35D187B93E0CC204A8F84883D2A5A1A9D3B0B876433478ADA631EF7261EB7157A2135BB1C90EDFD96097DC7F7B15C36CD7D8168CB35D257D043086F47661A0FCACD2D700E483CBBE19A8746232182877A9B662A0A2C67660A0A24ADE9C811647D4BEE32F9D57F7CD3CC583F2F6B7F55675EDC036057DEC996916BE27B4A1D00227AA795E2C58257EA69AC319C8C9CF67297775651361E0734CC5904DEDEF6AFD50A71D4436A236C0DAD03A40F965A002A44CA801C295B1BC56E9B8173100B68CBBB5C2F2B55F826DD8808ADDBC146D109AAF4E65E3EC75FAA87A56598362E4BD0E0B0D1C8D41C88B97D8F11E4A31C56555C5F4F1858778C38D8EF1C168515087E76A5052D999D1B5549A66B796740ED910976C232D49EE93414B656746D712B7D16E25699C82016EC1462A12B7F091265B19E9A8769BAA6EEA14E952BC60EA18F2AAA637288E7DB26AE459F1126B5E2459CDBE9D0F4F3D0A0B0CC74D35194895B415271A256885A55A600D925EF9494A2F10450BC4E23C332F54C8B47BAB61F92F5936B74F7510CB7DA0A466BF790BED15BEB0DDAAFE0887B9824E86CCA9C923E91A13D037B758EA1B0A50A209DECFA2200B89D9C732B72EAEF09AED8B121561EA48F22B3E94A230C5D315B5DF6B6CD47931DE38555ECCFA6365863069BCF4419B3A37F9A56694324CD5443185AE763676267766E878C9CEE2F0E1EA44789DD9C533549A00BC68204623C941016BD4F54715F3509A98624D7F4429D9A40929550D90B299522208D9AC580BCFA0513D457F0E6A1249135DADED8FAC492769426BAAD7C0D6C82CD7F547D5649C348135D5FDB1EBF413791DDDE3FDCB7884D964032B0EBA9BED60068CD75914C7D9001BF7F94DA046F1402C7E63AF80F1F2BD3428E3696F13832A421C9B199401C3BCFE0897E1E2F2D37A836FC6146EB88525BEED86DF8C37CC6C5FD53894F39E4C5271AFCE7DD2F96ECACF5ADD8F6B94C35741625BA51A617B7F49290E278C6032FF3598053E668B7949708388BFC4292DB23AECE3C3A363E971CEFE3C9471D2D40B346755D36B1971CCB690A0459E50E23EA2444D97D8E031490DAA44A2AF89879FCFECFFE6AD4EF3A006FB95171F58D7E967E2FF9A41C5439261EB7735FD739CE4FA1ECF392A417F7F13EF24FAABFCFA972F45D303EB2E81E9746A1D4A8A5E67F8C5D71383A4299A6E20CDDA6F2ADEEE6C139E2A6851A5D9B2FECB84854F477995504AF94D889EFF315434EDCB838D1035AF0BC6C21B4585A6D703EB60195F0E78F049F39703C33AAB7F49B08E68C657043E190E26BF21E8BF0C952D77B80F69CE4CDB5892723D77E6606F9490B9EBBD4949D5DE68A2ABE9D803E0464DB9DECC457963A9CCA36D9D9A4CE5D1B07769F7AF9E9EBC2F19C9B5D3BEDB44E46DE61EB7DC2CFDA5528EF720494E93F4B3FBC4E26DDB9A2908BCE7D999C3D287F7CCD8F836BFFB24E16D1B9B2940BCE7C636281578CF6C6D57FBE78E2DADF716BAF3C45E3547C97099A38B227725EE16217738FE2F223082C2A32CDE5BEA33C54CCC6A633132AC49CC4CCD296A326365E2287C158A76B6C3FACA37FCD6CE729A76B686C4CE36DE7CFD6FE5CD69DA791BD225779172AC4D58D4A58177AC636D79546F29C558E84947467B97CFDA7A33FF96328A47518A307B0CB7CB6F27817814958C397506240CAB17C5B07736FE5623ECDFA9BFAA21D85F6E24D81576CD8AE69A2CA372F396242A49A408CD0DA6C8832DF53CA1FE12B914AA59003A7F309E07F5D835C8027BD7E42EA37146A1CB385C0442C08B39016DFCF3AC6851E6E95DCCBED231BA0062FA2C707F477ECCFCC0ABE4BED2C4840C10CCBBE0E15E369694857D572F15D26D447A0271F5554ED1030EE300C0D23B32474F781DD9C0FC3EE215725FEA08A009A47B2044B54F2F7CB44A5098728CBA3D7C820D7BE1F3F7FF07AEE83ABFB2540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b2fa0880-100c-4b75-9f19-9825cc74ae7b', N'you400@gmail.com', 0, N'ALXUIlZEO9ex+vX73RZM/jjHgBFbRRLW2SWnpi/c4m981sdCzjsBgG7L9kdKD9/RLQ==', N'23a84f83-1a17-43cd-8898-ab7073c15b94', NULL, 0, 0, NULL, 1, 0, N'you400@gmail.com')
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 13/11/2018 18:09:57 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 13/11/2018 18:09:57 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 13/11/2018 18:09:57 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 13/11/2018 18:09:57 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 13/11/2018 18:09:57 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 13/11/2018 18:09:57 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [cat].[Clientes] ADD  CONSTRAINT [DF_CatClientes]  DEFAULT (newsequentialid()) FOR [IdClientes]
GO
ALTER TABLE [cat].[Peliculas] ADD  CONSTRAINT [DF_CatPeliculas]  DEFAULT (newsequentialid()) FOR [IdCatPeliculas]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [cat].[CrudClientes]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [cat].[CrudClientes]
							@IdCliente	UNIQUEIDENTIFIER = null, 
							@Nombre		VARCHAR(100) = null,  
							@Apellido	VARCHAR(100) = null ,
							@correo		VARCHAR(255) = null, 
							@Telefono	VARCHAR(20) = null, 
							@Accion		SMALLINT
AS
BEGIN
IF @Accion = 1
	BEGIN
		INSERT INTO Cat.Clientes (Nombre,Apellido,Correo,Telefono) 
		VALUES(@Nombre,@Apellido,@correo,@Telefono)
	END
IF @Accion = 2
	BEGIN
		UPDATE Cat.Clientes set Nombre = @Nombre, Apellido = @Apellido, Correo = @Correo, Telefono = @Telefono 
		WHERE IdClientes = @IdCliente
	END
IF  @Accion = 3
	BEGIN
		DELETE Cat.Clientes WHERE IdClientes = @IdCliente
	END
END
GO
/****** Object:  StoredProcedure [cat].[GetClientes]    Script Date: 13/11/2018 18:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [cat].[GetClientes] @IdCliente UNIQUEIDENTIFIER = null
AS
BEGIN

SELECT 
		IdClientes,
		Nombre,
		Apellido,
		Correo,
		Telefono 
FROM cat.Clientes 
		WHERE IdClientes = ISNULL(@idCliente,idclientes);

END
GO
USE [master]
GO
ALTER DATABASE [CursoMVC] SET  READ_WRITE 
GO