USE db_labs;

DROP PROCEDURE IF EXISTS create_temp_table;
DELIMITER //
CREATE PROCEDURE create_temp_table()
BEGIN
    DROP TABLE IF EXISTS temp_table;
    CREATE TEMPORARY TABLE temp_table as
        SELECT *
        FROM ill
        LIMIT 10;
END // DELIMITER ;
CALL create_temp_table();

DROP PROCEDURE IF EXISTS if_condition;
DELIMITER //
CREATE PROCEDURE if_condition()
BEGIN
    SELECT first_name,
           surname,
           salary,
           IF(salary >= 1000, 'Big salary', 'Small salary') as salary_level
    FROM receptionist;
END // DELIMITER ;
CALL if_condition();

drop procedure if exists while_loop;
delimiter //
create procedure while_loop()
begin
    declare var int default 0;
    while var < 5 do
        select var;
        set var = var + 1;
    end while;
end //
delimiter ;
call while_loop();

drop procedure if exists no_params;
delimiter //
create procedure no_params()
begin
    select *
    from ill
    where LENGTH(first_name) <= 5;
end //
delimiter ;
call no_params();

drop procedure if exists with_params;
delimiter //
create procedure with_params(in sex char)
begin
    select *
    from ill as i
    where i.sex = sex;
end //
delimiter ;
call with_params('f');

drop procedure if exists in_out_procedure;
delimiter //
create procedure in_out_procedure(in value int, out res int)
begin
    select sum(salary)
    from receptionist
    where salary < value
    into res;
    select res;
end //
delimiter ;
call in_out_procedure(1000, @res);

drop procedure if exists data_update;
delimiter //
create procedure data_update()
begin
    update receptionist
    set salary = salary + 500
    where birth_date < date('1983-01-01');
end //
delimiter ;
call data_update();

drop procedure if exists data_select;
delimiter //
create procedure data_select()
begin
    SELECT ill_id, i.first_name, i.last_name, sum(drug_amount) as total_drugs
    FROM recipe
    JOIN ill i on recipe.ill_id = i.id
    GROUP BY ill_id
    HAVING total_drugs > 4;
end //
delimiter ;
call data_select();

drop function if exists scalar_function;
delimiter //
create function scalar_function(ill_id int) returns decimal
    deterministic
begin
    declare total decimal;
    select sum(drug_amount)
    from recipe as r
    where r.ill_id = ill_id
    into total;
    return total;
end //
delimiter ;
select scalar_function(1) as total_drugs_for_one_client;

drop procedure if exists dynamic_columns;
delimiter //
create procedure dynamic_columns(in flag bool)
begin
    if flag = true then
        select concat(first_name, ' ', last_name) as full_name, phone_number
        from ill;
    else
        select *
        from ill;
    end if;
end //
delimiter ;
call dynamic_columns(true);

select count(*) from ill;

DROP PROCEDURE IF EXISTS cur;
DELIMITER //
CREATE PROCEDURE cur()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE full_name VARCHAR(40);
    DECLARE cur CURSOR FOR SELECT concat(first_name, ' ', last_name) FROM ill;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    repeat
        fetch cur into full_name;
        if not done then
            select full_name;
        end if;
    until done end repeat;
END //
DELIMITER ;
CALL cur();

drop trigger if exists trigger_on_update;
delimiter //
create trigger trigger_on_update before update on receptionist for each row
begin
    if new.salary > 2500 then
        set new.salary = 2500;
    end if;
end //
delimiter ;
update receptionist
set salary = 5000
where id = 1;

drop trigger if exists trigger_on_insert;
delimiter //
create trigger trigger_on_insert before insert on receptionist for each row
begin
    if new.salary < 1000 then
        set NEW.salary = 1000;
    end if;
end //
delimiter ;
INSERT INTO receptionist (drugstore_id, first_name, surname, phone_number, birth_date, salary)
value (1,'Pavel','Borov','302-203-1522','1989-09-28',700);
