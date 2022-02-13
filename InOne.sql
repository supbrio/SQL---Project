IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'SchoolOfEngineering')
BEGIN
    CREATE database [SchoolOfEngineering]
	PRINT 'Database SchoolOfEngineering successfully created.'
END
ELSE
	PRINT 'You already have database SchoolOfEngineering created.'
GO
USE [SchoolOfEngineering]
GO

:setvar path "YOURPATH\School Of Engineering"

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'Department')
BEGIN
	:r $(path)\CreateDepartment.sql
	PRINT 'Table Department successfully created.'
END
ELSE
	PRINT 'You already have table Department created.'
GO
IF NOT EXISTS (SELECT * FROM Department)
BEGIN
	:r $(path)\InsertDepartment.sql
	PRINT 'Information added successfully to table Department.'
END
ELSE
	PRINT 'You already have the Department information added.'
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'Course')
BEGIN
	:r $(path)\CreateCourse.sql
	PRINT 'Table Course successfully created.'
END
ELSE
	PRINT 'You already have table Course created.'
GO
IF NOT EXISTS (SELECT * FROM Course)
BEGIN
	:r $(path)\InsertCourse.sql
	PRINT 'Information added successfully to table Course.'
END
ELSE
	PRINT 'You already have the Course information added.'
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'Teacher')
BEGIN
	:r $(path)\CreateTeacher.sql
	PRINT 'Table Teacher successfully created.'
END
ELSE
	PRINT 'You already have table Teacher created.'
GO
IF NOT EXISTS (SELECT * FROM Teacher)
BEGIN
	:r $(path)\InsertTeacher.sql
	PRINT 'Information added successfully to table Teacher.'
END
ELSE
	PRINT 'You already have the Teacher information added.'
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'Student')
BEGIN
	:r $(path)\CreateStudent.sql
	PRINT 'Table Student successfully created.'
END
ELSE
	PRINT 'You already have table Student created.'
GO
IF NOT EXISTS (SELECT * FROM Student)
BEGIN
	:r $(path)\InsertStudent.sql
	PRINT 'Information added successfully to table Student.'
END
ELSE
	PRINT 'You already have the Student information added.'
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'DepartmentCourse')
BEGIN
	:r $(path)\CreateDepartmentCourse.sql
	PRINT 'Table DepartmentCourse successfully created.'
END
ELSE
	PRINT 'You already have table DepartmentCourse created.'
GO
IF NOT EXISTS (SELECT * FROM DepartmentCourse)
BEGIN
	:r $(path)\InsertDepartmentCourse.sql
	PRINT 'Information added successfully to table DepartmentCourse.'
END
ELSE
	PRINT 'You already have the DepartmentCourse information added.'
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'DepartmentTeacher')
BEGIN
	:r $(path)\CreateDepartmentTeacher.sql
	PRINT 'Table DepartmentTeacher successfully created.'
END
ELSE
	PRINT 'You already have table DepartmentTeacher created.'
GO
IF NOT EXISTS (SELECT * FROM DepartmentTeacher)
BEGIN
	:r $(path)\InsertDepartmentTeacher.sql
	PRINT 'Information added successfully to table DepartmentTeacher.'
END
ELSE
	PRINT 'You already have the DepartmentTeacher information added.'
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'StudentCourse')
BEGIN
	:r $(path)\CreateStudentCourse.sql
	PRINT 'Table StudentCourse successfully created.'
END
ELSE
	PRINT 'You already have table StudentCourse created.'
GO
IF NOT EXISTS (SELECT * FROM StudentCourse)
BEGIN
	:r $(path)\InsertStudentCourse.sql
	PRINT 'Information added successfully to table StudentCourse.'
END
ELSE
	PRINT 'You already have the StudentCourse information added.'
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'TeacherCourse')
BEGIN
	:r $(path)\CreateTeacherCourse.sql
	PRINT 'Table TeacherCourse successfully created.'
END
ELSE
	PRINT 'You already have table TeacherCourse created.'
GO
IF NOT EXISTS (SELECT * FROM TeacherCourse)
BEGIN
	:r $(path)\InsertTeacherCourse.sql
	PRINT 'Information added successfully to table TeacherCourse.'
END
ELSE
	PRINT 'You already have the TeacherCourse information added.'
GO
