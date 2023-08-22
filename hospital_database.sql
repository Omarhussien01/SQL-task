-- Create Patients table
CREATE TABLE Patients (
  patient_id INT PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  gender VARCHAR(10)
);

-- Create Doctors table
CREATE TABLE Doctors (
  doctor_id INT PRIMARY KEY,
  name VARCHAR(255),
  specialization VARCHAR(255)
);

-- Create Appointments table
CREATE TABLE Appointments (
  appointment_id INT PRIMARY KEY,
  patient_id INT,
  doctor_id INT,
  date DATE,
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
