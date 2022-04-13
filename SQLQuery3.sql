create database Cinema

use Cinema

create table Aktor(
Id int Primary key Identity,
Name nvarchar(20),
Surname nvarchar(29),
Age tinyint
)

insert into Aktor
values('Abbas','Qehremanov',80)

create table Filim(
Id int primary key Identity,
Name nvarchar(70)
)

insert into Filim
values('Memmedxan')

create table AktorFilim(
Id int Primary key Identity,
AktorId int foreign key references Aktor(Id),
FilimId int foreign key references Filim(Id)
)




create table Genre(
Id int Primary key Identity,
FilimId int foreign key references Filim(Id)
)

create table Seans(
Id int Primary key Identity,
SeansTime time
)

create table FilimSeans(
Id int Primary key Identity,
SeansId int foreign key references Seans(Id),
FilimId int foreign key references Filim(Id)
)


Create table CinemaHall(
Id int Primary key Identity,
)

create table FilimCinemaHall(
Id int Primary key Identity,
Filim int foreign key references Filim(Id),
CinemaHall int foreign key references CinemaHall
)


create table Customers(
Id int Primary key Identity,
Name nvarchar(69),
Surname nvarchar(70),
CinemaHall int foreign key references CinemaHall
)


create table Ticket(
Id int Primary key Identity,
Coust int,
Countt int,
FilimId int foreign key references Filim(Id),
Customers int foreign key references Customers(Id),
CinemaHall int foreign key references CinemaHall
)





