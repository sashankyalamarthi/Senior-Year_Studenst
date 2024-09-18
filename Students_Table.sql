CREATE TABLE Students (  -- Create a new table named Students
    StudnetID INT PRIMARY KEY,  -- Define a column named StudentID of type INT which is the primary key
    FirstName VARCHAR(50),  -- Define a column named FirstName of type VARCHAR with a maximum length of 50 characters
    MiddelName VARCHAR(50),  -- Define a column named MiddleName of type VARCHAR with a maximum length of 50 characters
    LastName VARCHAR(50),  -- Define a column named LastName of type VARCHAR with a maximum length of 50 characters
    DateOfBirth DATE,  -- Define a column named DateOfBirth of type DATE
    CLASS VARCHAR(10),  -- Define a column named CLASS of type VARCHAR with a maximum length of 10 characters
    PHONENUMBER INT(15),  -- Define a column named PHONENUMBER of type INT with a maximum length of 15 digits
    EMAIL VARCHAR(50),  -- Define a column named EMAIL of type VARCHAR with a maximum length of 50 characters
    CITY VARCHAR(50)  -- Define a column named CITY of type VARCHAR with a maximum length of 50 characters
);  -- End of table definition