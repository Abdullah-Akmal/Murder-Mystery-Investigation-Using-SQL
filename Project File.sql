
-- Step 1: Filter the Crime Scene Report
SELECT *
FROM crime_scene_report
WHERE date = '3092023' AND crime_type = 'murder' AND LOWER(city) = 'atom-city';

-- Step 2: Find People Present at the Event
SELECT d.person_id, d.name, a.event_name, a.date
FROM atomcamp_annualdinner a
JOIN accused_person d ON a.person_id = d.person_id
WHERE a.date = '3092023';

-- Step 3: Merge Additional Details for Attendees
SELECT 
    d.person_id, d.name, d.address_street_name, 
    l.plate_number, l.car_make, l.car_model, 
    i.transcript, ai.annual_income
FROM atomcamp_annualdinner a
JOIN accused_person d ON a.person_id = d.person_id
JOIN drivers_license l ON d.license_id = l.license_id
JOIN interviews i ON d.person_id = i.person_id
JOIN annual_income ai ON d.ssn = ai.ssn
WHERE a.date = '3092023';

-- Step 4: Investigate Additional Activities
SELECT *
FROM atom_fit
WHERE person_id IN (
    SELECT person_id
    FROM atomcamp_annualdinner
    WHERE date = '3092023'
);
-- Step 5: check if there was there at this date 
SELECT *
FROM atomcamp_annualdinner
WHERE person_id IN (
    SELECT person_id
    FROM atomcamp_annualdinner
    WHERE date = '3092023'
)
AND date != '3092023';


