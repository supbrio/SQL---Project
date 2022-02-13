SELECT Location, TeacherId, DepartmentId AS Location
FROM Department d LEFT JOIN DepartmentTeacher dt
ON dt.TeacherId = d.Id
WHERE DepartmentId IS NOT NULL
ORDER BY d.Id