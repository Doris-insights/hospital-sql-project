# Hospital SQL Database Project

## 📌 Project Overview

This project is a **Hospital Management Database** created using SQL.

The purpose of this project is to practice database design and SQL queries by creating a database that stores and manages information about a hospital, including patients, doctors, departments, appointments, admissions, and medical records.

## 🏥 Database Tables

The database contains the following tables:

### 1. Departments

Stores information about the different departments in the hospital.

Examples:

* Department ID
* Department name

### 2. Doctors

Stores information about doctors working in the hospital.

Examples:

* Doctor ID
* Doctor name
* Department

### 3. Patients

Stores information about hospital patients.

Examples:

* Patient ID
* Patient name
* Date of birth
* Other patient information

### 4. Appointments

Stores information about appointments between patients and doctors.

Examples:

* Appointment ID
* Patient
* Doctor
* Appointment date

### 5. Admissions

Stores information about patients who have been admitted to the hospital.

### 6. Medical Records

Stores medical information and records related to patients.

## 🔗 Database Relationships

The tables are connected using **Primary Keys** and **Foreign Keys**.

For example:

```text
Departments
     ↓
   Doctors
     ↓
Patients → Appointments
     ↓
Admissions
     ↓
Medical Records
```

These relationships help keep the data organized and connected.

## 🛠️ SQL Concepts Practiced

This project helped me practice:

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `WHERE`
* `LIKE`
* `ORDER BY`
* `LIMIT`
* `COUNT()`
* Primary Keys
* Foreign Keys
* Table relationships
* Database design

## 📊 Sample Query

One example from the project:

```sql
SELECT doctor_name
FROM doctors
WHERE doctor_name LIKE 'Dr.S%';
```

This query finds doctors whose names start with **"Dr.S"**.

## 🎯 Project Goals

The main goals of this project are to:

* Practice SQL database creation
* Understand table relationships
* Practice inserting and retrieving data
* Learn how Primary Keys and Foreign Keys work
* Practice writing SQL queries
* Build a portfolio project for SQL and data-related skills

## 💻 Tools Used

* SQL
* MySQL
* Git
* GitHub

## 👩‍💻 Author

**Doris-insights**

This project was created as part of my journey learning **SQL, Data Engineering, and AI**.
