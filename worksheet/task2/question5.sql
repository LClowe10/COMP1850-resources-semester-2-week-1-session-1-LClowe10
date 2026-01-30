-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT S.StudentId, FirstName, LastName, SUM(Credits) AS TotalCreditsPassed 
FROM enrolment E 
JOIN student S
ON E.StudentId = S.StudentId
JOIN course C 
ON E.CourseId = C.CourseId
WHERE Grade >= 40
GROUP BY S.StudentId;