USE db_labs;

SELECT *
FROM receptionist;

SELECT *
FROM prepared_drugs
WHERE price > 400;

SELECT *
FROM given_orders
WHERE delivery_date = '2022-05-02' or receptionist_id = 1;

SELECT *
FROM given_orders
WHERE delivery_date = '2022-05-02' and receptionist_id = 3;

SELECT *
FROM recipe
WHERE NOT application_date = '2022-12-26';

SELECT *
FROM prepared_drugs
WHERE NOT (price > 350 and (critical_minimum >= 2 and critical_minimum < 5));

SELECT id, drug_name
FROM prepared_drugs
WHERE price*critical_minimum >= 1000;

SELECT id, drug_name
FROM handmade_drugs
WHERE drug_form in ('mixture', 'salve');

SELECT *
FROM recipe
WHERE application_date between '2022-01-01' and '2022-05-01';

SELECT *
FROM ill
WHERE ill.last_name LIKE 'R%';

SELECT *
FROM prepared_drugs
WHERE critical_minimum is NULL;
