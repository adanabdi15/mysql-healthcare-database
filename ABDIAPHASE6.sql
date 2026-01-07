SELECT Employee.EmployeeID, concat(EmployeeFName, ' ', EmployeeLName) AS Employee, DayOfWeek, StartTime, EndTime
FROM Employee
LEFT JOIN Schedule ON Employee.EmployeeID = Schedule.EmployeeID
ORDER BY Schedule.StartTime, Employee.EmployeeID;

SELECT ApptDate, concat(PatientFName, ' ', PatientLName) AS Patient, concat(EmployeeFName, ' ', EmployeeLName) AS Employee, Appointment.StartTime, Appointment.Duration, Appointment.ApptStatus
FROM Patient
LEFT JOIN Appointment ON Patient.PatientID = Appointment.PatientID
LEFT JOIN Employee ON Appointment.EmployeeID = Employee.EmployeeID
ORDER BY Appointment.ApptDate desc, Patient.PatientLName;

SELECT Prescription.PrescriptionID, Prescription.Description 
FROM Prescription
Where Prescription.PrescriptionID Not In ( SELECT PrescriptionID From MedicalHistoryPres);

SELECT MedicalConditions.ConditionID, MedicalConditions.Description 
From MedicalConditions
Where MedicalConditions.ConditionID in (SELECT ConditionID FROM MedicalHistoryCond);
 
SELECT TypeID, Description 
From EmployeeType
WHERE Description LIKE "Null";

Select Patient.State, COUNT(*) as "Total Patient"
From Patient
Group By State
Order By State;

Select MIN(ApptDate) AS "Earliest Appointment Date" , MAX(ApptDate) AS "Latest Appointment Date" 
From Appointment;

Select Employee.TypeID, COUNT(*) as "Total Employees" 
From Employee
Group By TypeID
Order by TypeID; 

Select Schedule.DayOfWeek, COUNT(*) as "Employees Working"
From Schedule
Group By Schedule.DayOfWeek
ORDER BY 
Case DayOfWeek 
When "MO" Then 1 
When "TU" Then 2 
When "WE" Then 3
When "TH" Then 4
When "FR" Then 5
end; 

Select Patient.Gender, Count(*) as Total 
From Patient 
Group By Gender 
Order By Gender desc; 


