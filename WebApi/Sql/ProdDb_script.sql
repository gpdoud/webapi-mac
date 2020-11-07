/*
alter database test set single_user with rollback immediate;
drop database test;
*/
use master;
go
drop database if exists ProdDb;
go
create database ProdDb;
go
use ProdDb;
go
create table Users (
    Id int not null primary key identity(1,1),
    Username varchar(30) not null unique,
    Password varchar(30) not null,
    Firstname varchar(30) not null,
    Lastname varchar(30) not null,
    Phone varchar(30) null,
    Email varchar(30) null,
    IsReviewer bit not null,
    IsAdmin bit not null
);
go
create login gpdoud with password = 'il0v3cnk!';
go
create user gpdoud for login gpdoud;
go