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
insert into customers values (5,'Marcos Ant�nio dos Santos','Av. Farrapos','Porto Alegre','RS', 4250.25);

-- Exercicio:

-- A empresa far� um evento comemorando os 20 anos de mercado, e para isso faremos uma grande comemora��o na cidade de Porto Alegre.
-- Queremos tamb�m convidar todos os nossos clientes que est�o cadastrados nessa cidade.
-- O seu trabalho � nos passar os nomes e os endere�os dos clientes que moram em 'Porto Alegre', para entregar os convites pessoalmente.

select * from customers
where city = 'Porto Alegre';