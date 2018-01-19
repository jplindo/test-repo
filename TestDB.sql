USE [master];  
GO  

CREATE DATABASE [TestDB];  
GO

CREATE LOGIN [testdbuser] 
WITH PASSWORD=N'Db0000000pwd!',
DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [TestDB];
GO

CREATE USER [testdbuser] FOR LOGIN [testdbuser] WITH DEFAULT_SCHEMA=[dbo]
ALTER ROLE [db_datareader] ADD MEMBER [testdbuser]
ALTER ROLE [db_datawriter] ADD MEMBER [testdbuser]

CREATE TABLE [dbo].[SampleData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
 CONSTRAINT [PK_SampleData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[SampleData] ON 
INSERT [dbo].[SampleData] ([Id], [Text]) VALUES (1, N'This is text 1')
INSERT [dbo].[SampleData] ([Id], [Text]) VALUES (2, N'This is text 2')
INSERT [dbo].[SampleData] ([Id], [Text]) VALUES (3, N'This is text 3')
SET IDENTITY_INSERT [dbo].[SampleData] OFF
