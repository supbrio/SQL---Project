SELECT Location, Familyname, Firstname,  FORMAT (DateOfBirth, 'd', 'fi-FI') AS Birthday
FROM Teacher t JOIN DepartmentTeacher dt ON (t.Id = dt.TeacherId) JOIN Department d ON (d.Id = dt.DepartmentId)
Order BY Location, Familyname