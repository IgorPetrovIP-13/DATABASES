USE db_labs;

SELECT count(drug_amount) as big_applications_count
FROM drug_application
WHERE drug_amount > 10;

SELECT sum(salary) as total_salary
FROM receptionist;

SELECT upper(first_name), lower(last_name)
FROM ill;

SELECT drug_name, drug_amount, datediff(delivery_date, curdate()) as date_diff
FROM recipe, given_orders
WHERE recipe.id = given_orders.recipe_id;

SELECT ill_id, sum(drug_amount) as total_drugs
FROM recipe
GROUP BY ill_id;

SELECT ill_id, sum(drug_amount) as total_drugs
FROM recipe
GROUP BY ill_id
HAVING total_drugs > 5;

SELECT avg(salary) as avarage_salary
from receptionist
having avg(salary) > 900;

SELECT row_number() OVER (ORDER BY application_date DESC ) as position, ill.first_name, ill.last_name, application_date
FROM recipe
JOIN ill on recipe.ill_id = ill.id;

SELECT ill_id, drug_name, drug_amount
FROM recipe
ORDER BY ill_id, drug_amount DESC;