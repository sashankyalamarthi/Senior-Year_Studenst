CREATE TABLE Marks (
    StudentID INT,  -- Define a column named StudentID of type INT
    SubjectID INT,  -- Define a column named SubjectID of type INT
    Mid1Marks INT,  -- Define a column named Mid1Marks of type INT for storing the marks of midterm 1
    Mid2Marks INT,  -- Define a column named Mid2Marks of type INT for storing the marks of midterm 2
    PRIMARY KEY (StudentID, SubjectID),  -- Define a composite primary key consisting of StudentID and SubjectID
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),  -- Define a foreign key constraint on StudentID column referencing StudentID column in Students table
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)  -- Define a foreign key constraint on SubjectID column referencing SubjectID column in Subjects table
)  -- End of table definition