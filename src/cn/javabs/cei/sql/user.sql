create database cei;
use cei;
create  table users (
id int primary key auto_increment,
username varchar(255) not null unique ,
password varchar(255) not null,
phone varchar(255) not null,
Email varchar(255) not null,
);
INSERT INTO users(username,password,phone,email) values ('admin','123456','13888888888','1234567@qq.com') ;