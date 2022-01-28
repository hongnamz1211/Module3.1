create database quanlybanhang;
use quanlybanhang;

create table customer(
	cId int not null primary key auto_increment,
    cName varchar(50) not null,
    cAge varchar(2) not null check (cAge between 5 and 90)
    );
    
ALTER TABLE `quanlybanhang`.`customer` 
CHANGE COLUMN `cAge` `cAge` INT NOT NULL check (cAge between 5 and 90);

create table myOrder(
	oId int not null primary key auto_increment,
    cId int not null,
    oDate Datetime not null,
    oTotalPrice int not null,
    foreign key (cId) references customer(cId));
    
create table product(
	pId int not null primary key auto_increment,
    pName varchar(50) not null,
    pPrice int not null);
    
create table orderDetail(
	oId int not null,
    pId int not null,
    odQTY varchar(50) not null,
    unique(oId, pId),
    foreign key (oId) references myOrder(oId),
    foreign key (pId) references product(pId)
    );