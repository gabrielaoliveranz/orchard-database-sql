CREATE DATABASE Orchard;
USE Orchard;
---------------------------------------------------
-- POSITION
---------------------------------------------------
CREATE TABLE Position (
  positionID INT NOT NULL,
  title VARCHAR(100) NOT NULL,
  CONSTRAINT PK_Position PRIMARY KEY (positionID)
);

---------------------------------------------------
-- EMPLOYEE
---------------------------------------------------
CREATE TABLE Employee (
  employeeID INT NOT NULL,
  firstName VARCHAR(100) NOT NULL,
  lastName VARCHAR(100) NOT NULL,
  positionID INT NOT NULL,
  managerID INT NULL,

  CONSTRAINT PK_Employee PRIMARY KEY (employeeID),

  CONSTRAINT FK_Employee_Position
    FOREIGN KEY (positionID) REFERENCES Position (positionID),

  CONSTRAINT FK_Employee_Manager
    FOREIGN KEY (managerID) REFERENCES Employee(employeeID)
);

CREATE TABLE Fruit (
  fruitType INT NOT NULL,
  teReoName VARCHAR(100),
  englishName VARCHAR(100),
  classification VARCHAR(50),

  CONSTRAINT PK_Fruit PRIMARY KEY (fruitType)
);

CREATE TABLE Grade (
  gradeID INT NOT NULL,
  gradeDescription VARCHAR(100),

  CONSTRAINT PK_Grade PRIMARY KEY (gradeID)
);

CREATE TABLE Tag (
  tagID INT NOT NULL,
  employeeID INT NOT NULL,

  CONSTRAINT PK_Tag PRIMARY KEY (tagID),

  CONSTRAINT FK_Tag_Employee
    FOREIGN KEY (employeeID) REFERENCES Employee(employeeID)
);

CREATE TABLE Bin (
  binNo INT NOT NULL,
  tagID INT NOT NULL,
  employeeID INT NOT NULL,
  fruitType INT NOT NULL,
  percentFull DECIMAL(5,2),
  datePicked DATE,
  timePicked TIME,

  CONSTRAINT PK_Bin PRIMARY KEY (binNo, tagID),

  CONSTRAINT FK_Bin_Tag
    FOREIGN KEY (tagID) REFERENCES Tag(tagID),

  CONSTRAINT FK_Bin_Employee
    FOREIGN KEY (employeeID) REFERENCES Employee(employeeID),

  CONSTRAINT FK_Bin_Fruit
    FOREIGN KEY (fruitType) REFERENCES Fruit(fruitType)
);

CREATE TABLE Box (
  boxID INT NOT NULL,
  fruitType INT NOT NULL,
  gradeID INT NOT NULL,
  percentFull DECIMAL(5,2),
  datePacked DATE,
  timePacked TIME,
  dateShipped DATE,

  CONSTRAINT PK_Box PRIMARY KEY (boxID),

  CONSTRAINT FK_Box_Fruit
    FOREIGN KEY (fruitType) REFERENCES Fruit(fruitType),

  CONSTRAINT FK_Box_Grade
    FOREIGN KEY (gradeID) REFERENCES Grade(gradeID)
);
