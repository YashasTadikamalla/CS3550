-- .mode box
-- .output Q2_output.csv
.tables

create table instructor (
name text, course_id text);
create table student (
name text, course_id text);

.tables

insert into instructor (name,course_id) values ('Amy','CS1000'),('Aaron','CS700'),('Anne','CS400');
insert into student (name,course_id) values ('Jack','CS800'),('Jones','CS1000'),('Jason','CS450');
select * from instructor;
select * from student;

-- with ins (ins_name,ins_teaches) as (select * from instructor), stu (stu_name,stu_takes) as (select * from student)
select I.name as ins_name,I.course_id as ins_teaches,S.name as stu_name,S.course_id as stu_takes
from (instructor I left outer join student S on I.course_id=S.course_id) 
union
select I.name as ins_name,I.course_id as ins_teaches,S.name as stu_name,S.course_id as stu_takes
from (student S left outer join instructor I on I.course_id=S.course_id);

drop table instructor;
drop table student;


