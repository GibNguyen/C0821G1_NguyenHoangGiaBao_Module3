use quan_ly_ban_hang;

insert into customer
values(1,"Minh Quan",10);

insert into customer
values(2,"Ngoc Oanh",20);

insert into customer
values(3,"Hong Ha",50);

insert into product
values(1,"May Giat",3);

insert into product
values(2,"Tu Lanh",5);

insert into product
values(3,"Dieu Hoa",7);

insert into product
values(4,"Quat",1);

insert into product
values(5,"Bep Dien",2);

insert into `order`(order_id,cus_id,order_date)
values(1,1,"2006/03/21");

insert into `order`(order_id,cus_id,order_date)
values(2,2,"2006/03/23");

insert into `order`(order_id,cus_id,order_date)
values(3,1,"2006/03/16");

insert into order_detail
values(1,1,3);

insert into order_detail
values(1,3,7);

insert into order_detail
values(1,4,2);

insert into order_detail
values(2,1,1);

insert into order_detail
values(3,1,8);

insert into order_detail
values(2,5,4);

insert into order_detail
values(2,3,3);

select order_id,order_date,odder_total_price
from `order`;

select distinct customer.cus_name
from customer
inner join `order` on customer.cus_id=`order`.cus_id;

select distinct product.pro_name
from product
inner join order_detail on product.pro_id=order_detail.pro_id;

select customer.cus_name
from customer
left join `order` on `order`.cus_id=customer.cus_id;

-- select c.cus_name
-- from customer c
-- where not exists(select distinct c.cus_name
-- from `order` o where c.cus_id=o.cus_id
-- );

select c.cus_name
from customer c
where not exists(select distinct c.cus_name
from customer c2 
inner join `order` on c2.cus_id=`order`.cus_id and c2.cus_id=c.cus_id
);


 select o.order_id, o.order_date, sum(ode.order_quanlity*p.pro_price) as price
 from `order` o
 inner join order_detail ode on o.order_id = ode.order_id
 inner join product p on ode.pro_id = p.pro_id
 group by o.order_id;
