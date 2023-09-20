
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[client_id] [uniqueidentifier] NULL,
	[live_prompt] [varchar](max) NULL,
	[test_prompt] [varchar](max) NULL,
	[product_display] [bit] NULL,
	[url_display] [bit] NULL,
	[llm_model] [varchar](255) NULL,
	[temperature] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [uniqueidentifier] NOT NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[client_id] [uniqueidentifier] NULL,
	[password] [varchar](255) NULL,
	[loginmethod] [varchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_clients] FOREIGN KEY([client_id])
REFERENCES [dbo].[clients_table] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_clients]
GO


CREATE TABLE [dbo].[clients_table](
	[id] [uniqueidentifier] NOT NULL,
	[client_name] [varchar](255) NULL,
	[namespace_id] [uniqueidentifier] NULL,
	[namespace] [varchar](255) NULL,
	[tempnamespace] [varchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clients_table] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clients_table] ADD  DEFAULT (newid()) FOR [id]
GO



