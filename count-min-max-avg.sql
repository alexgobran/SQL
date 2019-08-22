--display count of student
select count(*), count(MajorId), max(sat) as 'Max Sat', min(sat) as 'Min Sat', avg(gpa) as 'Average GPA',
from Student;
select concat(s.Firstname, ', ',s.Lastname) as Name, s.GPA, s.SAT, isnull(m.Description, 'Undeclared') as 'Major'
from Student s
left join Major m
on s.majorId = m.id
