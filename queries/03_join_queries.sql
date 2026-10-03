USE hospital_management;


-- 1. Patient and their insurance details
SELECT
    p.patient_name,
    i.insurance_company,
    i.policy_number,
    i.coverage_amount
FROM patient AS p
INNER JOIN insurance AS i
    ON p.patient_id = i.patient_id;


-- 2. Patient and medical history
SELECT
    p.patient_name,
    mh.diagnosis,
    mh.allergies,
    mh.history_date
FROM patient AS p
INNER JOIN medical_history AS mh
    ON p.patient_id = mh.patient_id;


-- 3. Patient and doctor for each encounter
SELECT
    p.patient_name,
    d.doctor_name,
    d.specialization,
    e.encounter_date,
    e.encounter_type
FROM encounter AS e
INNER JOIN patient AS p
    ON e.patient_id = p.patient_id
INNER JOIN doctor AS d
    ON e.doctor_id = d.doctor_id;


-- 4. Prescription with medication details
SELECT
    p.prescription_id,
    m.medication_name,
    pm.dosage,
    pm.duration,
    pm.instructions
FROM prescription AS p
INNER JOIN prescription_medication AS pm
    ON p.prescription_id = pm.prescription_id
INNER JOIN medication AS m
    ON pm.medication_id = m.medication_id;


-- 5. Patient prescription details
SELECT
    pt.patient_name,
    p.prescription_id,
    p.prescription_date,
    m.medication_name,
    pm.dosage,
    pm.duration
FROM patient AS pt
INNER JOIN encounter AS e
    ON pt.patient_id = e.patient_id
INNER JOIN prescription AS p
    ON e.encounter_id = p.encounter_id
INNER JOIN prescription_medication AS pm
    ON p.prescription_id = pm.prescription_id
INNER JOIN medication AS m
    ON pm.medication_id = m.medication_id;


-- 6. Test reports with test names
SELECT
    tr.test_report_id,
    t.test_name,
    t.test_type,
    tr.report_date,
    tr.result
FROM test_report AS tr
INNER JOIN test AS t
    ON tr.test_id = t.test_id;


-- 7. Patient test reports
SELECT
    p.patient_name,
    t.test_name,
    tr.report_date,
    tr.result
FROM patient AS p
INNER JOIN encounter AS e
    ON p.patient_id = e.patient_id
INNER JOIN test_report AS tr
    ON e.encounter_id = tr.encounter_id
INNER JOIN test AS t
    ON tr.test_id = t.test_id;


-- 8. Procedure records with procedure details
SELECT
    pr.procedure_record_id,
    mp.procedure_name,
    mp.procedure_type,
    mp.cost,
    pr.procedure_date,
    pr.result
FROM procedure_record AS pr
INNER JOIN medical_procedure AS mp
    ON pr.procedure_id = mp.procedure_id;


-- 9. Patient procedures
SELECT
    p.patient_name,
    mp.procedure_name,
    mp.procedure_type,
    mp.cost,
    pr.procedure_date
FROM patient AS p
INNER JOIN encounter AS e
    ON p.patient_id = e.patient_id
INNER JOIN procedure_record AS pr
    ON e.encounter_id = pr.encounter_id
INNER JOIN medical_procedure AS mp
    ON pr.procedure_id = mp.procedure_id;


-- 10. Complete encounter information
SELECT
    e.encounter_id,
    p.patient_name,
    d.doctor_name,
    d.specialization,
    e.encounter_date,
    e.encounter_type
FROM encounter AS e
INNER JOIN patient AS p
    ON e.patient_id = p.patient_id
INNER JOIN doctor AS d
    ON e.doctor_id = d.doctor_id;


-- 11. All patients including those without insurance
SELECT
    p.patient_name,
    i.insurance_company,
    i.policy_number
FROM patient AS p
LEFT JOIN insurance AS i
    ON p.patient_id = i.patient_id;


-- 12. Doctors who have handled encounters
SELECT DISTINCT
    d.doctor_name,
    d.specialization
FROM doctor AS d
INNER JOIN encounter AS e
    ON d.doctor_id = e.doctor_id;


-- 13. Number of encounters handled by each doctor
SELECT
    d.doctor_name,
    COUNT(e.encounter_id) AS total_encounters
FROM doctor AS d
LEFT JOIN encounter AS e
    ON d.doctor_id = e.doctor_id
GROUP BY d.doctor_id, d.doctor_name;


-- 14. Number of prescriptions for each patient
SELECT
    p.patient_name,
    COUNT(pr.prescription_id) AS total_prescriptions
FROM patient AS p
LEFT JOIN encounter AS e
    ON p.patient_id = e.patient_id
LEFT JOIN prescription AS pr
    ON e.encounter_id = pr.encounter_id
GROUP BY p.patient_id, p.patient_name;


-- 15. Number of tests for each patient
SELECT
    p.patient_name,
    COUNT(tr.test_report_id) AS total_tests
FROM patient AS p
LEFT JOIN encounter AS e
    ON p.patient_id = e.patient_id
LEFT JOIN test_report AS tr
    ON e.encounter_id = tr.encounter_id
GROUP BY p.patient_id, p.patient_name;