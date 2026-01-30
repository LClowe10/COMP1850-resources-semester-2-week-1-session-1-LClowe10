-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

SELECT S.StudentId, FirstName, LastName, CourseName 
FROM enrolment E
JOIN student S
ON E.StudentId = S.StudentId
JOIN course C
ON E.CourseId = C.CourseId;