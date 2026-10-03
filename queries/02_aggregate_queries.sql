USE hospital_management;

-- 1. Count total patients
SELECT COUNT(*) AS total_patients
FROM patient;


-- 2. Count total doctors
SELECT COUNT(*) AS total_doctors
FROM doctor;


-- 3. Find average patient weight
SELECT AVG(weight_kg) AS average_weight
FROM patient;


-- 4. Find maximum patient weight
SELECT MAX(weight_kg) AS maximum_weight
FROM patient;


-- 5. Find minimum patient weight
SELECT MIN(weight_kg) AS minimum_weight
FROM patient;


-- 6. Count patients by gender
SELECT gender, COUNT(*) AS patient_count
FROM patient
GROUP BY gender;


-- 7. Count patients by city
SELECT patient_city, COUNT(*) AS patient_count
FROM patient
GROUP BY patient_city;


-- 8. Count doctors by specialization
SELECT specialization, COUNT(*) AS doctor_count
FROM doctor
GROUP BY specialization;


-- 9. Find average doctor experience
SELECT AVG(experience_years) AS average_experience
FROM doctor;


-- 10. Find total insurance coverage
SELECT SUM(coverage_amount) AS total_coverage
FROM insurance;


-- 11. Find average medication price
SELECT AVG(price) AS average_price
FROM medication;


-- 12. Find total cost of all medical procedures
SELECT SUM(cost) AS total_procedure_cost
FROM medical_procedure;


-- 13. Count encounters by type
SELECT encounter_type, COUNT(*) AS encounter_count
FROM encounter
GROUP BY encounter_type;


-- 14. Find encounter types having more than 2 records
SELECT encounter_type, COUNT(*) AS encounter_count
FROM encounter
GROUP BY encounter_type
HAVING COUNT(*) > 2;


-- 15. Find the most expensive medical procedure
SELECT procedure_name, cost
FROM medical_procedure
WHERE cost = (
    SELECT MAX(cost)
    FROM medical_procedure
);