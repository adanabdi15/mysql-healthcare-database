CREATE SCHEMA IF NOT EXISTS MSIS230;
USE MSIS230;


DROP TABLE IF EXISTS Diagnosis;
DROP TABLE IF EXISTS Prescribed;
DROP TABLE IF EXISTS MedicalHistoryPres;
DROP TABLE IF EXISTS MedicalHistoryCond;
DROP TABLE IF EXISTS MedicalHistorySurg;
DROP TABLE IF EXISTS EmployeeSpecialty;
DROP TABLE IF EXISTS Schedules;
DROP TABLE IF EXISTS Appointments;

DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Prescription;
DROP TABLE IF EXISTS MedicalConditions;
DROP TABLE IF EXISTS Specialty;
DROP TABLE IF EXISTS Surgery;
DROP TABLE IF EXISTS EmployeeType;
-- ------------------------------------------------------
CREATE TABLE IF NOT EXISTS Patient 
(
PatientID VARCHAR(10) PRIMARY KEY,
Passwords VARCHAR(20) NOT NULL,
PatientLName VARCHAR(25) NOT NULL,
PatientFName VARCHAR(25) NOT NULL,
Street Varchar(25),
City VARCHAR(20),
State Char(2),
Zip VARCHAR(10),
Gender CHAR(1)
);
-- ---------------------------------------
CREATE TABLE IF NOT EXISTS EmployeeType
(
TypeID Varchar(10) PRIMARY KEY, 
Descriptions Varchar(10) NOT NULL
);
-- ----------------------------------------
CREATE TABLE IF NOT EXISTS Employees
(
EmployeeID Varchar(10) PRIMARY KEY,
Passwords Varchar(20) NOT NULL,
EmployeeLName Varchar(25) NOT NULL,
TypeID Varchar(10) NOT NULL,
Gender Char(1) NOT NULL,
DateOfHire DateTime,
Foreign Key (TypeID) 
References EmployeeType(TypeID)
);
-- --------------------------------------
CREATE TABLE IF NOT EXISTS Specialty
(
SpecialtyID Varchar(10) PRIMARY KEY,
Descriptions Varchar(40) NOT NULL 
);
-- ---------------------------------------
CREATE TABLE IF NOT EXISTS MedicalConditions 
(
ConditionID Varchar(10) PRIMARY KEY,
Descriptions Varchar(50) NOT NULL
);
-- ---------------------------------------
CREATE TABLE IF NOT EXISTS Surgery 
(
SurgeryID Varchar(10) PRIMARY KEY,
Descriptions Varchar(40) NOT NULL 
);
-- ----------------------------------------
CREATE TABLE IF NOT EXISTS Prescription
(
PrescriptionID Varchar(10) PRIMARY KEY,
Description Varchar(20) NOT NULL
);
-- ----------------------------------------
CREATE TABLE IF NOT EXISTS Schedules 
(
EmployeeID Varchar(10),
DayOfWeek Char(2),
Sortseq Int Not Null,
StartTime Time Not Null,
EndTime Time Not Null, 
PRIMARY KEY (EmployeeID,DayOfWeek),
Foreign Key (EmployeeID)
References Employees(EmployeeID) 
);
-- ----------------------------------------
CREATE TABLE IF NOT EXISTS Appointments 
(
AppointmentID Varchar(10) PRIMARY KEY,
PatientID Varchar(10) Not Null,
EmployeeID Varchar(10) Not null,
ApptDate DateTime,
StartTime Time,
Duration Varchar(10),
ApptStatus Varchar(10),
Foreign Key(PatientID) 
References Patient(PatientID),
Foreign Key (EmployeeID)
References Employees(EmployeeID)
);
-- ----------------------------------------
CREATE TABLE IF NOT EXISTS Diagnosis 
(
AppointmentID Varchar(10),
ConditionID Varchar(10),
Diagnosis Varchar(255),
PRIMARY KEY (AppointmentID,ConditionID),
Foreign Key (AppointmentID)
References Appointments(AppointmentID),
Foreign Key (ConditionID)
References MedicalConditions(ConditionID)
);
-- -----------------------------------------
CREATE TABLE IF NOT EXISTS EmployeeSpecialty 
(
EmployeeID Varchar(10),
SpecialtyID Varchar(10),
PRIMARY KEY (EmployeeID,SpecialtyID),
Foreign Key (EmployeeID)
References Employees(EmployeeID),
Foreign Key (SpecialtyID)
References Specialty(SpecialtyID)
);
-- ------------------------------------------
CREATE TABLE IF NOT EXISTS MedicalHistoryPres
(
PatientID Varchar(10),
MHPDate DateTime,
PrescriptionID Varchar(10),
PRIMARY KEY (PatientID,MHPDate),
Foreign Key (PatientID) 
References Patient(PatientID),
Foreign Key (PrescriptionID)
References Prescription(PrescriptionID)
);
-- ------------------------------------------
CREATE TABLE IF NOT EXISTS MedicalHistoryCond
(
PatientID Varchar(10),
MHCDate DateTime,
ConditionID Varchar(10),
PRIMARY KEY (PatientID,MHCDate),
Foreign Key (PatientID)
References Patient(PatientID),
Foreign Key (ConditionID)
References MedicalConditions(ConditionID) 
);
-- ------------------------------------------
CREATE TABLE IF NOT EXISTS MedicalHistorySurg
(
PatientID Varchar(10),
MHSDate DateTime,
SurgeryID Varchar(10),
PRIMARY KEY (PatientID,MHSDate),
Foreign Key (PatientID)
References Patient(PatientID),
Foreign Key (SurgeryID)
References Surgery(SurgeryID)
);
-- -------------------------------------
CREATE TABLE IF NOT EXISTS Prescribed 
(
AppointmentID Varchar(10),
PrescriptionID Varchar(10),
PRIMARY KEY (AppointmentID,PrescriptionID),
Foreign Key (AppointmentID)
References Appointments(AppointmentID),
Foreign Key (PrescriptionID)
References Prescription(PrescriptionID)
);
-- -------------------------------------




