USE [news_homework]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 5/4/2019 7:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [int] NOT NULL,
	[comment_mezmun] [nvarchar](100) NOT NULL,
	[news_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_COMMENT] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muellif ]    Script Date: 5/4/2019 7:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muellif ](
	[muellif_id] [int] NOT NULL,
	[muellifAdi] [nvarchar](50) NOT NULL,
	[muellifSoyadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_MUELLIF ] PRIMARY KEY CLUSTERED 
(
	[muellif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muellif_to_news]    Script Date: 5/4/2019 7:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muellif_to_news](
	[muellif_id] [int] NOT NULL,
	[news_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 5/4/2019 7:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xeberinBasligi] [nvarchar](50) NOT NULL,
	[mezmunu] [nvarchar](50) NOT NULL,
	[sekil] [nvarchar](50) NOT NULL,
	[yazilma_tarixi] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/4/2019 7:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_surname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[comment] ([comment_id], [comment_mezmun], [news_id], [user_id]) VALUES (258, N'afasf', 1, 789)
INSERT [dbo].[muellif ] ([muellif_id], [muellifAdi], [muellifSoyadi]) VALUES (123, N'Emin', N'Alizade')
INSERT [dbo].[muellif_to_news] ([muellif_id], [news_id]) VALUES (123, 1)
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([id], [xeberinBasligi], [mezmunu], [sekil], [yazilma_tarixi]) VALUES (1, N'cinayet', N'asfaf', N'###', CAST(N'2019-09-19T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[news] OFF
INSERT [dbo].[users] ([user_id], [user_name], [user_surname]) VALUES (789, N'uLVI', N'mammadli')
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [comment_fk1] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [comment_fk1]
GO
