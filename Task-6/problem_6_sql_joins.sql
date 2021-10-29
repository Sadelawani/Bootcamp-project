
-- Create this View using the follwoing Qyery and then
-- uncommnent the "Select" statement below to view the query

CREATE VIEW Student_Report AS

    SELECT FirstName, LastName, Email, Attemp, Grade, Teacher, CourseName

    FROM Person 
        
        INNER JOIN Student ON (Person.PersonId = Student.PersonId)
        INNER JOIN Credit ON (Student.StudentId = Credit.StudentId)
        INNER JOIN Course ON (Credit.CourseId = Course.CourseId);

-- Uncomment the following Statement to view the Join Query
--SELECT * FROM Student_Report



