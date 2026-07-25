--  Like operator : it used to search any thing which contain any alphabat or anythniing
-- alphabat%   gives data which start with that particular alphabat
-- %alphabat   gives data which end with 
-- %alphabat%  return data  aplhabat will present at any position

-- find a person data whose name start with A 
select* from customers
where given_name like "a%";

-- find a person data whose name ends with A 
select* from customers
where given_name like "%a";

-- find a person data whose name contain A at any position w
select* from customers
where given_name like "%a%";

-- find data of person whose name length is 5 and name ends with a 
select* from customers
where given_name like "____a";  -- here length is 5 so we use 4 underscore and a at end 
-- if we use one undersoure and a like _a  means we are trying to find a person name whose name length is 2 and name ends with a 


-- find  address contains civil in it 

select *from customers
where house_address like "%civil%";

-- or we can use (  regexp)  except like keyword using tehre is no need to use % this sign
select *from customers
where house_address regexp "civil";

-- in this if we want number start with then we use  ( ^alphabet)  for ends with use  ( alphabat$) in regexp 

-- searching data which contain a particular address start end basically all condtion using regexp  we use or operator in this
select *from customers
where house_address regexp "Napier | ^7 | ^21 | lines$"; -- here ^7 , ^21 denotes start with , lines$ ends with  , Napier at any place

-- search anything using some pattern
select *from customers
where house_address regexp "[hes]e";  -- here we find a patter like he , ee , se if any address consist this it will return that data

-- also give range in this
select *from customers
where house_address regexp "[a-e]e"; -- this means find pattern  ae , be , ce , de , ee it return any address consist this pattern at any place



-- is null   keyword 
-- find data where mobile number is null
 select * from customers
 where mobile_number is null;
 
 -- we can find its reverse means find all data without null value for that we use  ( is not null)
  select * from customers
 where mobile_number is not null;
