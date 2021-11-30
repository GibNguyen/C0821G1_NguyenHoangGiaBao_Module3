use quan_ly_sinh_vien;

select *
from `subject`
where `subject`.credit =(select max(credit) from `subject`);

select *
from `subject`
inner join mark on `subject`.sub_id=mark.sub_id
where mark.mark=(select max(mark) from mark);

select *,avg(mark) as "DTB"
from student
inner join mark on student.student_id=mark.student_id
group by student.student_id
order by avg(mark) desc;

