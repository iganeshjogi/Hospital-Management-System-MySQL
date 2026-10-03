USE hospital_management;


-- =====================================================
-- 1. PATIENT
-- =====================================================

CREATE TABLE patient (
    patient_id INT NOT NULL AUTO_INCREMENT,
    patient_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    patient_phone VARCHAR(15),
    patient_city VARCHAR(50),
    weight_kg DECIMAL(5,2),
    PRIMARY KEY (patient_id)
);


-- =====================================================
-- 2. DOCTOR
-- =====================================================

CREATE TABLE doctor (
    doctor_id INT NOT NULL AUTO_INCREMENT,
    doctor_name VARCHAR(100) NOT NULL,
    doctor_phone VARCHAR(15),
    gender VARCHAR(10),
    specialization VARCHAR(100),
    degree VARCHAR(50),
    experience_years INT,
    PRIMARY KEY (doctor_id)
);


-- =====================================================
-- 3. INSURANCE
-- =====================================================

CREATE TABLE insurance (
    insurance_id INT NOT NULL AUTO_INCREMENT,
    patient_id INT NOT NULL,
    insurance_company VARCHAR(100),
    policy_number VARCHAR(50),
    coverage_amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (insurance_id),

    FOREIGN KEY (patient_id)
        REFERENCES patient(patient_id)
);


-- =====================================================
-- 4. MEDICAL HISTORY
-- =====================================================

CREATE TABLE medical_history (
    medical_history_id INT NOT NULL AUTO_INCREMENT,
    patient_id INT NOT NULL,
    diagnosis VARCHAR(200),
    allergies VARCHAR(200),
    previous_treatment VARCHAR(300),
    history_date DATE,
    PRIMARY KEY (medical_history_id),

    FOREIGN KEY (patient_id)
        REFERENCES patient(patient_id)
);


-- =====================================================
-- 5. ENCOUNTER
-- =====================================================

CREATE TABLE encounter (
    encounter_id INT NOT NULL AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    encounter_date DATE,
    encounter_type VARCHAR(30),
    admission_date DATE,
    discharge_date DATE,
    PRIMARY KEY (encounter_id),

    FOREIGN KEY (patient_id)
        REFERENCES patient(patient_id),

    FOREIGN KEY (doctor_id)
        REFERENCES doctor(doctor_id)
);


-- =====================================================
-- 6. PRESCRIPTION
-- =====================================================

CREATE TABLE prescription (
    prescription_id INT NOT NULL AUTO_INCREMENT,
    encounter_id INT NOT NULL,
    prescription_date DATE,
    PRIMARY KEY (prescription_id),

    FOREIGN KEY (encounter_id)
        REFERENCES encounter(encounter_id)
);


-- =====================================================
-- 7. MEDICATION
-- =====================================================

CREATE TABLE medication (
    medication_id INT NOT NULL AUTO_INCREMENT,
    medication_name VARCHAR(100) NOT NULL,
    description VARCHAR(200),
    medication_type VARCHAR(50),
    price DECIMAL(10,2),
    PRIMARY KEY (medication_id)
);


-- =====================================================
-- 8. PRESCRIPTION MEDICATION
-- =====================================================

CREATE TABLE prescription_medication (
    prescription_med_id INT NOT NULL AUTO_INCREMENT,
    prescription_id INT NOT NULL,
    medication_id INT NOT NULL,
    dosage VARCHAR(50),
    duration VARCHAR(50),
    instructions VARCHAR(200),
    PRIMARY KEY (prescription_med_id),

    FOREIGN KEY (prescription_id)
        REFERENCES prescription(prescription_id),

    FOREIGN KEY (med