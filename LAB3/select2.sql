USE db_labs;

SELECT first_name, surname, salary - (SELECT AVG(salary) FROM receptionist) as salary_deviation
FROM receptionist;

SELECT application_info.first_name, application_info.last_name, application_info.application_date, application_info.drug_name
FROM (SELECT ill.first_name, ill.last_name, recipe.application_date, recipe.drug_name
        FROM ill, recipe
    WHERE ill.id = recipe.ill_id) as application_info;

SELECT id, drug_name, drug_amount
FROM recipe
WHERE EXISTS(
    SELECT recipe_id
    FROM given_orders
    WHERE recipe.id = given_orders.recipe_id
    );

SELECT id,drug_name,drug_amount
FROM recipe
WHERE id in (SELECT recipe_id from given_orders);

SELECT receptionist.id as receptionist_id, ill.first_name as ill_name, ill.last_name as ill_surname
FROM receptionist, ill
limit 10;

SELECT drug_name, drug_amount, delivery_date
FROM recipe, given_orders
WHERE recipe.id = given_orders.recipe_id
ORDER BY delivery_date;

SELECT drug_name, drug_amount, delivery_date
FROM recipe, given_orders
WHERE recipe.id = given_orders.recipe_id and drug_amount > 3;

SELECT drug_name, drug_form, components
FROM handmade_drugs
JOIN technology_directory on technology_directory.drug_id = handmade_drugs.id;

SELECT drug_name, drug_amount, delivery_date, concat(first_name, ' ', surname) as receptionst_full_name
FROM recipe
LEFT JOIN given_orders on recipe.id = given_orders.recipe_id
LEFT JOIN receptionist on given_orders.receptionist_id = receptionist.id
ORDER BY delivery_date DESC;

SELECT drug_name, drug_amount, delivery_date, concat(first_name, ' ', surname) as receptionst_full_name
FROM recipe
RIGHT JOIN given_orders on recipe.id = given_orders.recipe_id
RIGHT JOIN receptionist on given_orders.receptionist_id = receptionist.id
ORDER BY delivery_date;

SELECT first_name, last_name, phone_number
FROM ill
UNION SELECT first_name, surname, phone_number
FROM receptionist