USE hospital_management;


-- 1. Patients who are heavier than the average patient weight
SELECT
    patient_name,
    weight_kg
FROM patient
WHERE weight_kg > (
    SELECT AVG(weight_kg)
    FROM patient
);


-- 2. Doctors with experience above average
SELECT
    doctor_name,
    specialization,
    experience_years
FROM doctor
WHERE experience_years > (
    SELECT AVG(experience_years)
    FROM doctor
);


-- 3. Most expensive medication
SELECT
    medication_name,
    price
FROM medication
WHERE price = (
    SELECT MAX(price)
    FROM medication
);


-- 4. Patients who have insurance
SELECT
    patient_name
FROM patient
WHERE patient_id IN (
    SELECT patient_id
    FROM insurance
);


-- 5. Patients who do not have insurance
SELECT
    patient_name
FROM patient
WHERE patient_id NOT IN (
    SELECT patient_id
    FROM insurance
);


-- 6. Doctors who have handled at least one encounter
SELECT
    doctor_name,
    specialization
FROM doctor AS d
WHERE EXISTS (
    SELECT 1
    FROM encounter AS e
    WHERE e.doctor_id = d.doctor_id
);


-- 7. Categorize doctors by experience
SELECT
    doctor_name,
    experience_years,
    CASE
        WHEN experience_years >= 15 THEN 'Highly Experienced'
        WHEN experience_years >= 10 THEN 'Experienced'
        ELSE 'Less Experienced'
    END AS experience_category
FROM doctor;


-- 8. Categorize medications by price
SELECT
    medication_name,
    price,
    CASE
        WHEN price >= 80 THEN 'High Price'
        WHEN price >= 40 THEN 'Medium Price'
        ELSE 'Low Price'
    END AS price_category
FROM medication;


-- 9. Find patients who had emergency encounters
SELECT DISTINCT
    p.patient_name
FROM patient AS p
INNER JOIN encounter AS e
    ON p.patient_id = e.patient_id
WHERE e.encounter_type = 'Emergency';


-- 10. Find doctors with more than 1 encounter
SELECT
    d.doctor_name,
    COUNT(e.encounter_id) AS total_encounters
FROM doctor AS d
INNER JOIN encounter AS e
    ON d.doctor_id = e.doctor_id
GROUP BY d.doctor_id, d.doctor_name
HAVING COUNT(e.encounter_id) > 1;


-- 11. Find the second highest medication price
SELECT MAX(price) AS second_highest_price
FROM medication
WHERE price < (
    SELECT MAX(price)
    FROM medication
);


-- 12. Find patients who have more than one medical history record
SELECT
    p.patient_name,
    COUNT(mh.medical_history_id) AS history_count
FROM patient AS p
INNER JOIN medical_history AS mh
    ON p.patient_id = mh.patient_id
GROUP BY p.patient_id, p.patient_name
HAVING COUNT(mh.medical_history_id) > 1;


-- 13. Find the total cost of procedures performed
SELECT
    SUM(mp.cost) AS total_procedure_cost
FROM procedure_record AS pr
INNER JOIN medical_procedure AS mp
    ON pr.procedure_id = mp.procedure_id;


-- 14. Find the most frequently prescribed medication
SELECT
    m.medication_name,
    COUNT(pm.medication_id) AS prescription_count
FROM medication AS m
INNER JOIN prescription_medication AS pm
    ON m.medication_id = pm.medication_id
GROUP BY m.medication_id, m.medication_name
ORDER BY prescription_count DESC
LIMIT 1;


-- 15. Find patients who have both prescriptions and test reports
SELECT DISTINCT
    p.patient_name
FROM patient AS p
INNER JOIN encounter AS e
    ON p.patient_id = e.patient_id
INNER JOIN prescription AS pr
    ON e.encounter_id = pr.encounter_id
INNER JOIN test_report AS tr
    ON e.encounter_id = tr.encounter_id;