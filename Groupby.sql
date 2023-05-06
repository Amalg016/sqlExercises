#select age,COUNT(*) from students 
#group by (age)

Select YEAR(DateOfBirth),COUNT(*) as Count  from StudentDetails  
group by Year(DateOfBirth)

SELECT YearOfAdmission ,COUNT(*)as NoOfStudents from StudentDetails 
group by YearOfAdmission;

SELECT YearOfAdmission,COUNT(*) as NoOfStudents,gender from StudentDetails 
group by YearOfAdmission,gender;


SELECT COUNT(*)as FirstNameCount 
FROM StudentDetails  
WHERE FirstName IN (SELECT FirstName 
            FROM StudentDetails
            group by FirstName having COUNT(*) >1);

 SELECT COUNT(*) as LastNameCount
FROM StudentDetails  
WHERE (LastName) IN (SELECT LastName 
            FROM StudentDetails
            group by LastName having COUNT(*) >1);          
           
SELECT COUNT(*) as SameNameCount
FROM StudentDetails  
WHERE (FirstName,LastName) IN (SELECT FirstName,LastName 
            FROM StudentDetails
            group by FirstName,LastName having COUNT(*) >1);
           
           
SELECT max(YearOfAdmission),min(YearOfAdmission)
From StudentDetails ;


SELECT * FROM StudentDetails order by DateOfBirth ASC LIMIT 10;


#WHERE (YearOfAdmission) In (SELECT max(YearOfAdmission)
#From StudentDetails);
