SELECT Subject, Familyname, Firstname,  FORMAT (DateOfBirth, 'd', 'fi-FI') AS Birthday
FROM Teacher t JOIN TeacherCourse tc ON (t.Id = tc.TeacherId) JOIN Course c ON (c.Id = tc.CourseId)
Order BY Subject, Familyname