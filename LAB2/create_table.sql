DROP DATABASE IF EXISTS DB_LABS;
CREATE DATABASE IF NOT EXISTS DB_LABS;
USE DB_LABS;

CREATE TABLE ILL(
id int not null auto_increment,
first_name nvarchar(20),
last_name nvarchar(20),
age tinyint unsigned,
phone_number nvarchar(15),
email nvarchar(30),
primary key (id)
);

CREATE TABLE RECIPE(
id int not null auto_increment,
ill_id int not null,
diagnosis_code nvarchar(20),
application_date date,
drug_name nvarchar(255),
drug_amount tinyint unsigned,
primary key (id)
);

CREATE TABLE GIVEN_ORDERS(
id int not null auto_increment,
recipe_id int not null unique,
receptionist_id int not null,
delivery_date date,
primary key (id)
);

CREATE TABLE RECEPTIONIST(
id int not null auto_increment,
drugstore_id int not null,
first_name nvarchar(20),
surname nvarchar(20),
phone_number nvarchar(15),
birth_date date,
primary key (id)
);

CREATE TABLE DRUGSTORE(
id int not null auto_increment,
address nvarchar(50),
contact_number nvarchar(15),
pharmacy_name nvarchar(30),
primary key (id)
);

CREATE TABLE DRUG_APPLICATION(
id int not null auto_increment,
drug_id int not null,
order_time datetime,
drug_amount tinyint unsigned,
primary key (id)
);

CREATE TABLE PREPARED_DRUGS(
id int not null auto_increment,
drugstore_id int not null,
drug_name nvarchar(80),
price decimal(5, 2),
critical_minimum tinyint unsigned,
primary key (id)
);

CREATE TABLE HANDMADE_DRUGS(
id int not null auto_increment,
drugstore_id int not null,
drug_name nvarchar(30),
price decimal (5, 2),
drug_form enum('mixture', 'salve', 'grout', 'tincture', 'powder'),
primary key (id)
);

CREATE TABLE TECHNOLOGY_DIRECTORY(
id int not null auto_increment,
drug_id int not null unique,
components nvarchar(255),
primary key (id)
);