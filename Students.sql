--creating a look up table for Student in database
create table lu_student (
student_id bigint not null,
fname varchar(256),
lname varchar(256),
phone bigint,
address varchar(3500),
dob date,
standard int
)

--creating a fact table for Student in database
create table fact_student (
student_id bigint not null,
grade int,
fees int,
roll_no int
)

--query for fetching recording by joining normalized look up and fact table 
select PT.student_id,
PT.fname,
PT.lname,
PT.email_id,
PT.phone,
CH.grade,
CH.roll_no
from lu_student PT
left join fact_student CH on PT.student_id = CH.student_id 
where grade > 70 and standard = 9

