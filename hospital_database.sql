CREATE DATABASE hospital_practice;

USE hospital_practice;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO departments
(department_id, department_name, location)
VALUES
(1, 'Cardiology', 'Block A'),
(2, 'Pediatrics', 'Block B'),
(3, 'General Medicine', 'Block C'),
(4, 'Orthopedics', 'Block D'),
(5, 'Neurology', 'Block E'),
(6, 'Emergency', 'Block F');

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    gender VARCHAR(10),
    specialization VARCHAR(100),
    department_id INT,
    phone VARCHAR(20),
    hire_date DATE,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO doctors
(doctor_id, doctor_name, gender, specialization, department_id, phone, hire_date, salary)
VALUES
(1, 'Dr. John Smith', 'Male', 'Cardiologist', 1, '08030010001', '2018-05-12', 850000),
(2, 'Dr. Sarah Johnson', 'Female', 'Pediatrician', 2, '08030010002', '2019-03-20', 780000),
(3, 'Dr. Michael Brown', 'Male', 'General Physician', 3, '08030010003', '2020-01-15', 650000),
(4, 'Dr. Emily Davis', 'Female', 'Orthopedic Surgeon', 4, '08030010004', '2017-08-10', 920000),
(5, 'Dr. Daniel Wilson', 'Male', 'Neurologist', 5, '08030010005', '2021-06-18', 880000),
(6, 'Dr. Linda Taylor', 'Female', 'Emergency Physician', 6, '08030010006', '2016-11-25', 950000),
(7, 'Dr. Robert Anderson', 'Male', 'Cardiologist', 1, '08030010007', '2022-02-14', 820000),
(8, 'Dr. Jennifer Thomas', 'Female', 'General Physician', 3, '08030010008', '2023-04-05', 600000);


CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    gender VARCHAR(10),
    date_of_birth DATE,
    phone VARCHAR(20),
    city VARCHAR(50),
    registration_date DATE
);

INSERT INTO patients
(patient_id, patient_name, gender, date_of_birth, phone, city, registration_date)
VALUES
(1, 'James Carter', 'Male', '1985-04-12', '08040010001', 'Lagos', '2024-01-10'),
(2, 'Mary Johnson', 'Female', '1992-07-25', '08040010002', 'Abuja', '2024-01-15'),
(3, 'David Williams', 'Male', '1978-11-03', '08040010003', 'Port Harcourt', '2024-02-02'),
(4, 'Grace Brown', 'Female', '2001-09-18', '08040010004', 'Aba', '2024-02-10'),
(5, 'Daniel Miller', 'Male', '1965-03-30', '08040010005', 'Enugu', '2024-02-18'),
(6, 'Sophia Wilson', 'Female', '2015-06-12', '08040010006', 'Lagos', '2024-03-01'),
(7, 'Michael Moore', 'Male', '1990-12-22', '08040010007', 'Owerri', '2024-03-12'),
(8, 'Esther Taylor', 'Female', '1972-05-09', '08040010008', 'Aba', '2024-03-20'),
(9, 'Joseph Anderson', 'Male', '2005-08-14', '08040010009', 'Uyo', '2024-04-05'),
(10, 'Linda Thomas', 'Female', '1988-10-27', '08040010010', 'Calabar', '2024-04-15'),
(11, 'Peter Jackson', 'Male', '1959-02-11', '08040010011', 'Lagos', '2024-05-02'),
(12, 'Anna White', 'Female', '1995-01-19', '08040010012', 'Abuja', '2024-05-15'),
(13, 'Samuel Harris', 'Male', '1982-06-07', '08040010013', 'Enugu', '2024-06-01'),
(14, 'Rebecca Martin', 'Female', '2000-03-16', '08040010014', 'Aba', '2024-06-10'),
(15, 'Charles Thompson', 'Male', '1970-09-29', '08040010015', 'Owerri', '2024-06-25');

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    reason VARCHAR(255),
    status VARCHAR(30),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason, status)
VALUES
(1, 1, 1, '2024-07-01', '09:00:00', 'Chest pain', 'Completed'),
(2, 2, 2, '2024-07-01', '10:00:00', 'Child vaccination', 'Completed'),
(3, 3, 3, '2024-07-02', '11:00:00', 'Fever', 'Completed'),
(4, 4, 4, '2024-07-03', '09:30:00', 'Knee pain', 'Completed'),
(5, 5, 1, '2024-07-04', '14:00:00', 'Heart checkup', 'Completed'),
(6, 6, 2, '2024-07-05', '10:30:00', 'Fever', 'Completed'),
(7, 7, 5, '2024-07-06', '12:00:00', 'Headache', 'Completed'),
(8, 8, 3, '2024-07-08', '09:00:00', 'Diabetes checkup', 'Completed'),
(9, 9, 6, '2024-07-09', '15:00:00', 'Accident injury', 'Completed'),
(10, 10, 4, '2024-07-10', '11:00:00', 'Back pain', 'Cancelled'),
(11, 11, 1, '2024-07-11', '13:00:00', 'High blood pressure', 'Completed'),
(12, 12, 3, '2024-07-12', '10:00:00', 'Stomach pain', 'Completed'),
(13, 13, 5, '2024-07-13', '14:30:00', 'Memory problems', 'Scheduled'),
(14, 14, 2, '2024-07-15', '09:30:00', 'Routine checkup', 'Scheduled'),
(15, 15, 4, '2024-07-16', '11:30:00', 'Joint pain', 'Scheduled'),
(16, 1, 7, '2024-07-20', '10:00:00', 'Follow-up heart check', 'Scheduled'),
(17, 3, 3, '2024-07-21', '09:00:00', 'Follow-up', 'Scheduled'),
(18, 8, 3, '2024-07-22', '11:00:00', 'Diabetes follow-up', 'Scheduled');

CREATE TABLE admissions (
    admission_id INT PRIMARY KEY,
    patient_id INT,
    department_id INT,
    admission_date DATE,
    discharge_date DATE,
    room_number VARCHAR(10),
    diagnosis VARCHAR(255),
    admission_status VARCHAR(30),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO admissions
(admission_id, patient_id, department_id, admission_date, discharge_date, room_number, diagnosis, admission_status)
VALUES
(1, 1, 1, '2024-06-01', '2024-06-05', 'A101', 'Hypertension', 'Discharged'),
(2, 3, 3, '2024-06-03', '2024-06-07', 'C201', 'Malaria', 'Discharged'),
(3, 5, 1, '2024-06-10', '2024-06-15', 'A102', 'Heart disease', 'Discharged'),
(4, 6, 2, '2024-06-12', '2024-06-14', 'B101', 'Pneumonia', 'Discharged'),
(5, 9, 6, '2024-06-18', '2024-06-22', 'F101', 'Fracture', 'Discharged'),
(6, 11, 1, '2024-06-20', NULL, 'A103', 'High blood pressure', 'Admitted'),
(7, 13, 5, '2024-06-25', NULL, 'E101', 'Migraine', 'Admitted'),
(8, 15, 4, '2024-06-28', '2024-07-03', 'D101', 'Arthritis', 'Discharged');


CREATE TABLE medical_records (
    record_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    record_date DATE,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    medication VARCHAR(255),
    cost DECIMAL(10,2),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

INSERT INTO medical_records
(record_id, patient_id, doctor_id, record_date, diagnosis, treatment, medication, cost)
VALUES
(1, 1, 1, '2024-07-01', 'Hypertension', 'Blood pressure monitoring', 'Amlodipine', 15000),
(2, 2, 2, '2024-07-01', 'Routine checkup', 'Vaccination', 'Vitamin supplement', 10000),
(3, 3, 3, '2024-07-02', 'Malaria', 'Medication', 'Artemether', 12000),
(4, 4, 4, '2024-07-03', 'Knee pain', 'Physiotherapy', 'Ibuprofen', 25000),
(5, 5, 1, '2024-07-04', 'Heart disease', 'Cardiac evaluation', 'Aspirin', 45000),
(6, 6, 2, '2024-07-05', 'Fever', 'Medication', 'Paracetamol', 8000),
(7, 7, 5, '2024-07-06', 'Migraine', 'Neurological examination', 'Sumatriptan', 30000),
(8, 8, 3, '2024-07-08', 'Diabetes', 'Blood sugar monitoring', 'Metformin', 18000),
(9, 9, 6, '2024-07-09', 'Fracture', 'Emergency treatment', 'Pain reliever', 60000),
(10, 11, 1, '2024-07-11', 'Hypertension', 'Blood pressure monitoring', 'Amlodipine', 15000),
(11, 12, 3, '2024-07-12', 'Stomach infection', 'Medication', 'Antibiotics', 22000),
(12, 13, 5, '2024-07-13', 'Migraine', 'Neurological examination', 'Sumatriptan', 30000),
(13, 14, 2, '2024-07-15', 'Routine checkup', 'General examination', 'None', 10000),
(14, 15, 4, '2024-07-16', 'Arthritis', 'Physiotherapy', 'Diclofenac', 28000);



