SELECT Familyname, Firstname, Subject
FROM Student s JOIN StudentCourse sc ON (sc.StudentId = s.Id)
JOIN Course c ON (sc.CourseId = c.Id)
ORDER BY Familyname