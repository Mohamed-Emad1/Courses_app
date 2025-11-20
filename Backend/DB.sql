CREATE TABLE Students (
    StudentID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL
    -- PaymentId INT
    -- CONSTRAINT fk_payIDStudent_payId
    -- FOREIGN KEY (PaymentId)
    -- REFERENCES Payment (PayID)
    -- ON DELETE CASCADE
    -- ON UPDATE CASCADE
);



CREATE TABLE Teachers (
    TeacherID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL
    -- PaymentId INT
    -- CONSTRAINT fk_payIDStudent_payId
    -- FOREIGN KEY (PaymentId)
    -- REFERENCES Payment (PayID)
    -- ON DELETE CASCADE
    -- ON UPDATE CASCADE
);
