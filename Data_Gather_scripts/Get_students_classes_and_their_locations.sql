SELECT Subject, Location, Firstname, Familyname, FORMAT (DateOfBirth, 'd', 'fi-FI') AS Birthday
FROM Student s 
JOIN StudentCourse sc ON (s.Id = sc.StudentId) 
JOIN Course c ON (c.Id = sc.CourseId) 
JOIN DepartmentCourse dc ON (c.Id = dc.CourseId) 
JOIN Department d ON (d.Id = dc.DepartmentId)
ORDER BY Subject