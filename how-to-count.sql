--display count of student
select count(*), count(MajorId)
from student;

/*select concat(s.Firstname, ', ',s.Lastname) as Name, s.GPA, s.SAT, isnull(m.Description, 'Undeclared') as 'Major'
from Student s
 left join Major m
on s.majorId = m.id
*/