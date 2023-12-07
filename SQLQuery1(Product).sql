CREATE DATABASE OurExercise_Db
ON PRIMARY
(name='OurExercise_Db', FileName='C:\SQLExercises\OurExercise_Db.mdf',
size=24MB,Maxsize=48MB, filegrowth=8MB)
LOG on
(name='OurExercise_Db_log', FileName='C:\SQLExercises\OurExercise_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExercise_Db
create table Product
(PId int identity(50,1) primary key,
PName nvarchar(50) not null,
PPrice int check (PPrice >= 50 and PPrice <= 100000),
PCompany nvarchar(50),
PQty int default 1 check (PQty >= 1))
 

insert into Product(PName,PPrice,PCompany) values('Nokia 15',800.50,'Nokia')
insert into Product  values('Samsung Galaxy S2', 999.99, 'Samsung', 10)
insert into Product values ('iPhone 13', 1099.99, 'Apple', 8)
insert into Product values('Redmi Note 10', 299.99, 'Redmi', 15)
insert into Product values('HTC U12+', 699.99, 'HTC', 5)
insert into Product(PName,PPrice,PCompany,PQty) values('Samsung Galaxy Watch', 919.99, 'Samsung', 20)

select * from Product


 