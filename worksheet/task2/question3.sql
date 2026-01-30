-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT DepartmentName, Count(*) AS TotalEnrolments 
FROM Enrolment E 
JOIN Course C 
ON E.CourseId = C.CourseId
JOIN Department D 
ON C.DepartmentId = D.DepartmentId
GROUP BY D.DepartmentId;