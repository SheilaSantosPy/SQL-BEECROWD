
create table candidate(
    id number(2) primary key,
    name varchar2(50));
        
create table score(
    candidate_id number(2),
    math number(5),
    specific number(5),
    project_plan number(5),
    constraint fk_candidate_id foreign key (candidate_id) references candidate);

--Inserindo dados(Candidate):    
insert into candidate values (1,'Michael P. Cannon');
insert into candidate values(2,'Barbra J. Cable');
insert into candidate values(3,'Ronald D. Jones');
insert into candidate values(4,'Timothy K. Fitzsimmons');
insert into candidate values(5,'Ivory B. Morrison');
insert into candidate values(6,'Sheila R. Denis');
insert into candidate values(7,'Edward C. Durgan');
insert into candidate values(8,'William K. Spencer');
insert into candidate values(9,'Donna D. Pursley');
insert into candidate values(10,'Ann C. Davis');

--Inserindo dados(Score):
insert into score values (1,76,58,21);
insert into score values (2,4,5,22);
insert into score values (3,15,59,12);
insert into score values (4,41,42,99);
insert into score values (5,22,90,9);
insert into score values (6,82,77,15);
insert into score values (7,82,99,56);
insert into score values (8,11,4,22);
insert into score values (9,16,29,94);
insert into score values (10,1,7,59);

/* 
A Universidade Tecnológica de Marte está com seu concurso aberto para Pesquisadores.
Porém o computador que processava os dados dos candidatos estragou. Você deve mostrar a lista dos candidatos,
contendo o nome do candidato e a sua pontuação final (com duas casas decimais após a vírgula).
Lembre-se de mostrar a lista ordenada pela pontuação do candidato (maior pontuação no topo da lista).

A pontuação do candidato é o resultado da média ponderada descrita abaixo:
*/

select name, (((math*2)+(specific*3)+(project_plan *5))/10) as avg from candidate
inner join score
on candidate.id = score.candidate_id
order by avg desc ;