SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[DepartmentCourse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_DepartmentCourse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[DepartmentCourse]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentCourse_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])

ALTER TABLE [dbo].[DepartmentCourse] CHECK CONSTRAINT [FK_DepartmentCourse_Course]

ALTER TABLE [dbo].[DepartmentCourse]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentCourse_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])

ALTER TABLE [dbo].[DepartmentCourse] CHECK CONSTRAINT [FK_DepartmentCourse_Department]

/*THIS QUERY FILE CREATES A CONNECTION BETWEEN TABLES: Department and Course.*/