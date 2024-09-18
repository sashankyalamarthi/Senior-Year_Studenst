CREATE TABLE Attendance (
    StudentID INT,  -- Define a column named StudentID of type INT
    StudentName VARCHAR(50),  -- Define a column named StudentName of type VARCHAR with a maximum length of 50 characters
    SubjectID INT,  -- Define a column named SubjectID of type INT
    SubjectName VARCHAR(50),  -- Define a column named SubjectName of type VARCHAR with a maximum length of 50 characters
    AttendanceDate DATE,  -- Define a column named AttendanceDate of type DATE
    AttendanceStatus VARCHAR(10),  -- Define a column named AttendanceStatus of type VARCHAR with a maximum length of 10 characters
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID),
    PRIMARY KEY (StudentID, SubjectID, AttendanceDate)  -- Define a composite primary key
);  -- End of table definition