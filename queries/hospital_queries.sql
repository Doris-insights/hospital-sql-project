USE hospital_practice;

-- Display all patients

SELECT *
FROM patients;

-- Display only the patient name, gender, and city

SELECT patient_name, gender, city
FROM patients;

-- Find all female patients.

SELECT*
FROM patients
WHERE gender= "female";

-- Find patients who live in Aba

SELECT*
FROM patients
WHERE city= "Aba";

-- Find patients born after 1990-01-01.

SELECT*
FROM patients
WHERE date_of_birth = 1990-01-01;

-- Display all doctors who earn more than 800000

SELECT*
FROM doctors
WHERE salary >= 800000;

-- Display all appointments with the status Completed.

SELECT*
FROM appointments
WHERE status=  "completed";

-- Display all patients ordered by their date of birth.

SELECT*
FROM patients
ORDER BY date_of_birth ASC;

-- Count the total number of patients.

SELECT COUNT(*) AS total_patients
FROM patients;

-- Find the average doctor salary.

SELECT AVG(salary) AS Average_salary
FROM doctors;

-- Find the highest doctor salary.

SELECT doctor_name, salary
FROM doctors
WHERE salary = (SELECT MAX(salary) FROM doctors);

SELECT MAX(salary) AS highest_salary
FROM doctors;

-- Find the lowest doctor salary.

SELECT doctor_name, salary
FROM doctors
WHERE salary = (SELECT MIN(salary) FROM doctors);

SELECT MIN(salary) AS highest_salary
FROM doctors;

-- Count how many patients are in each city.

SELECT COUNT(*) AS number_of_patients , city
FROM patients
GROUP BY City;

-- Find the number of appointments handled by each doctor.

SELECT 
    d.doctor_name,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name;

-- Display each doctor together with their department.

SELECT d.doctor_name,
       dp.department_name
FROM departments dp
JOIN doctors d 
  ON dp.department_id = d.department_id
GROUP BY d.doctor_name, dp.department_name;

-- Display each appointment with the patient's name and doctor's name.

SELECT
    a.appointment_id,
    p.patient_name,
    d.doctor_name,
    a.appointment_date,
    a.appointment_time,
    a.status
FROM appointments a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id;

-- Find all patients who have been admitted.

SELECT 
    p.patient_id,
    p.patient_name,
    a.admission_date,
    a.room_number,
    a.diagnosis
FROM patients p
JOIN admissions a
    ON p.patient_id = a.patient_id
WHERE a.admission_status = 'Admitted';

-- Calculate the total medical cost for all patients.

SELECT SUM(cost) AS total_medical_cost
FROM medical_records;

-- Find the average medical-record cost

SELECT AVG(cost) AS avg_medical_cost
FROM medical_records;

-- Show the patient name, doctor name, and appointment date for every appointment

SELECT
    p.patient_name,
    d.doctor_name,
    a.appointment_date
FROM appointments a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id;
    
-- Show the doctor name and department name for every doctor.
    
SELECT d.doctor_name,
        dp.department_name
FROM departments dp
JOIN doctors d
    ON dp.department_id = d.department_id;
    
-- Display the first 5 patients from the patients table.

SELECT *
FROM patients
LIMIT 5;

-- Display the 3 highest-paid doctors.

SELECT
    doctor_name,
    salary
FROM doctors
ORDER BY salary DESC
LIMIT 3;

-- Display all the different cities where patients live.

SELECT DISTINCT city
FROM patients;

-- Display all the different diagnoses in the medical records.

SELECT DISTINCT diagnosis
FROM medical_records;

-- Find doctors whose names start with "Dr. S".

SELECT
    doctor_name
FROM doctors
WHERE doctor_name LIKE 'Dr. s%';

-- Find diagnoses containing the word "Heart".

SELECT  *
FROM medical_records
WHERE diagnosis LIKE '%Heart%';

-- Find appointments whose status is either Completed or Scheduled.

SELECT *
FROM appointments
WHERE status BETWEEN "completed" AND "scheduled";

-- Find patients who live in Aba, Lagos, or Abuja.

SELECT*
FROM patients
WHERE city IN ('Aba', 'Lagos', 'Abuja');





