CREATE TABLE StudentDetails
(
id int not null unique,
FirstName varchar(100) not null,
LastName varchar(100) not null,
gender enum("M","F","O"),
email varchar(150) not null unique,
YearOfBirth YEAR not null
)

ALTER Table StudentDetails 
Change id id int not null Primary key;