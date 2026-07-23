-- Alter command

Drop database if exists DDL_command;
create database DDL_command;
use DDL_command;

create table my_table1(
id int ,
first_name varchar(50) not null,
age int not null,
create_timestamp  timestamp default current_timestamp);

insert into my_table1(id , first_name , age) values
(1,"saksham" ,21),
(2,"sachin",35),
(3,"rohit",25);

create table my_table2(
id int ,
description varchar(255) not null);

insert into my_table2(id , description) values
(1,"Item1"),
(2,"item2"),
(3,"item3");

select * from my_table1;
select*from my_table2;
desc my_table1;
desc my_table2;

-- add columns
alter table my_table1 add column email varchar(100);

-- add column after  a particular column
alter table my_table1 add column last_name varchar(100) after first_name;

-- add column at first index
alter table my_table1 add column emp_id varchar(40)first;

-- Modify an existing column:   in this we already have column we just change  or modify it datatype or constraint etc
--  alter tabel tbale_name   modify column column_name datatype constraint;
alter table my_table1 modify column first_name varchar(100) not null;

-- change the column name
-- Alter table table_name change column old_column_name new_column_name datatype ;
Alter table my_table1 change column email email_address varchar(200) ;

-- drop column
alter table my_table1 drop last_name;

-- make any column primary key
-- alter atble  table_name add primary key(column_name)   it become primary key only if it follow the primary key property
alter table my_table1 add primary key(id);

-- adding forign key
-- alter table child_table_nmae add constraint variable_name foreign key (column_name) references my_table1(primary_key(not null unique key)_of_parent_table);
alter table my_table2 add constraint fk_id foreign key (id) references my_table1(id);

-- drop foreign and primary key it nessacary first to drop foriegn key 
alter table my_table2 drop foreign key fk_id;
alter table my_table1 drop primary key;


-- rename table name  and we can't change database name directly
rename table my_table1 to my_new_table;

--  drop database database_name

--  we can also see how our table was created
show create table my_table2;