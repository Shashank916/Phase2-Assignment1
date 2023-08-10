IF EXISTS (SELECT name FROM sys.databases WHERE name = 'OurExerciseDb')
    DROP DATABASE OurExerciseDb;

CREATE DATABASE OurExerciseDb
ON PRIMARY
(
    NAME = 'OurExerciseDb_data',
    FILENAME = 'D:\Phase-2\Day-1\Assignment\OurExerciseDb.mdf', -- Change the path accordingly
    SIZE = 24MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 8MB
)
LOG ON
(
    NAME = 'OurExerciseDb_log',
    FILENAME = 'D:\Phase-2\Day-1\Assignment\OurExerciseDb.ldf', -- Change the path accordingly
    SIZE = 1MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);

USE OurExerciseDb;

CREATE TABLE StudentRegistrations
(
    Studen INT,
    CourseCode VARCHAR(50),
    RegistrationDate DATE,
    PRIMARY KEY (Student, CourseCode)
);

INSERT INTO StudentRegistrations (Student, CourseCode, RegistrationDate)
VALUES
    (1, 'CSC101', '2023-08-01'),
    (1, 'MAT202', '2023-08-02'),
    (2, 'PHY105', '2023-08-03'),
    (3, 'BIO201', '2023-08-04'),
    (4, 'ENG101', '2023-08-05');

SELECT * FROM StudentRegistrations