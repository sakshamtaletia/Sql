select *from customers;
-- 1  Find the names of customers who lives in up
select given_name as name
  from customers
where state_code = "up";

-- 02 list customers whose age is btw 30 to 40 
SELECT given_name AS name
FROM customers
WHERE TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) BETWEEN 30 AND 40;

-- 03 show name and mobile number from customer belong district lucknow or indore
select given_name as name ,
mobile_number from customers
where district in("lucknow", "indore");

-- or 

select given_name as name ,
mobile_number from customers
where district = "lucknow" or district="indore";

-- 04 get the name of customers whose are not from up
select given_name as name 
from customers 
where state_code not in("up");

-- 05 display customers whose names ends with letter "a"
select given_name 
from customers
where given_name regexp "a$";

-- or 

select given_name 
from customers
where given_name like "%a";

-- 06 find the name of customers whose name contains "an"
-- using regexp
select given_name 
from customers
where given_name regexp "an";

-- or  using like clause
select given_name 
from customers
where given_name like "%an%";

-- 07 name customers form cities lucknow indore 
select given_name from customers 
where district in ("lucknow" , "indore");