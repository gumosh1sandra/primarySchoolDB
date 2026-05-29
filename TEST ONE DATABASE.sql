
CREATE TABLE Teacher(
TeacherID VARCHAR (6),
FirstName VARCHAR (50),
LastName VARCHAR (50),
Email VARCHAR (60),
PhoneNumber VARCHAR (10),
Address VARCHAR (100)
CONSTRAINT pk_Teacher PRIMARY KEY (TeacherID)
);

INSERT INTO Teacher(TeacherID, FirstName,LastName, Email, PhoneNumber,Address)
VALUES
('T001', 'Twiine',' Rose', 'twiine@gmail.com', '0123456789', 'Muko-Rubanda'),
('T002', 'Atuhaire',' Rashel', 'rashel@gmail.com', '0123456799', 'Rukinda-Rukiga'),
('T003', 'Ainembabazi',' Truder', 'truder@gmail.com', '0123456999', 'Kahaaro_Kabale'),
('T004', 'Tugumisirize',' Evaristo', 'tugumisirize@gmail.com', '0123956999', 'Muko_Rubanda'),
('T005', 'Akampa',' Blessed', 'akampabless@gmail.com', '0123499999', 'Kaharo-Mbarara'),
('T006', 'Gumisiriza',' Adam', 'adam@gmail.com', '0123456979', 'Kikoni_Rubanda'),
('T007', 'Nanyondo','Sara', 'saranany@gmail.com', '0123459789', 'Bukoto-Kampala'),
('T009', 'Ssesollo',' Sharif', 'ssessolo@gmail.com', '0123956789', 'Gayaza-Wakiso'),
('T010', 'Akello',' Great', 'great@gmail.com', '0129456789', 'Apeyong-Gulu')
SELECT* FROM Teacher

CREATE TABLE Pupil(
PupilID VARCHAR (6),
FirstName VARCHAR (50),
LastName VARCHAR (50),
Gender VARCHAR (60),
DateofBirth DATE,
Address VARCHAR (100),
CONSTRAINT pk_Pupil PRIMARY KEY (PupilID)

);

INSERT INTO Pupil
VALUES
('S001', 'Mwesigwa', 'Dan', 'Male', '2011-02-11', 'Rukiga'),
('S002', 'Musisa', 'Johnn', 'Male', '2010-02-11', 'Mpigi'),
('S003', 'Ankunda', 'Susan', 'Female', '2012-09-11', 'Rubanda'),
('S004', 'Tuma', 'Tom', 'Male', '2014-12-22', 'Rukiga') ,
('S005', 'Mukama', 'Obed', 'Male', '2009-01-11', 'Hoima'),
('S006', 'Mwijukye', 'Debrah', 'Female', '2009-03-12', 'Rukiga'), 
('S007', 'Ampuriire', 'Dan', 'Male', '2013-02-11', 'Rukiga'), 
('S008', 'Niwamasiiko', 'Ricky', 'Male', '2014-07-21', 'Lyantonde'), 
('S009', 'Namanda', 'Joan', 'Female', '2017-12-14', 'Lyantonde') ,
('S010', 'Adit', 'Kareem', 'Male', '2011-02-11', 'Kampala') ,
('S011', 'Mwesigwa', 'Precious', 'Female', '2013-03-30', 'Rukiga') ,
('S012', 'Aine', 'Fred', 'Male', '2015-02-28', 'Hoima') ,
('S013', 'Gumisiriza', 'Rhonie', 'Male', '2011-04-27', 'Kabale'),
('S014', 'Kiconco', 'Lovice', 'Female', '2015-02-18', 'Rukiga') ,
('S015', 'Orishaba', 'Leandon', 'Female', '2012-09-15', 'Rukungiri') ,
('S016', 'Amooti', 'Patience', 'Female', '2014-08-21', 'Isingiro') ,
('S017', 'Rukunda', 'Dan', 'Male', '2014-06-03', 'Rukiga') ,
('S018', 'Mukunde', 'Mary', 'Female', '2015-09-11', 'Rukiga') ,
('S019', 'Mahia', 'Akpoth', 'Female', '2015-02-17', 'Kampala') ,
('S020', 'Mwebaze', 'Shifra', 'Female', '2010-05-11', 'Rubanda') 

CREATE TABLE Subject(
subjectID VARCHAR (50),
TeacherID VARCHAR (6),
SubjectName VARCHAR (20) NOT NULL,
SubjectCode VARCHAR (9) UNIQUE,
CONSTRAINT pk_subject PRIMARY KEY (SubjectID),

CONSTRAINT fk_teacher FOREIGN KEY (TeacherID)
REFERENCES Teacher(TeacherID)
);

INSERT INTO Subject
VALUES
('SUB01', 'T001', 'English1', 'ENG101'),
('SUB02', 'T002', 'Mathematics1', 'MTH102'),
('SUB03', 'T003', 'Science1', 'SCI103'),
('SUB04', 'T004', 'Social Studies1', 'SST101'),
('SUB05', 'T005', 'Religious Education', 'RE105'),
('SUB06', 'T006', 'Social Studies2', 'SST102'),
('SUB07', 'T007', 'English2', 'ENG102'),
('SUB09', 'T009', 'Science2', 'SCI102'),
('SUB10', 'T010', 'Mathematics2', 'MTH103');
SELECT* FROM Subject

CREATE TABLE Class(
ClassID INT,
ClassName VARCHAR (20),
CONSTRAINT pk_class PRIMARY KEY(ClassID)
);

INSERT INTO Class
VALUES
(1,'Primary One'),
(2,'Primary Two'),
(3,'Primary Three'),
(4,'Primary Four'),
(5,'Primary Five'),
(6,'Primary Six'),
(7, 'Primary Seven');





CREATE TABLE Enrollment(
EnrollmentID VARCHAR (10),
PupilID VARCHAR (6),
ClassID INT,
EnrollmentDate DATE,
CONSTRAINT pk_enrollment PRIMARY KEY (EnrollmentID),
CONSTRAINT fk_enrolled_pupil FOREIGN KEY (PupilID)
REFERENCES Pupil(PupilID),

CONSTRAINT fk_enrollment_class FOREIGN KEY (ClassID)
REFERENCES Class(ClassID)
)

INSERT INTO Enrollment
VALUES
('ENR001','S009',1,'2025-02-01'),
('ENR002','S014',1,'2025-02-01'),
('ENR003','S017',1,'2025-02-01'),
('ENR004','S012',2,'2023-02-11'),
('ENR005','S016',2,'2023-02-11'),
('ENR006','S011',3,'2022-01-20'),
('ENR007','S019',3,'2022-05-20'),
('ENR008','S004',4,'2022-02-01'),
('ENR009','S008',4,'2025-02-01'),
('ENR010','S018',4,'2021-08-21'),

('ENR011','S003',5,'2023-02-11'),
('ENR012','S015',5,'2023-02-11'),
('ENR013','S001',6, '2022-02-01'),
('ENR014','S002',6,'2022-05-20'),
('ENR015','S005',6,'2025-02-01'),
('ENR016','S007',6,'2023-02-11'),
('ENR017','S013',6,'2025-02-01'),
('ENR018','S020',6,'2021-08-21'),
('ENR019','S006',7,'2025-02-01'),
('ENR020','S010',7,'2025-02-01');



CREATE TABLE Fees(
TransactionID VARCHAR (15), 
PupilID VARCHAR (6),
TransactionDate DATE,
FeesAmount INT,
AmountPaid INT,
FeesBalance INT,
CONSTRAINT pk_fees PRIMARY KEY (TransactionID),
CONSTRAINT fk_fees_pupil FOREIGN KEY (PupilID)
REFERENCES Pupil(PupilID)
);

INSERT INTO Fees
VALUES
('TR001','S001','2025-02-01',500000,500000,0),
('TR002','S002','2025-02-01',500000,450000,50000),
('TR003','S003','2025-02-01',500000,300000,200000),
('TR004','S004','2025-02-01',500000,500000,0),
('TR005','S005','2025-02-01',500000,250000,250000),
('TR006','S006','2025-02-01',500000,500000,0),
('TR007','S007','2025-02-01',500000,400000,100000),
('TR008','S008','2025-02-01',500000,350000,150000),
('TR009','S009','2025-02-01',500000,500000,0),
('TR010','S010','2025-02-01',500000,200000,300000),
('TR011','S011','2025-02-01',500000,500000,0),
('TR012','S012','2025-02-01',500000,450000,50000),
('TR013','S013','2025-02-01',500000,300000,200000),
('TR014','S014','2025-02-01',500000,500000,0),
('TR015','S015','2025-02-01',500000,400000,100000),
('TR016','S016','2025-02-01',500000,250000,250000),
('TR017','S017','2025-02-01',500000,500000,0),
('TR018','S018','2025-02-01',500000,350000,150000),
('TR019','S019','2025-02-01',500000,500000,0),
('TR020','S020','2025-02-01',500000,300000,200000);

--all records from Pupil table
SELECT *
FROM Pupil;

--retrieve using where
SELECT PupilID, FirstName, LastName, Address 
FROM Pupil 
WHERE Address = 'Rukiga';


-- order by
SELECT PupilID, FirstName, LastName, DateofBirth 
FROM Pupil 
ORDER BY FirstName ASC;


-- COUNT
SELECT COUNT(EnrollmentID) AS TotalPupils 
FROM Enrollment;

-- SUM
SELECT SUM(AmountPaid) AS TotalFeesCollected 
FROM Fees;

-- AVG: Calculates the average outstanding fees balance per student
SELECT AVG(FeesBalance) AS AverageFeesBalance 
FROM Fees;





-- using Join
SELECT 
    P.PupilID, 
    P.FirstName, 
    P.LastName, 
    E.ClassID, 
    E.EnrollmentDate
FROM Pupil P
INNER JOIN Enrollment E ON P.PupilID = E.PupilID;




-- Update
UPDATE Pupil 
SET Address = 'Kampala' 
WHERE PupilID = 'S001';
SELECT* FROM Pupil

--trigger
CREATE TRIGGER trg_calculate_fees_balance
ON Fees
AFTER INSERT 
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Fees
    SET FeesBalance = Fees.FeesAmount - Fees.AmountPaid
    FROM Fees
    INNER JOIN inserted ON Fees.TransactionID= inserted.TransactionID;
END;