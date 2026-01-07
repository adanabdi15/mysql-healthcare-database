USE MSIS230; 


DELETE FROM MedicalHistorySurg;
DELETE FROM MedicalHistoryCond;
DELETE FROM MedicalHistoryPres;
DELETE FROM EmployeeSpecialty;
DELETE FROM Appointments;
DELETE FROM Schedules;


DELETE FROM Prescription;
DELETE FROM Surgery;
DELETE FROM MedicalConditions;
DELETE FROM Specialty;
DELETE FROM Employees;
DELETE FROM EmployeeType;
DELETE FROM Patient;





INSERT INTO Patient (PatientID, PatientLName, PatientFName, Street, City, State, Zip, Gender, Passwords) 
VALUE 
( 'SJ001', 'Jones', 'Samuel', '15 Main Street', 'Chelsea', 'MA', '01503', 'M', 'SJones1234' ),
( 'NS001', 'Smith', 'Nancy', '12 Royal Pointe Drive', 'Cambridge', 'MA', '02144-2525', 'F', 'NSmith6954'),
( 'RA001', 'Adams', 'Robert', '420 Brook Ave SE', 'Boston', 'MA', '02155-0154', 'M', 'RAdams2323'),
( 'BB001', 'Brooks', 'Bradford', '425 West WT Harris', 'Boston', 'MA', '02156', 'M', 'BBrooks9815'), 
( 'SM001', 'McDonald', 'Susan', '32 Harvard Street', 'Cambridge', 'MA', '02140', 'F', 'SMcDonald1257'),
( 'SW001', 'Winsor', 'Stephen', '54 Tremont Street', 'Boston', 'MA', '02157-5658', 'M', 'SWinsor1299'),
( 'TA001', 'Anthony', 'Todd', '1 Cambridge Street', 'Cambridge', 'MA', '02142-2562', 'M', 'TAnthony5972'), 
('JW001', 'Walker',	'Joanne', '543 Boylston Street', 'Boston', 'MA', '02157-2222', 'F', 'JWalker2222'),
('TH001', 'Hastings', 'Timothy', '54 Linden Street', 'Woonsocket', 'RI', '01989', 'M', 'THastings2187'),
('MY001', 'Young', 'Margaret', '12 First Street', 'Pawtucket',	'RI', '01925', 'F', 'MYoung7098'),
('CM001', 'MacNamara', 'Christine', '37 Colony Circle',	'Tewksbury', 'MA', '02654-0001', 'F', 'CMacNamara0014'),
('DW001', 'Winsor', 'Deborah', '14 Lyman Road', 'Nashua', 'NH', '03254', 'M', 'DWinsor0818'),
('HB001', 'Brown', 'Harold', '178 Cross Street', 'Worcester', 'MA',	'01565', 'M', 'HBrown2525'),
('CN001', 'Noble', 'Charles', '17 Seaside Lane', 'Plymouth', 'MA', '01598-5555', 'M', 'CNoble9514'),
('FL001', 'Lawton', 'Frances', '100 Torrey Pine Drive',	'Providence', 'RI', '01922', 'F', 'FLawton7536'),
('PH001', 'Hohl', 'Patrick', '12 Michigan Blvd.', 'Revere', 'MA', '02023', 'M', 'PHohl6007'),
('KY001', 'Yang', 'Kim', '18 Boston Post Road', 'Sudbury',	'MA', '01958-2345',	'F', 'KYang4870'), 
('JS001', 'Santiago', 'Jose', '444 Hickory Lane', 'Portsmouth',	'NH', '03365', 'M', 'JSantiago1188');

INSERT INTO EmployeeType (TypeID, Descriptions)
VALUE
( 'PHY', 'Physician'),
('RN', 'Registered Nurse'),
('LPN', 'Licensed Practical Nurse'),
('TECH', 'Technician'),
('SCHED', 'Scheduler'),
('ADMIN', 'Office Staff'),
('PA', 'Physician Assistant'),
('SURG', 'Surgeon');


INSERT INTO Employees ( EmployeeID, TypeID, EmployeeLName, EmployeeFName, Passwords, Gender, DateOfHire)
VALUE 
('PP001', 'PHY', 'Pierce', 'Paul', 'ppierce1234', 'M', '2009-12-15'),
('AA001', 'SURG', 'Adams', 'Abigail', 'aadams1598', 'F', '2022-04-09'), 
('WS001', 'TECH', 'Smithson', 'William', 'wsmithson3578', 'M', '2015-07-21'),
('AB001', 'TECH',  'Bonner', 'Allison', 'abonner1265', 'F', '2015-04-15'),
('MB001', 'LPN', 'Brady', 'Marcia', 'mbrady9635', 'F', '2019-04-30'),
('KN001', 'ADMIN', 'Nelson', 'Kenneth', 'knelson7532', 'M', '2022-05-22'),
('CA001','PA', 'Alexander', 'Constance', 'calexander9514', 'F', '2014-09-25'),
('TN001', 'RN', 'Nguyen', 'Trin', 'tnguyen2468', 'M', '2017-02-02'),
('SB001', 'ADMIN', 'Brandt', 'Stephen', 'sbrandt5454', 'M', '2014-08-13'),
('JE001', 'SCHED', 'Espanet', 'Jesse', 'jespanet1245', 'M', '2020-01-17'),
('JE002', 'PA', 'Espanet', 'Jordan', 'jespanet1246', 'F', '2016-03-12'),
('EL001', 'SURG', 'Lawton', 'Eleanor', 'elawton5577', 'F', '2015-06-01'),
('RK001', 'RN', 'King', 'Robert', 'rking5079', 'M', '2015-10-11'),
('RK002', 'PHY', 'Kershaw', 'Rowena', 'rkershaw6901', 'F', '2010-10-10'),
('RM001', 'PHY', 'McNamara', 'Richard', 'rmcnamara0015', 'M', '2019-06-30'),
('LC001', 'RN', 'Chin', 'Lori', 'lchin3690', 'F', '2013-08-13'),
('JM001', 'SURG', 'Martinez', 'Jose', 'jmartinez2468', 'M', '2017-01-15'),
('MB002', 'PHY', 'Brown', 'Marcus', 'mbrown7777', 'M', '2015-02-02');

INSERT INTO Specialty ( SpecialtyID, Descriptions) 
VALUE
('ANES', 'Anesthesiology'),
('RAD', 'Radiology'),
('FAM', 'Family Medicine'),
('INT', 'Internal Medicine'),
('NEU', 'Neurology'),
('OBS', 'Obstetrics'),
('OPH', 'Ophthalmology'),
('PED', 'Pediatrics'),
('ENT', 'Ears, Nose, Throat'),
('GENSG', 'General Surgery'),
('VASSG', 'Vascular Surgery'),
('ORTSG', 'Orthopedic Surgery'),
('URO', 'Urology'),
('CARDIO', 'Cardiovascular');

INSERT INTO MedicalConditions ( ConditionID, Descriptions) 
VALUE
('APP', 'Appendicitis'),
('ARTH', 'Arthritis'),
('ASTH', 'Asthma'),
('BRONC', 'Bronchitis'),
('CHSTP', 'Chest Pain'),
('COVID', 'COVID-19'),
('DIAB1', 'Type 1 Diabetes'),
('DIAB2', 'Type 2 Diabetes'),
('EAR', 'Earache'),
('GLSTO', 'Gallstones'),
('HDACH', 'Headaches/Migraines'),
('CHOL', 'High Cholesterol'),
('OSTEO', 'Osteoporosis'),
('PNEUM', 'Pneumonia'),
('STOM', 'Stomachache and abdominal pain'),
('TONSI', 'Tonsilitis'),
('ULCER', 'Stomach ulcer'),
('PSOR', 'Psoriasis'),
('OBES', 'Obesity'),
('FRACT', 'Fracture');


INSERT INTO Surgery ( SurgeryID, Descriptions) 
VALUE
('GALL', 'Gall Bladder Removal'),
('APP', 'Appendectomy'),
('CAT', 'Cataract'),
('CORON', 'Coronary Artery Bypass'),
('LBP', 'Low Back Pain'),
('INGH', 'Inguinal Hernia Repair'),
('JNTREP', 'Joint Replacement'),
('OHRT', 'Open Heart'),
('ANGIO', 'Angioplasty'),
('ARTH', 'Arthroscopy');


INSERT INTO Prescription ( PrescriptionID, Descriptions) 
VALUE
('AT25', 'Atenolol 25mg'),
('TAM', 'Tamsulosin 0.4mg'),
('EZE', 'Ezetimibe 10mg'),
('FIN', 'Finasteride 5mg'),
('ARTOR', 'Atorvastatin 20mg'),
('AMOX', 'Amoxicillin 500mg'),
('SERT', 'Sertraline 50mg'),
('FAMO', 'Famotidine 20mg'),
('WARF', 'Warfarin 5mg'),
('PROZ', 'Prozac 20mg');

INSERT INTO Schedules ( EmployeeID, DayOfWeek,SortSeq, StartTime, EndTime) 
VALUE
('PP001', 'MO', '1', '12:00', '20:00'),
('PP001', 'WE', '3', '8:00', '17:00'),
('PP001', 'FR', '5', '12:00', '20:00'),
('AA001', 'TU', '2', '8:00', '17:00'),
('AA001', 'TH', '4', '8:00', '17:00'),
('RK002', 'TU', '2', '8:00', '17:00'),
('RK002', 'TH', '4', '12:00', '20:00'),
('MB002', 'MO', '1', '8:00', '12:00'),
('MB002', 'TU', '2', '8:00', '12:00'),
('MB002', 'WE', '3', '8:00', '12:00'),
('MB002', 'TH', '4', '8:00', '12:00'),
('MB002', 'FR', '5', '8:00', '12:00'),
('WS001', 'MO', '1', '12:00', '17:00'),
('WS001', 'TU', '2', '12:00', '17:00'),
('WS001', 'WE', '3', '12:00', '17:00'),
('WS001', 'TH', '4', '12:00', '17:00'),
('WS001', 'FR', '5', '12:00', '17:00'),
('LC001', 'MO', '1', '8:00', '17:00'),
('LC001', 'WE', '3', '8:00', '17:00'),
('LC001', 'FR', '5', '8:00', '17:00'),
('MB001', 'TU', '2', '8:00', '12:00'),
('MB001', 'TH', '4', '8:00', '12:00'),
('KN001', 'MO', '1', '8:00', '12:00');

INSERT INTO Appointments ( AppointmentID, PatientID, EmployeeID, ApptDate, StartTime, Duration, ApptStatus)
VALUE 
('APP001', 'SJ001', 'MB002', '2023-07-05', '09:00', '2', 'Scheduled'),
('APP002', 'RA001', 'AA001', '2023-09-13', '12:00', '3', 'Scheduled'),
('APP003', 'TA001', 'PP001', '2023-07-11', '16:00', '1', 'Scheduled'),
('APP004', 'CM001', 'JE002', Null, Null,'',''),		
('PP005', 'HB001', 'RK002', '2023-08-23', '08:00', '1', 'Scheduled'),
('APP006', 'FL001', 'EL001', Null, Null,'',''),		
('APP007', 'JW001', 'WS001', '2023-07-25', '15:00', '2', 'Scheduled'),
('APP008', 'MY001', 'EL001', Null, Null,'',''),			
('APP009', 'TA001', 'JE002', Null, Null,'',''),			
('APP010', 'CM001', 'PP001', '2023-07-19', '11:00', '2', 'Scheduled');


INSERT INTO MedicalHistoryCond (PatientID, MHCDate, ConditionID)
VALUE 
('SJ001', '2022-02-02', 'ARTH'),
('NS001', '2022-05-05', 'CHOL'),
('CM001', '2022-11-15', 'CHSTP'),
('HB001', '2022-06-06', 'FRACT'),
('SJ001', '2022-09-09', 'HDACH'),
('CN001', '2022-12-12', 'CHSTP'),
('TA001', '2022-10-01', 'EAR'),
('PH001', '2022-05-19', 'DIAB1'),
('JW001', '2022-04-09', 'PNEUM');

INSERT INTO MedicalHistoryPres ( PatientID, MHPDate, PrescriptionID) 
VALUE
('SJ001', '2022-02-02', 'FAMO'),
('NS001', '2022-05-05', 'EZE'),
('HB001', '2022-06-06', 'TAM'),
('SJ001', '2022-09-09', 'FIN'),
('CN001', '2022-12-12', 'WARF'),
('TA001', '2022-10-01', 'AMOX'),
('JS001', '2022-05-13', 'PROZ'),
('JW001', '2022-04-09', 'AMOX');


INSERT INTO MedicalHistorySurg (PatientID, MHSDate, SurgeryID)
VALUE
('SJ001', '2022-02-02', 'APP'),
('SJ001', '2022-09-09', 'JNTREP'),
('HB001', '2022-06-06', 'ARTH'),
('CN001', '2022-12-12', 'CORON'),
('sw001', '2022-05-09', 'INGH'),
('SM001', '2022-02-27', 'JNTREP');

INSERT INTO EmployeeSpecialty ( EmployeeID, Sequence, SpecialtyID) 
VALUE
('PP001', '1', 'FAM'),
('PP001', '2', 'PED'),
('AA001', '1', 'GENSG'),
('EL001', '1', 'VASSG'),
('RK002', '1', 'OPH'),
('RK002', '2', 'INT'),
('RM001', '1', 'CARDIO'),
('RM001', '2', 'NEU'),
('JM001', '1', 'ORTSG'),
('MB002', '1', 'FAM'),
('MB002', '2', 'INT'),
('AB001', '1', 'RAD'),
('WS001', '1', 'ANES'),
('LC001', '1', 'FAM');




































































