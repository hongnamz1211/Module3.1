CREATE SCHEMA `quanlysinhvien` ;
use quanlysinhvien;

create table class(
	classId int not null primary key auto_increment,
    className varchar(60) not null,
    startDate Datetime not null,
    status bit);

create table student(
	studentId int not null primary key auto_increment,
    studentName varchar(30) not null,
    address varchar(50),
    phone varchar(20),
    status bit,
    classId int not null);
    
create table subject(
	subId int not null primary key auto_increment,
    subName varchar(30) not null,
    credit Tinyint not null default 1 check (credit >= 1),
    status bit default 1);
    
create table mark (
	markId int not null auto_increment primary key,
    subId int not null,
    studentId int not null,
    mark float default 0 check (mark between 0 and 100),
    examTimes tinyint default 1,
    unique (subId, studentId),
    foreign key (subId) references subject (subId),
    foreign key (studentId) references student (studentId));
    