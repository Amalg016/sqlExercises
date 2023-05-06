Create Table Marks(
ID int not null auto_increment,
Subject varchar(11) not null,
Marks int  ,
Foreign KEY(ID) REFERENCES StudentDetails(id) ON DELETE CASCADE
);

Alter table Marks
ADD COLUMN AcadamicYear Year;


#DROP TABLE MARKS;

Select FirstName,Subject,Marks,Std ,Year(Now())from
Marks Inner join StudentDETAILS on StudentDetails.id =Marks.id And Marks>90 and Year(Now())=YearOfAdmission;

Select Marks.ID from
Marks Inner join StudentDETAILS on StudentDetails.id = Marks.id And Marks>90 AND AcadamicYear = Year(Now())
INTERSECT 
Select Marks.ID from
Marks Inner join StudentDETAILS on StudentDetails.id = Marks.id And Marks>90 AND AcadamicYear = Year(Now())-1;

#Highest
Select Marks.ID ,FirstName,Sum(Marks) as Total from
Marks Inner join StudentDETAILS on StudentDetails.id = Marks.id AND AcadamicYear = Year(Now()) AND StudentDetails.Std =10 GROUP  by Marks .id order by total desc limit 1;

#Lowest
Select Marks.ID ,FirstName,Sum(Marks) as Total from
Marks Inner join StudentDETAILS on StudentDetails.id = Marks.id AND AcadamicYear = Year(Now()) AND StudentDetails.Std =10 GROUP  by Marks .id order by total asc limit 1;

SELECT Marks.ID from Marks ;

Select FirstName,Std ,Year(Now()) from StudentDETAILS where(id) in (SELECT id from marks  where Marks>90)and Year(Now())=YearOfAdmission;


DELETE FROM StudentDETAILS
WHERE FirstName ="ANEESH";

SELECT * from StudentDETAILS left join Marks on StudentDetails.id =Marks.id;
Select StudentDetails.* from StudentDETAILS left join Marks on StudentDetails.id =Marks.id where marks.marks is null;

SELECT *FROM  marks;


UPDATE Marks set AcadamicYear =2022 where id>0;

INSERT Into Marks
(id,Subject,Marks,AcadamicYear)
Values(5,"English",92,2023),
(5,"Social",91,2023),


(1,"English",80,2023),
(2,"Maths",80,2023),
(2,"Science",91,2023),

(3,"English",78,2023),
(3,"Maths",80,2023);