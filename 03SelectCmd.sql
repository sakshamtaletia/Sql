-- Desc used in two ways : 

-- 1. find descending :
-- SELECT *FROM employees ORDER BY salary DESC;
-- 2. desc table_name    here desc and describe table_name  both work same used to show table schema


use bharat_retail;
select* from customers; -- give complete table

desc customers;   -- give schema of table
describe customers; -- same as upper one

-- use of select query 

select 
     customer_id,
     given_name,
     family_name,
     birth_date,
     mobile_number
     from customers;

-- we can give them some temperrary column name also using  ( as )  keyword
select 
     customer_id   as cust_id,
     given_name  as f_name,
     family_name as l_name,
     birth_date,
     mobile_number
     from customers;  -- these are temperray changes  for real change we have to use alter cmd
     
     
select 
      given_name as first_name,
      monthly_income as old_income,
      monthly_income * .10 +(monthly_income) as new_income  -- here we increase income by 10% store as new income but this change is temprarly it doesnt effect the original one
      from customers;


-- Where   clause 
-- finding data whose monthly income greater then 1L 
select *
	 from customers
     where monthly_income >=100000;
     
-- find detail of person born after  1984-08-30 
select *
     from customers
     where birth_date > "1991-04-13";
     
-- find person who belong to lucknow

select 
      given_name as first_name,
      customer_id
      from customers 
      where district ="Lucknow";
     
     
-- and or not operators work same as python
-- find a person whose income is greater then 1L and belong to Lucknow

select * 
from customers
where district= "Lucknow"
 and monthly_income>=100000;
 
-- find a person whose income is greater then 1L or belong to Lucknow

select * 
from customers
where district= "Lucknow"
or monthly_income>=100000;


-- not operator

select * 
from customers
where not(district= "Lucknow"
 or monthly_income>=100000);
 
 
 -- find data of person whose state_code is mp up hp
 select * from customers where state_code="mp" or state_code="up" or state_code="hp";
 
 -- or we can write same query using    (in ) operator
 select *from customers where state_code in("mp","up","hp");
 
 -- we want to find data execpt these state_code then we use    ( not in ) 
  select *from customers where state_code not in("mp","up");
  
  -- find data btw range of salary  first using and operator
  select* from customers
  where monthly_income>=100000 and monthly_income<=200000;
  
 -- or we can find same thing using btw operator 
   select* from customers
  where monthly_income between 100000 and 200000;