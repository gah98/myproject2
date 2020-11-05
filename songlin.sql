SET NAMES UTF8;
DROP DATABASE IF EXISTS songlin;
CREATE DATABASE songlin CHARSET UTF8;
USE songlin;
/*商品家族*/
CREATE TABLE laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
/*用户表*/
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(8),
  password VARCHAR(12) NOT NULL,
  phone BIGINT NOT NULL,
  email VARCHAR(20),
  address VARCHAR(35)
);
/*商品表：单个商品*/
CREATE TABLE laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,
  title VARCHAR(64),
  price DECIMAL(10,2),
  promise VARCHAR(64),
  spec VARCHAR(64),
  foreign key(family_id) references laptop_family(fid)
);
/*商品的图片*/
CREATE TABLE laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,
  sm VARCHAR(128),
  md VARCHAR(128),
  lg VARCHAR(128),
  foreign key(laptop_id) references laptop(lid)
);
/*购物车*/
CREATE TABLE shopping_car(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  laptop_id INT,
  count INT,
  foreign key(laptop_id) references laptop(lid),
  foreign key(user_id) references user(uid)
);
/*订单表*/
CREATE TABLE orde(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  title VARCHAR(20),
  price FLOAT,
  amount INT,
  pay FLOAT,
  uname VARCHAR(8),
  phone BIGINT,
  address VARCHAR(35),
  createTime DATETIME,
  foreign key(user_id) references user(uid)
);
/*订单详情表
CREATE TABLE details(
  pro_id INT NOT NULL,
  title VARCHAR(20),
  price FLOAT,
  amount INT,
  pay FLOAT,
  foreign key(pro_id) references user(uid)
);*/