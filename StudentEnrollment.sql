CREATE TABLE Student(
    studentID INTEGER PRIMARY KEY,
    name VARCHAR NOT NULL,
    email TEXT NOT NULL,
    department TEXT NOT NULL
);

CREATE TABLE Course(
    courseID VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL,
    credits INTEGER,
    department TEXT NOT NULL
);

CREATE TABLE Enrollement(
    enrollID VARCHAR PRIMARY KEY,
    studentID INTEGER,
    courseID VARCHAR,
    grade VARCHAR NOT NULl,

    FOREIGN KEY (studentID) REFERENCES Student(studentID),
    FOREIGN KEY (courseID) REFERENCES Course(courseID)
);