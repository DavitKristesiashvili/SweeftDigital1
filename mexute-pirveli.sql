CREATE DATABASE [School]
GO
USE [School]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pupil](
	[PupilID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](30) NULL,
	[Grade] [int] NOT NULL,
 CONSTRAINT [PK_Pupil] PRIMARY KEY CLUSTERED 
(
	[PupilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](30) NULL,
	[Subjcet] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherPupil](
	[TeachPupID] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
	[PupilID] [int] NOT NULL,
 CONSTRAINT [PK_TeacherPupil] PRIMARY KEY CLUSTERED 
(
	[TeachPupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TeacherPupil]  WITH CHECK ADD  CONSTRAINT [FK_TeacherPupil_Pupil] FOREIGN KEY([PupilID])
REFERENCES [dbo].[Pupil] ([PupilID])
GO
ALTER TABLE [dbo].[TeacherPupil] CHECK CONSTRAINT [FK_TeacherPupil_Pupil]
GO
ALTER TABLE [dbo].[TeacherPupil]  WITH CHECK ADD  CONSTRAINT [FK_TeacherPupil_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
ALTER TABLE [dbo].[TeacherPupil] CHECK CONSTRAINT [FK_TeacherPupil_Teacher]
GO
USE [master]
GO
ALTER DATABASE [School] SET  READ_WRITE 
GO
