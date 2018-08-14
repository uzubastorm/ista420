.echo ON
.headers ON

--name: aaron Person
--file: TSQL-lab2a.sql
date: August/14/2018

--what is the region
select * from region;

--what are the cities
select distinct territorydescription from territories where regionid

--what are the territories
select distinct territorydescription from territories where regionid = 4;

--how do you run this query with the fully qualified name
select distinct territories.territorydescription from territories where regionid = 4;

--how do you run this query with a table alias
select distinct t.territorydescription from territories t where regionid = 4;

--what is the contact name , city, and phone
select contactname, city, phone from customers

--what are the products currently out of stock
select productid, productname, unitsinstock from products where unitsinstock = 0;

--what are the ten products currently in stock with the least amount on hand
 select productid, productname, unitsinstock from products where unitsinstock > 0 order by unitsinstock limit 10;

--what are the five most expensive products
 select productid, productname, unitprice from products where unitsinstock > 0 order by unitprice desc limit 5;

--how many products does northwind have? how many customers? how many suppliers?
select count(*) from products;
select count(*) from suppliers;
select count(*) from customers:
