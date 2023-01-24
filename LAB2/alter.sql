USE db_labs;

DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id INT AUTO_INCREMENT,
    name nvarchar(30),
    PRIMARY KEY(id)
);

insert into test_table (name) value ('to_Delete');
select * from test_table;
delete from test_table where name = 'to_Delete';
select * from test_table;
insert into test_table (name) value ('to_Update');
select * from test_table;
update test_table
set name = 'Updated'
where name = 'to_Update';
select * from test_table;
drop table test_table;