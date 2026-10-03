USE hospital_management;


-- =====================================================
-- 1. PATIENT
-- =====================================================

INSERT INTO patient
(patient_id, patient_name, date_of_birth, gender, patient_phone, patient_city, weight_kg)
VALUES
(1, 'Amit Sharma', '1995-04-12', 'Male', '9876543210', 'Pune', 72.50),
(2, 'Priya Patil', '1998-08-25', 'Female', '9876543211', 'Mumbai', 60.20),
(3, 'Rahul Jadhav', '1989-02-17', 'Male', '9876543212', 'Nashik', 78.40),
(4, 'Sneha Kulkarni', '2001-11-05', 'Female', '9876543213', 'Pune', 55.80),
(5, 'Vikas Deshmukh', '1978-06-20', 'Male', '9876543214', 'Latur', 82.30),
(6, 'Neha Joshi', '1993-09-14', 'Female', '9876543215', 'Nagpur', 64.70),
(7, 'Suresh Pawar', '1985-12-30', 'Male', '9876543216', 'Aurangabad', 75.60),
(8, 'Pooja More', '2000-03-18', 'Female', '9876543217', 'Kolhapur', 58.90),
(9, 'Rohan Shinde', '1997-07-22', 'Male', '9876543218', 'Pune', 70.10),
(10, 'Kavita Gaikwad', '1982-10-09', 'Female', '9876543219', 'Solapur', 68.50);


-- =====================================================
-- 2. DOCTOR
-- =====================================================

INSERT INTO doctor
(doctor_id, doctor_name, doctor_phone, gender, specialization, degree, experience_years)
VALUES
(1, 'Dr. Amit Kulkarni', '9822001001', 'Male', 'Cardiologist', 'MD Cardiology', 12),
(2, 'Dr. Sneha Patil', '9822001002', 'Female', 'Dermatologist', 'MD Dermatology', 8),
(3, 'Dr. Rahul Joshi', '9822001003', 'Male', 'Orthopedic', 'MS Orthopedics', 15),
(4, 'Dr. Priya Deshmukh', '9822001004', 'Female', 'Gynecologist', 'MD Gynecology', 10),
(5, 'Dr. Ramesh Pawar', '9822001005', 'Male', 'Neurologist', 'DM Neurology', 18),
(6, 'Dr. Neha Sharma', '9822001006', 'Female', 'Pediatrician', 'MD Pediatrics', 7),
(7, 'Dr. Suresh More', '9822001007', 'Male', 'General Physician', 'MBBS', 20),
(8, 'Dr. Pooja Jadhav', '9822001008', 'Female', 'ENT Specialist', 'MS ENT', 9),
(9, 'Dr. Vikram Shinde', '9822001009', 'Male', 'Surgeon', 'MS Surgery', 14),
(10, 'Dr. Kavita Gaikwad', '9822001010', 'Female', 'Ophthalmologist', 'MS Ophthalmology', 11);


-- =====================================================
-- 3. INSURANCE
-- =====================================================

INSERT INTO insurance
(insurance_id, patient_id, insurance_company, policy_number, coverage_amount, start_date, end_date)
VALUES
(1, 1, 'Star Health Insurance', 'SH10001', 500000.00, '2026-01-01', '2026-12-31'),
(2, 1, 'HDFC ERGO', 'HE20001', 300000.00, '2026-04-01', '2027-03-31'),
(3, 2, 'ICICI Lombard', 'IL30001', 400000.00, '2026-01-15', '2026-12-31'),
(4, 3, 'Bajaj Allianz', 'BA40001', 600000.00, '2026-02-01', '2027-01-31'),
(5, 4, 'Star Health Insurance', 'SH10002', 350000.00, '2026-03-01', '2027-02-28'),
(6, 5, 'Niva Bupa', 'NB50001', 700000.00, '2026-01-01', '2026-12-31'),
(7, 5, 'Aditya Birla Health', 'AB60001', 250000.00, '2026-06-01', '2027-05-31'),
(8, 6, 'HDFC ERGO', 'HE20002', 450000.00, '2026-02-15', '2027-02-14'),
(9, 7, 'ICICI Lombard', 'IL30002', 500000.00, '2026-04-01', '2027-03-31'),
(10, 8, 'Niva Bupa', 'NB50002', 300000.00, '2026-05-01', '2027-04-30'),
(11, 9, 'Star Health Insurance', 'SH10003', 550000.00, '2026-01-01', '2026-12-31'),
(12, 10, 'Bajaj Allianz', 'BA40002', 400000.00, '2026-07-01', '2027-06-30');


-- =====================================================
-- 4. MEDICAL HISTORY
-- =====================================================

INSERT INTO medical_history
(medical_history_id, patient_id, diagnosis, allergies, previous_treatment, history_date)
VALUES
(1, 1, 'Hypertension', 'None', 'Blood pressure medication', '2025-05-10'),
(2, 1, 'High Cholesterol', 'Penicillin', 'Diet and cholesterol medication', '2025-11-15'),
(3, 2, 'Migraine', 'Dust', 'Pain management therapy', '2025-03-20'),
(4, 3, 'Asthma', 'Pollen', 'Inhaler treatment', '2024-08-12'),
(5, 4, 'Skin Allergy', 'Dust', 'Antihistamine treatment', '2025-01-18'),
(6, 5, 'Diabetes', 'None', 'Metformin treatment', '2024-06-25'),
(7, 5, 'Hypertension', 'Sulfa drugs', 'Blood pressure medication', '2025-09-10'),
(8, 6, 'Thyroid Disorder', 'None', 'Thyroid medication', '2025-04-05'),
(9, 7, 'Back Pain', 'None', 'Physiotherapy', '2025-07-22'),
(10, 8, 'Anemia', 'Iron supplements', 'Iron therapy', '2025-02-14'),
(11, 9, 'Knee Pain', 'None', 'Physiotherapy', '2025-10-08'),
(12, 10, 'Acidity', 'None', 'Acid reduction medication', '2025-12-01');


-- =====================================================
-- 5. ENCOUNTER
-- =====================================================

INSERT INTO encounter
(encounter_id, patient_id, doctor_id, encounter_date, encounter_type, admission_date, discharge_date)
VALUES
(1, 1, 1, '2026-01-10', 'Appointment', NULL, NULL),
(2, 2, 2, '2026-01-15', 'Appointment', NULL, NULL),
(3, 3, 7, '2026-02-05', 'Emergency', '2026-02-05', '2026-02-07'),
(4, 4, 2, '2026-02-18', 'Follow-up', NULL, NULL),
(5, 5, 1, '2026-03-02', 'Appointment', NULL, NULL),
(6, 6, 5, '2026-03-15', 'Appointment', NULL, NULL),
(7, 7, 3, '2026-04-10', 'Emergency', '2026-04-10', '2026-04-12'),
(8, 8, 6, '2026-04-20', 'Appointment', NULL, NULL),
(9, 9, 3, '2026-05-05', 'Follow-up', NULL, NULL),
(10, 10, 7, '2026-05-18', 'Appointment', NULL, NULL),
(11, 1, 7, '2026-06-10', 'Follow-up', NULL, NULL),
(12, 5, 1, '2026-06-20', 'Follow-up', NULL, NULL);


-- =====================================================
-- 6. PRESCRIPTION
-- =====================================================

INSERT INTO prescription
(prescription_id, encounter_id, prescription_date)
VALUES
(1, 1, '2026-01-10'),
(2, 2, '2026-01-15'),
(3, 3, '2026-02-05'),
(4, 4, '2026-02-18'),
(5, 5, '2026-03-02'),
(6, 6, '2026-03-15'),
(7, 7, '2026-04-10'),
(8, 8, '2026-04-20'),
(9, 9, '2026-05-05'),
(10, 10, '2026-05-18'),
(11, 11, '2026-06-10'),
(12, 12, '2026-06-20');


-- =====================================================
-- 7. MEDICATION
-- =====================================================

INSERT INTO medication
(medication_id, medication_name, description, medication_type, price)
VALUES
(1, 'Paracetamol', 'Used for fever and mild pain', 'Tablet', 25.00),
(2, 'Amoxicillin', 'Antibiotic used for bacterial infections', 'Capsule', 85.00),
(3, 'Cetirizine', 'Used for allergy symptoms', 'Tablet', 30.00),
(4, 'Ibuprofen', 'Used for pain and inflammation', 'Tablet', 45.00),
(5, 'Azithromycin', 'Antibiotic for bacterial infections', 'Tablet', 120.00),
(6, 'Omeprazole', 'Used to reduce stomach acid', 'Capsule', 60.00),
(7, 'Metformin', 'Used to control blood sugar', 'Tablet', 40.00),
(8, 'Amlodipine', 'Used to control high blood pressure', 'Tablet', 35.00),
(9, 'Pantoprazole', 'Used for acidity and acid reflux', 'Tablet', 55.00),
(10, 'Montelukast', 'Used for allergy and asthma symptoms', 'Tablet', 90.00);


-- =====================================================
-- 8. PRESCRIPTION MEDICATION
-- =====================================================

INSERT INTO prescription_medication
(prescription_med_id, prescription_id, medication_id, dosage, duration, instructions)
VALUES
(1, 1, 1, '500 mg', '5 days', 'Take after meals'),
(2, 1, 8, '5 mg', '30 days', 'Take once daily'),
(3, 2, 3, '10 mg', '7 days', 'Take at night'),
(4, 3, 2, '500 mg', '7 days', 'Take after meals'),
(5, 3, 1, '500 mg', '5 days', 'Take when required'),
(6, 4, 3, '10 mg', '10 days', 'Take once daily'),
(7, 5, 7, '500 mg', '30 days', 'Take after breakfast'),
(8, 5, 8, '5 mg', '30 days', 'Take once daily'),
(9, 6, 5, '500 mg', '5 days', 'Take after meals'),
(10, 6, 6, '20 mg', '14 days', 'Take before breakfast'),
(11, 7, 4, '400 mg', '5 days', 'Take after meals'),
(12, 7, 1, '500 mg', '3 days', 'Take when required'),
(13, 8, 10, '10 mg', '10 days', 'Take at night'),
(14, 9, 4, '400 mg', '5 days', 'Take after meals'),
(15, 10, 1, '500 mg', '5 days', 'Take after meals'),
(16, 10, 9, '40 mg', '14 days', 'Take before breakfast'),
(17, 11, 3, '10 mg', '7 days', 'Take at night'),
(18, 11, 10, '10 mg', '10 days', 'Take once daily'),
(19, 12, 7, '500 mg', '30 days', 'Take after breakfast');


-- =====================================================
-- 9. MEDICAL PROCEDURE
-- =====================================================

INSERT INTO medical_procedure
(procedure_id, procedure_name, procedure_type, cost)
VALUES
(1, 'Appendectomy', 'Major Surgery', 75000.00),
(2, 'Cataract Surgery', 'Major Surgery', 45000.00),
(3, 'Fracture Treatment', 'Treatment', 30000.00),
(4, 'Minor Wound Surgery', 'Minor Surgery', 15000.00),
(5, 'Gallbladder Surgery', 'Major Surgery', 85000.00),
(6, 'Knee Replacement', 'Major Surgery', 120000.00),
(7, 'Dental Extraction', 'Minor Procedure', 5000.00),
(8, 'Hernia Repair', 'Major Surgery', 65000.00),
(9, 'Endoscopy', 'Diagnostic Procedure', 8000.00),
(10, 'Physiotherapy Session', 'Therapy', 2000.00);


-- =====================================================
-- 10. PROCEDURE RECORD
-- =====================================================

INSERT INTO procedure_record
(procedure_record_id, encounter_id, procedure_id, procedure_date, result)
VALUES
(1, 3, 1, '2026-02-06', 'Appendix successfully removed'),
(2, 5, 4, '2026-03-03', 'Wound treated successfully'),
(3, 7, 3, '2026-04-11', 'Fracture treatment completed'),
(4, 7, 10, '2026-04-12', 'Physiotherapy recommended'),
(5, 8, 7, '2026-04-21', 'Dental extraction completed'),
(6, 9, 10, '2026-05-06', 'Physiotherapy session completed'),
(7, 10, 9, '2026-05-19', 'Endoscopy completed successfully'),
(8, 11, 10, '2026-06-11', 'Physiotherapy session completed'),
(9, 12, 4, '2026-06-21', 'Minor wound treated'),
(10, 5, 8, '2026-03-04', 'Hernia repair completed'),
(11, 6, 6, '2026-03-17', 'Knee replacement procedure completed'),
(12, 3, 5, '2026-02-07', 'Gallbladder surgery completed');


-- =====================================================
-- 11. TEST
-- =====================================================

INSERT INTO test
(test_id, test_name, test_type)
VALUES
(1, 'Complete Blood Count', 'Blood Test'),
(2, 'Blood Sugar', 'Blood Test'),
(3, 'Lipid Profile', 'Blood Test'),
(4, 'Urine Test', 'Urine Test'),
(5, 'Chest X-Ray', 'Imaging'),
(6, 'MRI Brain', 'Imaging'),
(7, 'CT Scan', 'Imaging'),
(8, 'Liver Function Test', 'Blood Test'),
(9, 'Kidney Function Test', 'Blood Test'),
(10, 'Thyroid Test', 'Blood Test');


-- =====================================================
-- 12. TEST REPORT
-- =====================================================

INSERT INTO test_report
(test_report_id, encounter_id, test_id, report_date, result)
VALUES
(1, 1, 1, '2026-01-11', 'Hemoglobin normal, WBC normal'),
(2, 2, 2, '2026-01-16', 'Blood sugar 108 mg/dL'),
(3, 3, 5, '2026-02-06', 'Chest X-Ray normal'),
(4, 3, 1, '2026-02-06', 'Hemoglobin slightly low'),
(5, 4, 10, '2026-02-19', 'Thyroid levels normal'),
(6, 5, 3, '2026-03-03', 'Cholesterol slightly high'),
(7, 6, 6, '2026-03-16', 'No abnormality detected'),
(8, 7, 7, '2026-04-11', 'No major abnormality detected'),
(9, 8, 4, '2026-04-21', 'Urine test normal'),
(10, 9, 9, '2026-05-06', 'Kidney function normal'),
(11, 10, 8, '2026-05-19', 'Liver function normal'),
(12, 11, 2, '2026-06-11', 'Blood sugar 115 mg/dL'),
(13, 12, 3, '2026-06-21', 'Cholesterol within acceptable range');