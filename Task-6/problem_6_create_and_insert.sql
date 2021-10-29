-- Creating PERSON Table
CREATE TABLE Person
(
    PersonId INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleInitial VARCHAR(50),
    LastName VARCHAR(50), 
    DatOfBirth DATE
);

-----------------------------------------

-- Creating STUDENT Table
CREATE TABLE Student (

    StudentId INT IDENTITY PRIMARY KEY,
    PersonId INT UNIQUE FOREIGN KEY REFERENCES Person(PersonId)
    Email VARCHAR(50) NOT NULL

);

-----------------------------------------

-- Creting CREDIT Table 
Create TABLE Credit
 (
     CreditId INT PRIMARY KEY (StudentId, CourseId),
     StudentId INT UNIQUE FOREIGN KEY REFERENCES Student(StudentId),
     CourseId INT  UNIQUE FOREIGN KEY REFERENCES Course(CourseId),
     Grade INT NOT NULL,
     Attemp INT NOT NULL  
 );

-----------------------------------------

-- Creating COURSE TABLE
CREATE TABLE Course 
 (
     CourseId INT IDENTITY PRIMARY KEY,
     CourseName VARCHAR(50),
     Teacher VARCHAR(50)

-----------------------------------------


-- Load Data into Tables
INSERT INTO Person VALUES ('Francis', 'D', 'Capallo', '1992-05-05')
INSERT INTO Student VALUES (7, 'sade@gmail.com')
INSERT INTO Student VALUES (8, 'francis@gmail.com')
INSERT INTO Credit VALUES (3, 3, 3, 4, 2)

-- Load Data into HISTORY Table
INSERT INTO Course VALUES ('History', 'Miss HANNA Brown')
INSERT INTO Course VALUES ('Math', 'Mr Harsa Bhogle')

-----------------------------------------

-- Query Data
SELECT * FROM Credit

