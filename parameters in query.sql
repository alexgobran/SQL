--display students whereGPA>= 3.00

 declare @targetgpa decimal(4,2)
 set @targetgpa= 2.70;

 select * from Student;
where (gpa >= @targetgpa)  

/*--display students 1000 < sat > 1400

DECLARE @LOWSAT int;
DECLARE @HIGHSAT int;

SET @LOWSAT = 1000;
SET @HIGHSAT = 1400;

select * 
from Student
where (sat < @LOWSAT) or (sat > @HIGHSAT);
*/