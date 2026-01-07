UPDATE Patient
SET Gender = 'F'
WHERE PatientID = 'DW001';
SELECT * FROM Patient;

UPDATE Appointment
SET ApptStatus = 'Complete'
WHERE ApptStatus = 'Scheduled';
SELECT * FROM Appointment
ORDER BY ApptStatus;

INSERT INTO Diagnosis (AppointmentID, ConditionID, Diagnosis)
VALUES ('APP001', 'FRACT', 'Patient fell and broke right hip');
INSERT INTO Diagnosis (AppointmentID, ConditionID, Diagnosis)
VALUES ('APP002', 'OBES', 'High blood pressure, possible clogging of ateries');
INSERT INTO Diagnosis (AppointmentID, ConditionID, Diagnosis)
VALUES ('APP003', 'CHOL', 'Blood tests reveal high cholesterol');
INSERT INTO Diagnosis (AppointmentID, ConditionID, Diagnosis)
VALUES ('APP005', 'CHSTP', 'Possible heart arythmia');
INSERT INTO Diagnosis (AppointmentID, ConditionID, Diagnosis)
VALUES ('APP007', 'HDACH', 'Migraines');
INSERT INTO Diagnosis (AppointmentID, ConditionID, Diagnosis)
VALUES ('APP010', 'COVID', 'Trouble breathing, tired');
SELECT * FROM Diagnosis;

UPDATE Appointment
SET ApptDate = '2023-07-15', StartTime = '13:00:00', Duration = 2, ApptStatus = 'Scheduled'
WHERE AppointmentID = 'APP004';
UPDATE Appointment
SET ApptDate = '2023-07-20', StartTime = '15:00:00', Duration = 1, ApptStatus = 'Scheduled'
WHERE AppointmentID = 'APP006';
UPDATE Appointment
SET ApptDate = '2023-09-20', StartTime = '08:00:00', Duration = 1, ApptStatus = 'Scheduled'
WHERE AppointmentID = 'APP008';
UPDATE Appointment
SET ApptDate = '2023-09-20', StartTime = '10:00:00', Duration = 2, ApptStatus = 'Scheduled'
WHERE AppointmentID = 'APP009';
SELECT * FROM Appointment
ORDER BY ApptStatus;

Select * From Prescribed;
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP006", "AMOX");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP002", "ARTOR");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP001", "AT25");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP002", "EZE");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP008", "FAMO");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP003", "FIN");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP010", "PROZ");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP007", "SERT");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP003", "TAM");
INSERT INTO Prescribed (AppointmentID, PrescriptionID)
VALUES ("APP009", "WARF");
Select * From Prescribed;

SELECT Appointment.AppointmentID, Appointment.ApptDate, CONCAT(Patient.PatientFName, ' ', Patient.PatientLName) AS Patient, Prescription.Description
FROM Prescribed
JOIN Appointment ON Prescribed.AppointmentID = Appointment.AppointmentID
JOIN Patient ON Appointment.PatientID = Patient.PatientID
JOIN Prescription ON Prescribed.PrescriptionID = Prescription.PrescriptionID
ORDER BY Patient.PatientLName;





