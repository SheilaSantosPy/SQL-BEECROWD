create table products (
    id number(3) primary key,
    name varchar2(60),
    amount number(7),
    price number(10,2));
    
insert into products values(11,'Two-door wardrobe',100,80);
insert into products values(22,'Dining table',1000,560);
insert into products values(33,'Towel holder',10000,5.50);
insert into products values(44,'Computer desk',350,100);
insert into products values(55,'Chair',3000,210.64);
insert into products values(66,'Single bed',750,99);

select * from products
where price < 10 or price > 100;