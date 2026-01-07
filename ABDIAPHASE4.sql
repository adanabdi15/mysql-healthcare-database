

-- #1
select *
from patient
order by PatientLName;

-- #2
select *
from Employee
order by EmployeeLName;

-- #3
select concat(PatientFName,' ', PatientLName) as Patient, City, State
From Patient 
WHERE State = 'MA'
order by City, PatientLName;

-- #4
select concat(EmployeeFName, ' ', EmployeeLName) as Employee, TypeID
From Employee
WHERE TypeID = 'PHY' OR TypeID = 'SURG'
Order by TypeID;

-- #5
select ConditionID, Description 
From MedicalConditions
order by Description;

-- #6
Select PrescriptionID, Description 
From Prescription
Where Description LIKE '%20%'
order by Description; 


-- #7
select concat(EmployeeFName, ' ', EmployeeLName) as Employee, DateOfHire
From Employee 
WHERE DateOfHire >= '2019-01-01'
Order by DateOfHire desc;


-- #8
select *
from employee 
WHERE Gender = 'F'
Order by EmployeeLName;

-- 9#
select *
from Specialty 
WHERE Description LIKE '%Surgery';


-- 10#
select concat(PatientFName,' ', PatientLName) as Patient, City, State
From Patient 
WHERE State NOT LIKE 'MA' AND Gender = 'M'
























