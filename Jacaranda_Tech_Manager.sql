
CREATE TABLE [dbo].[Contacts](
	[Id] [int] NOT NULL,
	[Tel] [varchar](20) NULL,
	[Language] [varchar](20) NULL,
	[Enrollment_Date] [datetime] NULL,
	[Months_Preganant] [int] NULL,
	[Delivery_Date] [date] NULL,
	[Date_Uploaded] [datetime] NULL,
	[Group] [varchar](20) NULL,
	[Facility_Id] [int] NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facility]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facility](
	[Id] [int] NOT NULL,
	[Facility_Name] [varchar](20) NULL,
	[County] [varchar](20) NULL,
	[Sub_County] [varchar](20) NULL,
	[Dhis_Facility_Code] [varchar](20) NULL,
 CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intent]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intent](
	[Id] [int] NOT NULL,
	[Description] [varchar](20) NULL,
 CONSTRAINT [PK_Intent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message_Outgoing]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message_Outgoing](
	[Id] [int] NOT NULL,
	[Contact_Id] [int] NULL,
	[Date_Created] [datetime] NULL,
	[Agent] [varchar](50) NULL,
	[Agent_Response] [varchar](50) NULL,
 CONSTRAINT [PK_Message_Outgoing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages_Incoming]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages_Incoming](
	[Id] [int] NOT NULL,
	[Contact_Query] [varchar](max) NULL,
	[Intent_Id] [int] NULL,
	[Contact_Id] [int] NULL,
	[Intent_Score] [decimal](18, 9) NULL,
	[Entry_Creation_Date] [datetime] NULL,
	[Query_Priority_Id] [int] NULL,
 CONSTRAINT [PK_Messages_Incoming] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query_Priority]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query_Priority](
	[Id] [int] NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Query_Priority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Survey_Immunization]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey_Immunization](
	[Id] [int] NOT NULL,
	[Contact_Id] [int] NULL,
	[Survey_Date] [datetime] NULL,
	[Baby_Given_BCG] [bit] NULL,
	[Given_Polio] [bit] NULL,
	[Exited] [bit] NULL,
	[Survey_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Survey_Respect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Survey_Respect]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey_Respect](
	[Id] [int] NOT NULL,
	[Flow_Name] [varchar](50) NULL,
	[Survey_Date] [datetime] NULL,
	[Facility_Id] [int] NULL,
	[Continue_With_Survey] [bit] NULL,
	[Treated_With_Respect] [bit] NULL,
	[Treated_With_Respect_Explanation] [varchar](max) NULL,
	[Contact_Id] [int] NULL,
 CONSTRAINT [PK_Survey_Immunization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Survey_Technical_Quality]    Script Date: 21/03/2022 01:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey_Technical_Quality](
	[Id] [int] NOT NULL,
	[Contact_Id] [int] NULL,
	[SurveyName] [int] NULL,
	[Survey_Date] [datetime] NULL,
	[Facility_Id] [int] NULL,
	[Given_Ifas] [bit] NULL,
	[Blood_Pressure_Taken] [bit] NULL,
	[Height_Weight_Taken] [bit] NULL,
	[Blood_And_Urine_Test] [bit] NULL,
	[Hiv_And_Syphillis_Status_Test] [bit] NULL,
	[First_Dose_Of_Tetanus] [bit] NOT NULL,
	[Birth_Plan_And_Edd] [bit] NULL,
	[Pregnancy_Danger_Signs_Talk] [bit] NULL,
	[Nutrition_Talk] [bit] NULL,
	[Service3_To_Explanations] [varchar](50) NULL,
	[Exited] [bit] NULL,
 CONSTRAINT [PK_Survey_Technical_Quality] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Facility] FOREIGN KEY([Facility_Id])
REFERENCES [dbo].[Facility] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Facility]
GO
ALTER TABLE [dbo].[Message_Outgoing]  WITH CHECK ADD  CONSTRAINT [FK_Message_Outgoing_Contacts] FOREIGN KEY([Contact_Id])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Message_Outgoing] CHECK CONSTRAINT [FK_Message_Outgoing_Contacts]
GO
ALTER TABLE [dbo].[Messages_Incoming]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Incoming_Contacts] FOREIGN KEY([Contact_Id])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Messages_Incoming] CHECK CONSTRAINT [FK_Messages_Incoming_Contacts]
GO
ALTER TABLE [dbo].[Messages_Incoming]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Incoming_Intent] FOREIGN KEY([Intent_Id])
REFERENCES [dbo].[Intent] ([Id])
GO
ALTER TABLE [dbo].[Messages_Incoming] CHECK CONSTRAINT [FK_Messages_Incoming_Intent]
GO
ALTER TABLE [dbo].[Messages_Incoming]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Incoming_Query_Priority] FOREIGN KEY([Query_Priority_Id])
REFERENCES [dbo].[Query_Priority] ([Id])
GO
ALTER TABLE [dbo].[Messages_Incoming] CHECK CONSTRAINT [FK_Messages_Incoming_Query_Priority]
GO
ALTER TABLE [dbo].[Survey_Immunization]  WITH CHECK ADD  CONSTRAINT [FK_Survey_Immunization_Contacts] FOREIGN KEY([Contact_Id])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Survey_Immunization] CHECK CONSTRAINT [FK_Survey_Immunization_Contacts]
GO
ALTER TABLE [dbo].[Survey_Respect]  WITH CHECK ADD  CONSTRAINT [FK_Survey_Respect_Contacts] FOREIGN KEY([Contact_Id])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Survey_Respect] CHECK CONSTRAINT [FK_Survey_Respect_Contacts]
GO
ALTER TABLE [dbo].[Survey_Technical_Quality]  WITH CHECK ADD  CONSTRAINT [FK_Survey_Technical_Quality_Contacts] FOREIGN KEY([Contact_Id])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Survey_Technical_Quality] CHECK CONSTRAINT [FK_Survey_Technical_Quality_Contacts]
GO
USE [master]
GO
ALTER DATABASE [Interview] SET  READ_WRITE 
GO
