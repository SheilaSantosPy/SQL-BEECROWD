create table customers (
    id number(2) primary key,
    name varchar2(50),
    street varchar2(50),
    city varchar2(50),
    state varchar2(2),
    credit_number number(10,2));
    
insert into customers values (1,'Pedro Augusto da Rocha','Rua Pedro Carlos Hoffman','Porto Alegre','RS', 700.00);
insert into customers values (2,'Antonio Carlos Mamel','Av. Pinheiros','Belo Horizonte','BH', 3500.50);
insert into customers values (3,'Luiza Augusta Mhor','Rua Salto Grande','Niteroi','RJ', 4000.00);
insert into customers values (4,'Jane Ester','Av. 7 de setembro','Erechim','RS', 800.00);
insert into customers values (5,'Marcos Antônio dos Santos','Av. Farrapos','Porto Alegre','RS', 4250.25);

-- Exercicio:

-- Sua empresa está fazendo um levantamento de quantos clientes estão cadastrados nos estados, porém, faltou levantar os dados do estado do Rio Grande do Sul.
-- Então você deve Exibir o nome de todos os clientes cujo estado seja ‘RS’.

select * from customers
where city = 'Porto Alegre';