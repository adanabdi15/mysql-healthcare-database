SELECT concat(EmployeeFName, ' ', EmployeeLName) AS Employee, DayOfWeek, StartTime, EndTime
FROM Employee, Schedule
Where Employee.EmployeeID = Schedule.EmployeeID
ORDER BY Schedule.SortSeq, Employee.EmployeeLName;
    
SELECT  EmployeeLName, EmployeeFName, Description
FROM Employee, EmployeeSpecialty, Specialty
WHERE Employee.EmployeeID = EmployeeSpecialty.EmployeeID
AND EmployeeSpecialty.SpecialtyID = Specialty.SpecialtyID
ORDER BY  EmployeeLName, Description;

SELECT  EmployeeLName, EmployeeFName, Description
FROM Employee, EmployeeType
WHERE Employee.TypeID = Employeetype.TypeID
ORDER BY  Description, EmployeeLName;

SELECT ApptDate, concat( PatientFName," ",PatientLName) as Patient, concat(EmployeeFName, ' ', EmployeeLName) AS Employee, StartTime, Duration
From Appointment, Employee, Patient
Where Employee.EmployeeID = Appointment.EmployeeID
and Patient.PatientID = Appointment.PatientID
and Starttime Is Not Null 
Order By ApptDate asc, PatientLname;

SELECT MHCDate as HistoryDate, PatientLName, PatientFName,MedicalConditions.Description AS Description, 'Condition' AS Descriptor
From MedicalHistoryCond, Patient, MedicalConditions 
Where MedicalHistoryCond.PatientID = Patient.PatientID
and MedicalHistoryCond.ConditionID = MedicalConditions.ConditionID
Union 
Select MHSDate as HistoryDate, PatientLName, PatientFName, Surgery.Description AS Description, 'Surgery' AS Descriptor
From MedicalHistorySurg, Patient, Surgery 
Where MedicalHistorySurg.PatientID = Patient.PatientID
And MedicalHistorySurg.SurgeryID = Surgery.SurgeryID
Union 
Select MHPDate as HistoryDate, PatientLName, PatientFName, Prescription.Description, 'Prescription' As Descriptor
From MedicalHistoryPres, Patient, Prescription 
Where MedicalHistoryPres.PatientID = Patient.PatientID
And MedicalHistoryPres.PrescriptionID = Prescription.PrescriptionID 
Order by HistoryDate asc, PatientLName asc; 



