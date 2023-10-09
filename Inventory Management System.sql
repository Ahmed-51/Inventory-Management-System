drop table unit_order;
drop table orders;
drop table products;
drop table distributors;
drop table customers;

set pagesize 20;


create table distributors(
	distributor_id int not null,    -- using "not null" key constraints
	dname varchar(20),
	phone_no number(7) unique,		-- using "unique" key constraints
	primary key(distributor_id)
);




create table products(
	product_id int not null,
	distributor_id int not null,
	pname varchar(20) not null,
	price number(6,2),
	quantity int check(quantity > 0),	-- using "check" key constraints
	expire_date date,
	primary key (product_id),
	foreign key (distributor_id) references distributors(distributor_id) on delete cascade	
);




create table customers (
	customer_id int not null,
	cname varchar(10),
	phone_num number(7) unique,
	address varchar(50),
	primary key (customer_id)
);



create table orders (
	order_id int not null,
	customer_id int not null,
	order_date date,
	primary key (order_id),
	foreign key (customer_id) references customers(customer_id) on delete cascade
);





create table unit_order(
	order_id int not null,
	product_id int not null,
	quantity int default 0,		-- using "default" key constraints
	foreign key (product_id) references products(product_id) on delete cascade,
	foreign key (order_id) references orders (order_id) on delete cascade
);






insert into distributors(distributor_id, dname, phone_no) values (1, 'chaddie', 51566);
insert into distributors(distributor_id, dname, phone_no) values (2, 'huey', 66764);
insert into distributors(distributor_id, dname, phone_no) values (3, 'birgitta', 48280);
insert into distributors(distributor_id, dname, phone_no) values (4, 'lucy', 62165);
insert into distributors(distributor_id, dname, phone_no) values (5, 'elna', 86918);
insert into distributors(distributor_id, dname, phone_no) values (6, 'zebulon', 51221);
insert into distributors(distributor_id, dname, phone_no) values (7, 'delphine', 50289);
insert into distributors(distributor_id, dname, phone_no) values (8, 'price', 25074);
insert into distributors(distributor_id, dname, phone_no) values (9, 'gareth', 54766);
insert into distributors(distributor_id, dname, phone_no) values (10, 'crissie', 42014);
	
	

	


insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (1, 'dragon fruit',	1, 73.7, 59, '28-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (2, 'chateau bonnet', 1, 13.58, 76, '14-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (3, 'tomato puree', 1, 991.3, 35, '06-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (4, 'flying fish', 2, 577.35, 82, '04-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (5, 'mushroom', 2, 758.9, 67, '26-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (6, 'cake', 2, 898.36, 80, '19-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (7, 'foil', 3, 534.82, 29, '19-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (8, 'cloves', 3, 213.94, 61, '14-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (9, 'black forest', 3, 338.53, 73, '20-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (10, 'pheasant', 4, 73.18, 61, '22-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (11, 'ham', 4, 444.54, 51, '17-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (12, 'muffin', 4, 689.31, 71, '27-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (13, 'fruit salad', 5, 590.7, 75, '17-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (14, 'yams', 5, 701.12, 69, '28-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (15, 'cucumber pickling', 5, 887.94, 91, '02-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (16, 'pumpkin', 6, 687.06, 88, '25-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (17, 'strawberry lemonade', 6, 35.82,74, '01-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (18, 'soup', 6, 89.71, 75, '10-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (19, 'pasta', 7, 690.66, 65, '18-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (20, 'creamers', 7, 773.26, 62, '01-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (21, 'coriander', 7, 378.37, 60, '12-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (22, 'guava', 8, 993.29, 46, '31-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (23, 'gherkin', 8, 775.69, 92, '18-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (24, 'kahlua', 8, 642.09, 52, '20-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (25, 'longan', 9, 14.97, 43, '13-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (26, 'chicken', 9, 451.31, 73, '10-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (27, 'bread', 9, 872.59, 95, '18-JUL-2022');







insert into customers(customer_id, cname, phone_num, address) values (1, 'xenos', 63719, '61787 glacier hill parkway');
insert into customers(customer_id, cname, phone_num, address) values (2, 'carney', 96744, '384 hauk plaza');
insert into customers(customer_id, cname, phone_num, address) values (3, 'brien', 21921, '8847 mcguire junction');
insert into customers(customer_id, cname, phone_num, address) values (4, 'rena', 22876, '277 forster way');
insert into customers(customer_id, cname, phone_num, address) values (5, 'darb', 86744, '6 ronald regan way');
insert into customers(customer_id, cname, phone_num, address) values (6, 'tomaso', 35185, '4 butternut place');
insert into customers(customer_id, cname, phone_num, address) values (7, 'brewer', 86854, '4085 luster crossing');
insert into customers(customer_id, cname, phone_num, address) values (8, 'kania', 63585, '4 fulton terrace');
insert into customers(customer_id, cname, phone_num, address) values (9, 'mozelle', 72295, '286 gina trail');
insert into customers(customer_id, cname, phone_num, address) values (10, 'cristobal', 63477, '3 sherman way');
insert into customers(customer_id, cname, phone_num, address) values (11, 'augusto', 35362, '09791 paget street');
insert into customers(customer_id, cname, phone_num, address) values (12, 'alyce', 86259, '887 redwing alley');
insert into customers(customer_id, cname, phone_num, address) values (13, 'emilie', 75488, '3 marcy plaza');
insert into customers(customer_id, cname, phone_num, address) values (14, 'karlene', 97053, '15 pepper wood junction');
insert into customers(customer_id, cname, phone_num, address) values (15, 'hilary', 86297, '2 clove junction');
insert into customers(customer_id, cname, phone_num, address) values (16, 'cathie', 81738, '77 miller drive');
insert into customers(customer_id, cname, phone_num, address) values (17, 'risa', 62766, '71042 kennedy drive');
insert into customers(customer_id, cname, phone_num, address) values (18, 'shelba', 31976, '4013 mosinee point');
insert into customers(customer_id, cname, phone_num, address) values (19, 'samara', 56670, '46665 crownhardt avenue');
insert into customers(customer_id, cname, phone_num, address) values (20, 'brnaby', 37565, '3 crownhardt alley');







insert into orders ( order_id, customer_id, order_date) values (1, 1, '08-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (2, 1, '22-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (3, 2, '30-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (4, 2, '27-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (5, 3, '17-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (6, 3, '24-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (7, 4, '01-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (8, 4, '01-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (9, 5, '13-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (10, 5, '10-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (11, 6, '16-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (12, 6, '07-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (13, 7, '14-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (14, 7, '27-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (15, 8, '03-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (16, 8, '10-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (17, 9, '31-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (18, 9, '04-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (19, 10, '05-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (20, 10, '20-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (21, 11, '28-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (22, 11, '20-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (23, 12, '26-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (24, 12, '16-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (25, 13, '06-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (26, 13, '16-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (27, 14, '31-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (28, 14, '16-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (29, 15, '12-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (30, 15, '07-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (31, 16, '30-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (32, 16, '13-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (33, 17, '09-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (34, 17, '24-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (35, 18, '22-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (36, 18, '25-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (37, 19, '22-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (38, 19, '06-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (39, 20, '24-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (40, 20, '02-JUL-2022');






insert into unit_order ( order_id, product_id, quantity) values (1,	1, 3);
insert into unit_order ( order_id, product_id, quantity) values (1,	5, 5);
insert into unit_order ( order_id, product_id, quantity) values (2, 3, 1);
insert into unit_order ( order_id, product_id, quantity) values (3, 5, 2);
insert into unit_order ( order_id, product_id, quantity) values (4, 1, 5);
insert into unit_order ( order_id, product_id, quantity) values (4, 2, 8);
insert into unit_order ( order_id, product_id, quantity) values (4, 9, 12);
insert into unit_order ( order_id, product_id, quantity) values (5, 3, 4);
insert into unit_order ( order_id, product_id, quantity) values (6, 3, 2);
insert into unit_order ( order_id, product_id, quantity) values (6, 13, 9);
insert into unit_order ( order_id, product_id, quantity) values (6, 22, 5);
insert into unit_order ( order_id, product_id, quantity) values (7, 24, 4);
insert into unit_order ( order_id, product_id, quantity) values (8, 4, 1);
insert into unit_order ( order_id, product_id, quantity) values (8, 14, 2);
insert into unit_order ( order_id, product_id, quantity) values (9, 5, 5);
insert into unit_order ( order_id, product_id, quantity) values (10, 12, 9);
insert into unit_order ( order_id, product_id, quantity) values (11, 6, 12);
insert into unit_order ( order_id, product_id, quantity) values (12, 2, 2);
insert into unit_order ( order_id, product_id, quantity) values (13, 7, 5);
insert into unit_order ( order_id, product_id, quantity) values (14, 9, 8);
insert into unit_order ( order_id, product_id, quantity) values (14, 16, 2);
insert into unit_order ( order_id, product_id, quantity) values (14, 23, 5);
insert into unit_order ( order_id, product_id, quantity) values (14, 11, 6);
insert into unit_order ( order_id, product_id, quantity) values (15, 26, 14);
insert into unit_order ( order_id, product_id, quantity) values (16, 7, 6);
insert into unit_order ( order_id, product_id, quantity) values (17, 3, 3);
insert into unit_order ( order_id, product_id, quantity) values (17, 9, 1);
insert into unit_order ( order_id, product_id, quantity) values (17, 12, 2);
insert into unit_order ( order_id, product_id, quantity) values (18, 9, 11);
insert into unit_order ( order_id, product_id, quantity) values (19, 10, 7);
insert into unit_order ( order_id, product_id, quantity) values (20, 10, 9);
insert into unit_order ( order_id, product_id, quantity) values (21, 17, 14);
insert into unit_order ( order_id, product_id, quantity) values (21, 1, 3);
insert into unit_order ( order_id, product_id, quantity) values (22, 6, 5);
insert into unit_order ( order_id, product_id, quantity) values (23, 8, 9);
insert into unit_order ( order_id, product_id, quantity) values (24, 18, 12);
insert into unit_order ( order_id, product_id, quantity) values (25, 20, 4);
insert into unit_order ( order_id, product_id, quantity) values (25, 13, 4);
insert into unit_order ( order_id, product_id, quantity) values (26, 19, 6);
insert into unit_order ( order_id, product_id, quantity) values (27, 11, 13);
insert into unit_order ( order_id, product_id, quantity) values (28, 14, 1);
insert into unit_order ( order_id, product_id, quantity) values (29, 25, 5);
insert into unit_order ( order_id, product_id, quantity) values (30, 5, 6);
insert into unit_order ( order_id, product_id, quantity) values (30, 26, 7);
insert into unit_order ( order_id, product_id, quantity) values (30, 1, 8);
insert into unit_order ( order_id, product_id, quantity) values (31, 12, 3);
insert into unit_order ( order_id, product_id, quantity) values (32, 14, 2);
insert into unit_order ( order_id, product_id, quantity) values (32, 15, 1);
insert into unit_order ( order_id, product_id, quantity) values (32, 16, 2);
insert into unit_order ( order_id, product_id, quantity) values (33, 17, 6);
insert into unit_order ( order_id, product_id, quantity) values (34, 3, 7);
insert into unit_order ( order_id, product_id, quantity) values (35, 1, 2);
insert into unit_order ( order_id, product_id, quantity) values (35, 19, 4);
insert into unit_order ( order_id, product_id, quantity) values (35, 21, 1);
insert into unit_order ( order_id, product_id, quantity) values (36, 27, 6);
insert into unit_order ( order_id, product_id, quantity) values (37, 12, 2);
insert into unit_order ( order_id, product_id, quantity) values (38, 22, 9);
insert into unit_order ( order_id, product_id, quantity) values (39, 12, 2);
insert into unit_order ( order_id, product_id, quantity) values (39, 7, 3);
insert into unit_order ( order_id, product_id, quantity) values (40, 11, 2);
	
	
	
	
	
	
--description of All 5 tables

DESC distributors;
DESC products;
DESC customers;
DESC orders;
DESC unit_order;




-- Shows Data Inserted in each table

select * from distributors;
select * from products;
select * from customers;
select * from orders;
select * from unit_order;





-- Adding column in distributors table

alter table distributors add new_column VARCHAR(10);
desc distributors;



-- Dropping column from distributors table

alter table distributors drop column new_column;
desc distributors;



-- Modifying "dname" column data type in distributors table

alter table distributors modify dname VARCHAR(30);
desc distributors;



-- Renaming "dname" column name in distributors table

alter table distributors rename column dname to distributors_name;
desc distributors;

alter table distributors rename column distributors_name to dname;
desc distributors;




-- Updating a value in "dname" column of distributors table

update distributors set dname = 'chris' where distributor_id = 10;
select * from distributors;

update distributors set dname = 'crissie' where distributor_id = 10;
select * from distributors;



-- Deleting a row from distributors table

delete from distributors where distributor_id = 10;
select * from distributors;

insert into distributors(distributor_id, dname, phone_no) values (10, 'crissie', 42014);
select * from distributors;




-- Calculated field & giving the column an Alias
select (distributor_id + 10) as distributor_id_plus_ten from distributors; 



-- Applying conditions by "where" clause
select dname, phone_no from distributors where distributor_id = 5;



-- Range Search using "between ... and" & "not between ... and"
SELECT distributor_id, dname, phone_no FROM distributors WHERE distributor_id BETWEEN 1 AND 5;
SELECT distributor_id, dname, phone_no FROM distributors WHERE distributor_id not BETWEEN 1 AND 5;



-- Search by Multiple Conditions ( and & or)
SELECT distributor_id, dname, phone_no FROM distributors WHERE distributor_id <=3 AND dname = 'huey';
SELECT distributor_id, dname, phone_no FROM distributors WHERE distributor_id <=3 OR dname = 'huey';



-- Set membership
SELECT distributor_id, dname, phone_no FROM distributors WHERE distributor_id IN (1,3,5);
SELECT distributor_id, dname, phone_no FROM distributors WHERE distributor_id NOT IN (1,3,5);



-- Ordering by single column
SELECT distributor_id, dname, phone_no FROM distributors ORDER BY distributor_id;
SELECT distributor_id, dname, phone_no FROM distributors ORDER BY distributor_id desc;



-- Ordering by multiple columns
insert into distributors(distributor_id, dname, phone_no) values (11, 'gareth', 54767);
insert into distributors(distributor_id, dname, phone_no) values (12, 'crissie', 42015);

SELECT distributor_id, dname, phone_no FROM distributors order by dname, phone_no;
SELECT distributor_id, dname, phone_no FROM distributors order by dname, phone_no desc;
SELECT distributor_id, dname, phone_no FROM distributors order by dname desc, phone_no desc;

delete from distributors where distributor_id > 10;
select * from distributors;



-- Use of "distinct" keyword 
select distinct (distributor_id) from distributors;




-- Pattern Matching

SELECT distributor_id, dname FROM distributors where dname like '%c%';
SELECT distributor_id, dname FROM distributors where dname like '_r%';
SELECT distributor_id, dname FROM distributors where dname like '%e';





-- Aggregate functions:

select max(phone_no) from distributors;
select min(phone_no) from distributors;
select sum(phone_no) from distributors;
select count(phone_no) from distributors;
select count(*) from distributors;
select count(distinct (phone_no)) from distributors;
select avg(phone_no) from distributors;
select avg(nvl(phone_no, 0)) from distributors;   





-- GROUP BY clause
select customer_id, count(*) from orders group by customer_id;
select customer_id, count(*) from orders where customer_id>10 group by customer_id;



-- -- HAVING clause
insert into orders ( order_id, customer_id, order_date) values (41, 19, '24-JUL-2022');
insert into orders ( order_id, customer_id, order_date) values (42, 20, '02-JUL-2022');

select customer_id, count(*) from orders group by customer_id having customer_id>10;
select customer_id, count(*) from orders group by customer_id having count(*)>2;

delete from orders where order_id > 40;
select * from orders;



-- Nested query
select distributor_id, dname, phone_no from distributors where phone_no in ( select phone_no from distributors where MOD(phone_no, 2)= 0);





-- Set operations :

-- Union all
select distributor_id from distributors where distributor_id <5
union all
select distributor_id from products;



-- Union
select distributor_id from distributors where distributor_id <5
union
select distributor_id from products;




--Intersection
select distributor_id from distributors where distributor_id <5
intersect
select distributor_id from products;




-- Minus
select distributor_id from products
minus
select distributor_id from distributors where distributor_id <5;





-- Join operations :

-- Join
select d.distributor_id, d.dname, p.product_id, p.pname from distributors d join
products p on d.distributor_id = p.distributor_id;



-- Natural Join
select distributor_id, dname, product_id, pname from distributors natural join products;



-- Cross Join
select d.distributor_id, d.dname, p.product_id, p.pname from distributors d cross join products p;



-- Inner Join
select d.distributor_id, d.dname, p.product_id, p.pname from distributors d inner join
products p on d.distributor_id = p.distributor_id;



-- Left Outer Join
select d.distributor_id, d.dname, p.product_id, p.pname from distributors d left outer join
products p on d.distributor_id = p.distributor_id;



-- --RIGHT Outer Join
select d.distributor_id, d.dname, p.product_id, p.pname from distributors d right outer join
products p on d.distributor_id = p.distributor_id;



-- --FULL Outer Join
select d.distributor_id, d.dname, p.product_id, p.pname from distributors d full outer join
products p on d.distributor_id = p.distributor_id;



-- Self Join
select a.distributor_id from distributors a minus
select a.distributor_id from distributors a join distributors b on a.distributor_id < b.distributor_id;







-- PL/SQL Procedure for displaying a Single Row

set serveroutput on

declare
pl_distributors_id distributors.distributor_id%type;
pl_dname distributors.dname%type;
pl_phone_no distributors.phone_no%type;

begin

select distributor_id, dname, phone_no into pl_distributors_id, pl_dname, pl_phone_no from distributors
where distributor_id = 3;

dbms_output.put_line('Distributor_Id : ' || pl_distributors_id || ', Distributors_Name : ' || pl_dname || ', Distributors_Phone_No : '|| pl_phone_no);

end;
/







-- PL/SQL Procedure for displaying Multiple Rows using Cursor

set serveroutput on

declare
cursor discur is select distributor_id, dname, phone_no from distributors;
distributors_record discur%rowtype;

begin

open discur;
loop
	fetch discur into distributors_record;
	exit when discur%rowcount > 5;
	dbms_output.put_line('Distributor_Id : ' || distributors_record.distributor_id);
	dbms_output.put_line('Distributor_Name : ' || distributors_record.dname);
	dbms_output.put_line('Distributor_Phone_no : ' || distributors_record.phone_no);
end loop;
close discur;

end;
/








-- PL/SQL Procedure which takes User Input & make Decision about Product Status


set serveroutput on
declare
pl_quantity products.quantity%type;
pl_pname products.pname%type;
pl_product_id products.product_id%type := &Product_Id;

begin

select pname, quantity into pl_pname, pl_quantity from products
where product_id = pl_product_id;

dbms_output.put_line ('Product_id: ' || pl_product_id);
dbms_output.put_line ('Product_Name: ' || pl_pname);

if pl_quantity > 100 then
	dbms_output.put_line ('More than Enough Supply Available');
elsif pl_quantity > 70 then
	dbms_output.put_line ('Supply Available');
elsif pl_quantity > 30 then
	dbms_output.put_line ('Supply Required');
elsif pl_quantity > 10 then
	dbms_output.put_line ('Urgently Supply Required');
end if;

exception
when others then
	dbms_output.put_line (sqlerrm);
end;
/
show errors








-- PL/SQL Procedure for getting Distributor's Info taking User Input

create or replace procedure get_distributor_info is
dis_id distributors.distributor_id%type := &id;
dis_name distributors.dname%type;
dis_phone distributors.phone_no%type;

begin

select distributor_id, dname, phone_no into dis_id, dis_name, dis_phone from distributors where distributor_id = dis_id;
dbms_output.put_line('Distributor Id: '||dis_id);
dbms_output.put_line('Distributor Name: '||dis_name);
dbms_output.put_line('Distributor Phone No: '||dis_phone);
end;
/
show errors;



set serveroutput on
begin
	get_distributor_info;
end;
/






-- Function to get the Maximum Quantity of any Unit Order from Unit_Order Table

create or replace function unit_order_max_quantity return number is
max_quantity unit_order.quantity%type;
begin
select max(quantity) into max_quantity from unit_order;
return max_quantity;
end;
/


set serveroutput on
begin
	dbms_output.put_line('Max Quantity: ' || unit_order_max_quantity);
end;
/







-- Function for Calculate Discounted Price according to their Current price for any Products of Products Table

create or replace function discount_for_eid(init_price in products.price%type)
return number is
dis_price products.price%type;

begin

if init_price > 800 then 
	dis_price := init_price - (init_price*0.25);
elsif init_price > 500 then 
	dis_price := init_price - (init_price*0.35);
elsif init_price > 300 then 
	dis_price := init_price - (init_price*0.4);
elsif init_price > 100 then 
	dis_price := init_price - (init_price*0.5);
else dis_price := init_price;
end if;

return dis_price;

end;
/
show errors;



select pname, price from products where product_id= 3;

set serveroutput on
declare
pl_pname products.pname%type;
pl_price products.price%type;
begin
	select pname, discount_for_eid(price) into pl_pname, pl_price from products where product_id = 3;
	dbms_output.put_line('Product Name: ' || pl_pname);
	dbms_output.put_line('Discounted Price: ' || pl_price);
end;
/







-- View (create, update, delete, drop)

create view distributors_view as
select distributor_id, dname from distributors;

select * from distributors_view;

update distributors_view set dname = 'vini' where distributor_id = 10;
select * from distributors_view;

delete from distributors_view where distributor_id = 10;
select * from distributors_view;
   
drop view distributors_view;

insert into distributors(distributor_id, dname, phone_no) values (10, 'crissie', 42014);
select * from distributors;








-- Trigger to check the Validity of Price of a product

create or replace trigger check_price before insert or update on products
for each row

declare
min_price number(7,2) := 1.00;
max_price number(7,2) := 1000.00;

begin

if :new.price > max_price then
	raise_application_error(-20000,'Price is too Large for any Product');
elsif :new.price < min_price then
	raise_application_error(-20001,'Price is too Small for any Product');
else dbms_output.put_line('New Row Inserted Successfully in Products Table');
end if;

end;
/

insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (28, 'flour', 10, 736.11, 51, '21-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (29, 'cheese', 10, 1944.65, 72, '30-JUL-2022');
insert into products (product_id, pname, distributor_id, price, quantity, expire_date) values (30, 'lamb meat', 10, 0.5, 47, '01-JUL-2022');
select * from products;
delete from products where product_id > 27;
select * from products;









-- Trigger to Auto Increment the Distributor_id in Distributors Table

create or replace trigger auto_inc before insert or update on distributors
for each row

declare
current_id int;

begin
select max(distributor_id) into current_id from distributors;
:new.distributor_id := current_id + 1;
dbms_output.put_line('New Row Inserted Successfully in Distributors Table');

end;
/

insert into distributors(distributor_id, dname, phone_no) values (null, 'salah', 54326);
insert into distributors(distributor_id, dname, phone_no) values (5, 'firmino', 17014);
insert into distributors(distributor_id, dname, phone_no) values (99, 'van dijk', 13419);
select * from distributors;
delete from distributors where distributor_id > 10;
select * from distributors;









-- Transaction Management

delete from distributors;
select * from distributors;

rollback;
select * from distributors;
commit;



savepoint sp;
insert into distributors(distributor_id, dname, phone_no) values (11, 'salah', 54326);
savepoint sp_salah;
insert into distributors(distributor_id, dname, phone_no) values (12, 'firmino', 17014);
select * from distributors;

rollback to sp_salah;
select * from distributors;
rollback to sp;
select * from distributors;






-- Date 

select sysdate from dual;
select current_date from dual;
select systimestamp from dual;


select product_id, pname, expire_date from products where product_id = 1;
select add_months (expire_date, 3) as three_months_extension from products where product_id = 1;
select add_months (expire_date, -3) as three_months_Reduction from products where product_id = 1;


select least (to_date('1-Jan-2022'), to_date('1-Dec-2022')) from dual;
select greatest (to_date('1-Jan-2022'), to_date('1-Dec-2022')) from dual;


select last_day(expire_date) from products where product_id <= 5;

select pname, extract(day from expire_date) as Day from products where product_id <= 5;
select pname, extract(month from expire_date) as Month from products where product_id <= 5;
select Pname, extract(year from expire_date) as Year from products where product_id <= 5;