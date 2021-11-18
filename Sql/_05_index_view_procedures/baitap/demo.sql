create database demo;

use demo;

create table products(
id int,
product_code int,
product_name varchar(30),
product_price double,
product_amount int,
product_description varchar(50),
product_status varchar(30),
primary key(id)
);

insert into products
value(1,13,"iphone",16,2,"điện thoại",null);

insert into products
value(2,15,"samsung",13,1,"điện thoại",null);

insert into products
value(3,16,"xiaomi",18,3,"điện thoại",null);

insert into products
value(4,19,"galaxy",20,2,"điện thoại",null);

create index unique_index
on products(product_code);

create index composite_index
on products(product_name,product_price);

select *
from products
where product_name="samsung";

create view product
as 
select product_code,product_name,product_price,product_status
from products;

select *
from product;

update product
set product_name="iphonex"
where product_name="iphone";

delete from product
where product_name="samsung";

delimiter //
create procedure
find_all_product()
begin
select *
from products;
end;
// delimiter ;

call find_all_product();

delimiter //
create procedure add_product(id int,`code` int,`name` varchar(50),price double,amount int,`description` varchar(30),`status` varchar(30))
begin
insert into products
value(id,`code`,`name`,price,amount,`description`,`status`);
end;
// delimiter ;

call add_product(2,15,"samsung",15,1,"điện thoại",null);

delimiter //
create procedure
update_product_name_by_id(id int,`name` varchar(30))
begin
update products
set product_name = `name`
where products.id=id;
end;
// delimiter ;

call update_product_name_by_id(2,"Nokia");

delimiter //
create procedure
delete_product_by_id(id int)
begin
delete from products
where products.id=id;
end;
// delimiter ;

call delete_product_by_id(2);

select *
from products