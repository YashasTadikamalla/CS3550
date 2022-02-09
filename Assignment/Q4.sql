-- .mode box
-- .output Q4_output.csv
.tables

create table X(id_num integer, id_str text);

.tables

insert into X(id_num, id_str) values (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E');

select * from X;

select t1.id_num||','||t2.id_num||','||t3.id_num as id_num, t1.id_str||','||t2.id_str||','||t3.id_str as id_str from X as t1, X as t2, X as t3 where t1.id_num<t2.id_num and t2.id_num<t3.id_num;

drop table X;