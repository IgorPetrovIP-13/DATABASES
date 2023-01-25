use coursework;

drop temporary table if exists index_test;
create temporary table index_test AS
select customer.id, customer.first_name, customer. last_name, c.card_number, c.expiration_date
from customer
cross join card c;

SELECT COUNT(*)
FROM index_test;

explain analyze
select distinct id, first_name, last_name, card_number
FROM index_test
where card_number = '5108758923625902';

create index index_view_test
ON index_test(card_number);

explain analyze
select distinct id, first_name, last_name, card_number
from index_test
where card_number = '5108758923625902';

SELECT *
FROM index_test
