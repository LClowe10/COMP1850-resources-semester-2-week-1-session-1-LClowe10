-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

SELECT StudentId, FirstName, LastName, CourseName FROM student JOIN course ON student.StudentId = course.CourseId