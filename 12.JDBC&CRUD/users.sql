CREATE DATABASE `bai12`;

USE `bai12`;

CREATE TABLE users(
id int NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL,
email varchar(50) NOT NULL,
country varchar(50),
PRIMARY KEY (id)
);

INSERT INTO users(`name`,`email`,`country`)
VALUE ('Minh','minh@codegym.vn','Viet Nam'),
('Kante','kante@che.uk','Kenia');