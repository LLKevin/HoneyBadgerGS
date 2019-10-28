USE [master]
GO
/****** Object:  Database [HoneyBadgerDB]    Script Date: 10/28/2019 2:28:31 PM ******/
CREATE DATABASE [HoneyBadgerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HoneyBadgerDB', FILENAME = N'C:\Users\Kevin\HoneyBadgerDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HoneyBadgerDB_log', FILENAME = N'C:\Users\Kevin\HoneyBadgerDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HoneyBadgerDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoneyBadgerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HoneyBadgerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HoneyBadgerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HoneyBadgerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HoneyBadgerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HoneyBadgerDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HoneyBadgerDB] SET  MULTI_USER 
GO
ALTER DATABASE [HoneyBadgerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HoneyBadgerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HoneyBadgerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HoneyBadgerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HoneyBadgerDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HoneyBadgerDB] SET QUERY_STORE = OFF
GO
USE [HoneyBadgerDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HoneyBadgerDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/28/2019 2:28:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [nvarchar](450) NULL,
	[userName] [varchar](30) NULL,
	[userPassword] [varchar](30) NULL,
	[profileID] [varchar](200) NULL,
	[libraryID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/28/2019 2:28:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/28/2019 2:28:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/28/2019 2:28:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/28/2019 2:28:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/28/2019 2:28:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/28/2019 2:28:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[accountID] [int] NULL,
	[gameID] [int] NULL,
	[subTotal] [float] NULL,
	[taxRate] [float] NULL,
	[finalPrice] [float] NULL,
	[cartID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[eventID] [int] NOT NULL,
	[accountID] [int] NULL,
	[dateOfEvent] [datetime] NULL,
	[eventDescription] [text] NULL,
	[location] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendList]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendList](
	[friendListID] [int] NOT NULL,
	[accountID] [varchar](200) NULL,
 CONSTRAINT [PK__FriendLi__2C716E4DAE0CA622] PRIMARY KEY CLUSTERED 
(
	[friendListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[gameID] [int] NOT NULL,
	[wishlistID] [int] NULL,
	[gameName] [varchar](50) NULL,
	[publisher] [varchar](50) NULL,
	[developer] [varchar](50) NULL,
	[genre] [varchar](20) NULL,
	[platform] [varchar](20) NULL,
	[gameDescription] [text] NULL,
	[systemReq] [text] NULL,
	[releaseDate] [datetime] NULL,
	[gameArtUrl] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[gameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile](
	[profileID] [varchar](200) NOT NULL,
	[profileImage] [image] NULL,
	[gender] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[userAddress] [text] NULL,
	[DOB] [datetime] NULL,
	[promotion] [bit] NULL,
	[actualName] [varchar](300) NULL,
	[displayName] [varchar](300) NULL,
 CONSTRAINT [PK__Profile__7D4163991DCCCB6B] PRIMARY KEY CLUSTERED 
(
	[profileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[ratingID] [int] NOT NULL,
	[gameID] [int] NULL,
	[rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ratingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[reviewID] [int] NOT NULL,
	[accountID] [int] NULL,
	[gameID] [int] NULL,
	[reviewInfo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[reviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[salesID] [int] NOT NULL,
	[gameID] [int] NULL,
	[accountID] [int] NULL,
	[timeOfSales] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[salesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 10/28/2019 2:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[wishlistID] [int] NOT NULL,
	[accountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[wishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.0.0')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8d33b57f-da14-4922-997c-c3793ac32e33', N'something@hotmail.com', N'SOMETHING@HOTMAIL.COM', N'something@hotmail.com', N'SOMETHING@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHdNKsu2EcmzFeWHTqxS0ylCvn8Ai59MDmUW42cX2xl6ju3Wo08D9guGkVBMHMo8NQ==', N'PETXNHHESDAXH6XGA66GBQSE5IEIPRHG', N'fee65072-4ee5-4e64-bc09-65498fcb4c18', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (802, NULL, N'Borderlands 2', N'2K', N'Gearbox Software', N'RPG', N'All', N'Sequel to the 4-player cooperative FPS RPG Borderlands, where the new team of Vault Hunters arrives on the infamous planet Pandora in order to get the riches, hidden inside the Vault, and help to free the planet from the Handsome Jack, President of Hyperion. Clear out the endless waves and groups and marauders with various weapon types and character abilities.<br />\nUnlike the first game, Borderlands 2 provided DLC not only expanding the world of Pandora with stand-alone story campaigns but adding 2 more characters. Now the main cast consists of Gunzerker Salvador(dual-wields guns at command), Siren Maya (holds and paralyzes the enemy), Commando Axton (summons turrets) and Zer0 the Assasin (invisible sniper ninja). But with the DLC players can try out summoning giant flying robots with Gaige the Mechromancer and Krieg the Psycho. <br />\nMost of the game charm and popularity of Borderlands 2 comes from the supporting cast and the personalities of the NPC, making this fast-paced shooter with optional cover stand out', N'Dual Core Processor, 2GB Ram, Geforce 8500', CAST(N'2012-09-18T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/588/588c6bdff3d4baf66ec36b1c05b793bf.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (1030, NULL, N'Limbo', N'Playdead', N'Playdead', N'Platformer', N'All', N'This popular 2D puzzle-platformer creates the atmosphere of isolation, where the player alone can guide the nameless protagonist to his destination. Hostile environments and one-hit deaths may seem difficult, but the game implements a fair amount of checkpoints. The monochrome color palette showcases cartoony proportions of every living thing while making lack of details threatening. Limbo shows you exactly what you encounter, but never how it looks.</p>\n<p>Limbo uses the atmosphere and sound design of the horror genre while avoiding tropes of the modern horror games. The overarching theme and unique style compensated for the rather short game with an abrupt ending, making Limbo one of the most impactful games for the genre.</p>\n<p>The simple controls and easy-to-pick-up mechanics help to make a clear distinction, which part of the stage players can interact with, and which part can lead to the quick death. Even though the game is in black and white, this separation is intuitive and natural, so the player would know exactly where to go or what to do', N'2ghz processor, 512mb  ram, integrated graphics', CAST(N'2010-07-21T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/929/9295e55ce69cf5337c567983cf8b4137.jpeg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (3328, NULL, N'The Witcher 3: Wild Hunt', N'CD PROJEKT RED', N'CD PROJEKT RED', N'RPG', N'All', N'The third game in a series, it holds nothing back from the player. Open world adventures of the renowned monster slayer Geralt of Rivia are now even on a larger scale. Following the source material more accurately, this time Geralt is trying to find the child of the prophecy, Ciri while making a quick coin from various contracts on the side. Great attention to the world building above all creates an immersive story, where your decisions will shape the world around you.<br />\nCD Project Red are infamous for the amount of work they put into their games, and it shows, because aside from classic third-person action RPG base game they provided 2 massive DLCs with unique questlines and 16 smaller DLCs, containing extra quests and items.<br />\nPlayers praise the game for its atmosphere and a wide open world that finds the balance between fantasy elements and realistic and believable mechanics, and the game deserved numerous awards for every aspect of the game, from music to direction', N'I5-2500K, 6 GB RAM, GTX660', CAST(N'2015-05-18T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/088/088b41ca3f9d22163e43be07acf42304.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (3439, NULL, N'Life is Strange', N'Square Enix', N'DONTNOD entertainment', N'Adventure-RPG', N'All', N'Interactive storytelling and plot-heavy games gained popularity, and “Life is Strange” arrived as teen mystery adventure. The plot will go through the life of Maxine, a teenager in possession of curious power, allowing her to stop and rewind time, in order to manipulate her surroundings. Max, after the reunion with her friend Chloe, is on the path to uncovering the secrets of Arcadia Bay. Players will have to deal with puzzle solving through the fetch quests, in order to change the world around them. <br />\nThe game puts players in situations, where they’re forced to make a moral choice, going through the decision which may have short-term or long-term consequences. Every choice made by the player will trigger the butterfly effect, surrounding the first playthrough of the game with a lot of emotional struggle, thoughtfully crafted by the developers at Dontnod Entertainment. Life is Strange is third person adventure game, where players might seem just as an observer of the stories, unfolding in front of them', N'2.0ghz Dual Core, 2gb ram, 512mb video ram', CAST(N'2015-01-29T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/562/562553814dd54e001a541e4ee83a591c.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (3498, NULL, N'Grand Theft Auto V', N'RockStar Games', N'RockStar North', N'Action', N'All', N'Rockstar Games went bigger, since their previous installment of the series. You get the complicated and realistic world-building from Liberty City of GTA4 in the setting of lively and diverse Los Santos, from an old fan favorite GTA San Andreas. 561 different vehicles (including every transport you can operate) and the amount is rising with every update. <br />\nSimultaneous storytelling from three unique perspectives: <br />\nFollow Michael, ex-criminal living his life of leisure away from the past, Franklin, a kid that seeks the better future, and Trevor, the exact past Michael is trying to run away from. <br />\nGTA Online will provide a lot of additional challenge even for the experienced players, coming fresh from the story mode. Now you will have other players around that can help you just as likely as ruin your mission. Every GTA mechanic up to date can be experienced by players through the unique customizable character, and community content paired with the leveling system tends to keep everyone busy and engaged', N'Minimum:OS: Windows 10 64 Bit, Windows 8.1 64 Bit, Windows 8 64 Bit, Windows 7 64 Bit Service Pack 1, Windows Vista 64 Bit Service Pack 2* (*NVIDIA video card recommended if running Vista OS)Processor: Intel Core 2 Quad CPU Q6600 @ 2.40GHz (4 CPUs) / AMD Phenom 9850 Quad-Core Processor (4 CPUs) @ 2.5GHzMemory: 4 GB RAMGraphics: NVIDIA 9800 GT 1GB / AMD HD 4870 1GB (DX 10, 10.1, 11)Storage: 72 GB available spaceSound Card: 100% DirectX 10 compatibleAdditional Notes: Over time downloadable content and programming changes will change the system requirements for this game.  Please refer to your hardware manufacturer and www.rockstargames.com/support for current compatibility information. Some system components such as mobile chipsets, integrated, and AGP graphics cards may be incompatible. Unlisted specifications may not be supported by publisher', CAST(N'2013-09-17T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/978/9780426199d92d086e7c85ed8993cede.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (4062, NULL, N'BioShock Infinite', N'2K', N'Irrational Games', N'FPS-RPG', N'All', N'The third game in the series, Bioshock takes the story of the underwater confinement within the lost city of Rapture and takes it in the sky-city of Columbia. Players will follow Booker DeWitt, a private eye with a military past; as he will attempt to wipe his debts with the only skill he’s good at – finding people. Aside from obvious story and style differences, this time Bioshock protagonist has a personality, character, and voice, no longer the protagonist is a silent man, trying to survive.<br />\nOpen and bright level design of Columbia shows industrial colonial America in a seemingly endless carnival. But Bioshock is not famous for its visuals, but for its story.  Mystery and creative vision of Irrational Games invite players to uncover the secrets of Columbia’s leader - Zachary Comstock and save Elizabeth, the girl, that’s been locked up in the flying city since her birth.<br />\nUnique weapons and mechanics of Vigor will make encounters different, helping players to adjust to the new found mobility and hook shot, making fights fast-paced and imaginative', N'Duo Core, 2gb, directX10 graphics', CAST(N'2013-03-26T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/fc1/fc1307a2774506b5bd65d7e8424664a7.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (4200, NULL, N'Portal 2', N'Valve', N'Valve', N'Action-Puzzle', N'All', N'Sequel to one of the main Valve titles continues the story of Chell, the test subject of Aperture Science.  As you will be finding your way through newly constructed test rooms you will be not only supervised by GLaDOS but now accompanied through your tasks by Wheatley, AI core trying to assist you, as you will go deeper into the past of Aperture Science.<br />\nA significant change from the previous game is that now you will not be alone during the game, be it the single player story with various characters interacting with you, or a multiplayer cooperative mode, where you can complete puzzles with your friend. In co-op mode, you and another player will be taking roles of two bots, constructed for the sole purpose of completing tests.<br />\nGame added mechanics of Gel, covering surfaces of the rooms. Said gel, when placed, can speed you up, make you jump higher and even create more places to set up your portals', NULL, CAST(N'2011-04-18T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/328/3283617cb7d75d67257fc58339188742.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (4291, NULL, N'Counter-Strike: Global Offensive', N'Valve', N'Valve', N'FPS', N'PC', N'Counter-Strike is a multiplayer phenomenon in its simplicity. No complicated narratives to explain the source of the conflict, no futuristic and alien threats, but counter-terrorists against terrorists. Arena shooter at its core, CS:GO provides you with various methods of disposing enemies and reliant on cooperation within the team. During the round of the classical clash mode, you will gradually receive currency to purchase different equipment. Each player can carry a primary weapon, secondary pistol, knife and a set of grenades, which all can change the battle if wielded by the skilled player. <br />\nObjectives are clear and vary from map to map, from game mode to game mode. Stop the terrorists from planting explosives, stop the counter-terrorist from retrieving the hostages, kill everyone who isn’t you and just perform the best with.<br />\nCS:GO is one of the major cybersport discipline, which makes playing it more exciting to some players. Aside from purchasing the game, CS:GO is infamous for its loot case system, that requires players to purchase keys, in order to open said cases. Customization items consist of weapon skins, weapon stickers, and sprays that do not affect gameplay and have purely visual value to the player', N'Duo core, 2gb ram, 256 mb video ram', CAST(N'2012-08-21T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/ded/dedd631793c5666ffab9ef03975eb226.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (5679, NULL, N'The Elder Scrolls V: Skyrim', N'Bethesda Softworks', N'Bethesda Game Studio', N'RPG', N'All', N'The fifth game in the series, Skyrim takes us on a journey through the coldest region of Cyrodiil. Once again player can traverse the open world RPG armed with various medieval weapons and magic, to become a hero of Nordic legends –Dovahkiin, the Dragonborn. After mandatory character creation players will have to escape not only imprisonment but a fire-breathing dragon. Something Skyrim hasn’t seen in centuries.<br />\nAfter Oblivion, the magic system was reworked, in order to show players more aggressive and direct combat. As a Dragonborn, your character will be able to use the powerful magic of dragon shouts, powered, upgraded and researched with the souls of the dragons that will be randomly encountered by players, while traveling. Hundreds of sidequests will invite players to discover every part of the newly introduced land. Aside from already filled with guilds, Daedra and steampunk Dwemer ruins, Skyrim has additional DLC content that not only brings Solstheim island and vampire conclave but gives players the ability to build their own homes, instead of buying pre-made ones', N'I5-750,8GB Ram,GTX 470', CAST(N'2011-11-10T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/148/1485f72434101885b098d4290bf0ba67.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (12020, NULL, N'Left 4 Dead 2', N'Valve', N'Valve', N'FPS', N'All', N'ooperative survival continues with a different set of characters. New survivors are making their way through 5 campaigns with an added ability to play through the story of the first game as well, using not only expanded arsenal of 20 ranged and 10 melee weapons but improved AI Director. Your surroundings and weather will change; enemy and item placement will differ from map to map, from difficulty to difficulty. New unique special zombies, placed in the unlucky for the player spot, can end your run.<br />\nHigh compatibility with community mods will allow you not only to add user-created maps but player models, enemy models, and even in-game music, which will help any player to create the unique experience on top of solid game mechanics.<br />\nCompetitive multiplayer mods from arena survival to a head-on competition with another team of survivors are addictive and, in addition to the campaign, will provide you with hundreds of hours of game content', N'Pentium, 2GB RAM, ATI X800', CAST(N'2009-11-17T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/games/c25/c25ebb8eb08790277ae2e2dce0d62174.jpg')
INSERT [dbo].[Game] ([gameID], [wishlistID], [gameName], [publisher], [developer], [genre], [platform], [gameDescription], [systemReq], [releaseDate], [gameArtUrl]) VALUES (13536, NULL, N'Portal', N'Valve', N'Valve', N'Action-Puzzle', N'All', N'Every single time you click your mouse while holding a gun, you expect bullets to fly and enemies to fall. But here you will try out the FPS game filled with environmental puzzles and engaging story. <br />\nSilent template for your adventures, Chell, wakes up in a testing facility. She’s a subject of experiments on instant travel device, supervised by snarky and hostile GLaDOS.<br />\nPlayers will have to complete the tests, room by room, expecting either reward, freedom or more tests. By using the gun, that shoots portals (Portal-Gun™), players will move blocks, travel great distance quickly and learn about your current situation, which is unraveled through environmental storytelling. What you will be told might be different from what you will see.<br />\nWhite environments will guide the player’s portal placement, forcing them to pay attention to the surroundings.  Portal creates tension, allowing either solving puzzles at your own leisure or moving quickly, due to the time limit or threats', N'1.7GHZ Processor,513mb ram,directX 8.1', CAST(N'2007-10-09T00:00:00.000' AS DateTime), N'https://media.rawg.io/media/screenshots/19d/19d3effb85e8f40d0b5b004fb5ab5c76.jpg')
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [Account_FK_accountID] FOREIGN KEY([accountID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [Account_FK_accountID]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_profileID] FOREIGN KEY([profileID])
REFERENCES [dbo].[Profile] ([profileID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_profileID]
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
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_gameID] FOREIGN KEY([gameID])
REFERENCES [dbo].[Game] ([gameID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_gameID]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [game_FK_wishlistID] FOREIGN KEY([wishlistID])
REFERENCES [dbo].[Wishlist] ([wishlistID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [game_FK_wishlistID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_accountID] FOREIGN KEY([gameID])
REFERENCES [dbo].[Game] ([gameID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_accountID]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [PK_Review_gameID] FOREIGN KEY([gameID])
REFERENCES [dbo].[Game] ([gameID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [PK_Review_gameID]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_gameID] FOREIGN KEY([gameID])
REFERENCES [dbo].[Game] ([gameID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_gameID]
GO
USE [master]
GO
ALTER DATABASE [HoneyBadgerDB] SET  READ_WRITE 
GO
