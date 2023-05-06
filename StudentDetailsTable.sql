Select *from StudentDetails where id=1;


CREATE  Index i_id on StudentDETAILS(id);
Drop Index i_id on StudentDetails;

SELECT * from StudentDETAILS  WHERE  id=2;

Show Indexes from StudentDETAILS ;
#ALTER Table StudentDetails 
#Add Column Std int;
#Add Column Branch varchar(10);
#Change Column YearOfBirth DateOfBirth date;
#Modify YearOfBirth Year;
#ADD COLUMN YearOfAdmission Year;
UPDATE StudentDetails 
SET Branch ="NA"
WHERE Std<10;
UPDATE  StudentDetails SET YearOfAdmission  =2021 WHERE id=2;
#SET Std=CASE id
#WHEN 1 then 8
#END;
