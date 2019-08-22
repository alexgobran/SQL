--categorize Red students a if gpa of 3.0 to greater, rest of students < gpa 3.0
--union combines 2 results set and makes one(has to have the same columns

select 'Green' as color, * from Student
where gpa >= 3.0

union

select 'Blue' as color, * from Student
 where gpa >= 2.5 and gpa <3.0

 union

select 'Orange' as color, * from Student
 where gpa < 2.5

 order by GPA