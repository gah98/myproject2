SET NAMES UTF8;
DROP DATABASE IF EXISTS songlin;
CREATE DATABASE songlin CHARSET UTF8;
USE songlin;
/*商品家族*/
CREATE TABLE laptop_family(
  id INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
/*用户表*/
CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(8),
  password VARCHAR(12) NOT NULL,
  phone BIGINT NOT NULL,
  email VARCHAR(20),
  address VARCHAR(35)
);
/*商品表：单个商品*/
CREATE TABLE laptop(
  id INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,
  title VARCHAR(64),
  price DECIMAL(10,2),
  promise VARCHAR(64),
  spec VARCHAR(64),
  foreign key(family_id) references laptop_family(id)
);
/*商品的图片*/
CREATE TABLE laptop_pic(
  id INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,
  sm VARCHAR(128),
  md VARCHAR(128),
  lg VARCHAR(128),
  foreign key(laptop_id) references laptop(id)
);
/*购物车*/
CREATE TABLE shopping_car(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  laptop_id INT,
  count INT,
  foreign key(laptop_id) references laptop(id),
  foreign key(user_id) references user(id)
);
/*订单表*/
CREATE TABLE orde(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  title VARCHAR(20),
  price FLOAT,
  amount INT,
  pay FLOAT,
  uname VARCHAR(8),
  phone BIGINT,
  address VARCHAR(35),
  createTime DATETIME,
  foreign key(user_id) references user(id)
);

CREATE TABLE index_laptop(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  price DECIMAL(10,2),
  image VARCHAR(64)
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

insert into index_laptop values
(null,"组合沙发","2698.00","http://127.0.0.1:3000/img/index_sofa.png"),
(null,"休闲沙发椅","2698.00","http://127.0.0.1:3000/img/index_sofa2.png"),
(null,"全棉毛巾","2698.00","http://127.0.0.1:3000/img/index_maojin.png"),
(null,"恒温浴缸淋浴器","2698.00","http://127.0.0.1:3000/img/index_linyu.png"),
(null,"面盆龙头系列","2698.00","http://127.0.0.1:3000/img/index_tape1.png"),
(null,"面盆龙头系列","2698.00","http://127.0.0.1:3000/img/index_tape2.png");