USE db_labs;

CREATE OR REPLACE VIEW handmade_drugs_detailed_info as
SELECT hd.drug_name, hd.price, hd.drug_form, td.components, d.pharmacy_name
FROM handmade_drugs hd
JOIN technology_directory td on hd.id = td.drug_id
JOIN drugstore d on d.id = hd.drugstore_id;

SELECT *
FROM handmade_drugs_detailed_info;

CREATE OR REPLACE VIEW ill_recipes as
SELECT r.diagnosis_code, drug_name, concat(first_name, ' ', last_name) as patient_name
FROM recipe r
JOIN ill i on i.id = r.ill_id
ORDER BY application_date;

SELECT *
FROM ill_recipes;

ALTER VIEW handmade_drugs_detailed_info as
SELECT hd.id, hd.drug_name, hd.price, hd.drug_form, td.components
FROM handmade_drugs hd
JOIN technology_directory td on hd.id = td.drug_id;

SELECT *
FROM handmade_drugs_detailed_info;

select * from information_schema.TABLES
where TABLE_TYPE = 'VIEW' and TABLE_SCHEMA = 'db_labs';