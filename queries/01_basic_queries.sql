USE hospital_management;

-- 1. Display all patients
SELECT *
FROM patient;


-- 2. Display patient names and cities
SELECT patient_name, patient_city
FROM patient;


-- 3. Find patients from Pune
SELECT *
FROM patient
WHERE patient_city = 'Pune';


-- 4. Find patients weighing more than 70 kg
SELECT patient_name, weight_kg
FROM patient
WHERE weight_kg > 70;


-- 5. Display female patients
SELECT patient_name, gender
FROM patient
WHERE gender = 'Female';


-- 6. Display doctors and their specializations
SELECT doctor_name, specialization
FROM doctor;


-- 7. Find doctors with more than 10 years of experience
SELECT doctor_name, experience_years
FROM doctor
WHERE experience_years > 10;


-- 8. Display patients ordered by weight
SELECT patient_name, weight_kg
FROM patient
ORDER BY weight_kg DESC;


-- 9. Display the 5 heaviest patients
SELECT patient_name, weight_kg
FROM patient
ORDER BY weight_kg DESC
LIMIT 5;


-- 10. Find patients whose name starts with 'A'
SELECT *
FROM patient
WHERE patient_name LIKE 'A%';


-- 11. Display unique patient cities
SELECT DISTINCT patient_city
FROM patient;


-- 12. Find emergency encounters
SELECT *
FROM encounter
WHERE encounter_type = 'Emergency';


-- 13. Find encounters between two dates
SELECT *
FROM encounter
WHERE encounter_date BETWEEN '2026-01-01' AND '2026-03-31';


-- 14. Display all available medications
SELECT medication_name, medication_type, price
FROM medication;


-- 15. Display medications costing more than 50
SELECT medication_name, price
FROM medication
WHERE price > 50;