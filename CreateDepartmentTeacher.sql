SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[DepartmentTeacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_DepartmentTeacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[DepartmentTeacher]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentTeacher_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])

ALTER TABLE [dbo].[DepartmentTeacher] CHECK CONSTRAINT [FK_DepartmentTeacher_Department]

ALTER TABLE [dbo].[DepartmentTeacher]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentTeacher_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])

ALTER TABLE [dbo].[DepartmentTeacher] CHECK CONSTRAINT [FK_DepartmentTeacher_Teacher]

/*THIS QUERY FILE CREATES A CONNECTION BETWEEN TABLES: Department and Teacher*/