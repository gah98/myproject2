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

/*二级分类表*/
CREATE TABLE family_son(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  family_id INT,
  foreign key(id) references laptop_family(id)
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
(null,"休闲沙发椅","3699.00","http://127.0.0.1:3000/img/index_sofa2.png"),
(null,"全棉毛巾","49.00","http://127.0.0.1:3000/img/index_maojin.png"),
(null,"恒温浴缸淋浴器","2399.00","http://127.0.0.1:3000/img/index_linyu.png"),
(null,"面盆龙头系列","659.00","http://127.0.0.1:3000/img/index_tape1.png"),
(null,"面盆龙头系列","1399.00","http://127.0.0.1:3000/img/index_tape2.png"),
(null,"新现代04","18988.00","http://127.0.0.1:3000/img/index_chugui1.jpg"),
(null,"新现代05","2698.00","http://127.0.0.1:3000/img/index_chugui2.jpg"),
(null,"新现代06","17926.00","http://127.0.0.1:3000/img/index_chugui3.jpg"),
(null,"新现代07","22307.00","http://127.0.0.1:3000/img/index_chugui4.jpg"),
(null,"新现代08","19535.00","http://127.0.0.1:3000/img/index_chugui5.jpg"),
(null,"智能坐便器","6499.00","http://127.0.0.1:3000/img/index_zuobianqi.png"),
(null,"智能坐便器2","6489.00","http://127.0.0.1:3000/img/index_zuobianqi2.jpg"),
(null,"厨房龙头","1599.00","http://127.0.0.1:3000/img/index_longt1.png"),
(null,"下出水功能淋浴器","1599.00","http://127.0.0.1:3000/img/index_longt2.png"),
(null,"浴室柜","5999.00","http://127.0.0.1:3000/img/index_longt3.png"),
(null,"家居","19535.00","http://127.0.0.1:3000/img/index_jiaju1.jpg"),
(null,"皮沙发","6699.00","http://127.0.0.1:3000/img/index_jiaju2.png"),
(null,"椅系列","2099.00","http://127.0.0.1:3000/img/index_jiaju3.png"),
(null,"餐桌","2999.00","http://127.0.0.1:3000/img/index_jiaju4.png"),
(null,"实木床","4599.00","http://127.0.0.1:3000/img/index_jiaju5.png"),
(null,"家居饰品","000.00","http://127.0.0.1:3000/img/index_shipin1.jpg"),
(null,"艺术手绘油画","586.00","http://127.0.0.1:3000/img/index_shipin2.png"),
(null,"长棉绒四件套","1199.00","http://127.0.0.1:3000/img/index_shipin3.png"),
(null,"雪尼尔提花抱枕","113.00","http://127.0.0.1:3000/img/index_shipin4.png"),
(null,"银边玻璃花瓶","199.00","http://127.0.0.1:3000/img/index_shipin5.png");

INSERT INTO `laptop_family` (`id`, `fname`) VALUES
(1, '全屋订制'),
(2, '浴室柜'),
(3, '马桶'),
(4, '淋浴花洒'),
(5, '厨卫龙头'),
(6, '厨房水槽'),
(7, '淋浴房'),
(8, '浴缸'),
(9, '浴室挂件'),
(10, '五金配件'),
(11, '客厅'),
(12, '餐厅'),
(13, '卧室'),
(14, '书房'),
(15, '家纺'),
(16, '柜架'),
(17, '装饰'),
(18, '收纳置物'),
(19, '其他');

INSERT INTO `family_son` (`id`, `title`, `family_id`) VALUES
(1, '橱柜', 1),
(2, '衣柜', 1),
(3, '榻榻米', 1),
(4, '儿童房', 1),
(5, '电视墙', 1),
(6, '其他订制柜', 1),
(7, '现代浴室柜', 2),
(8, '原木浴室柜', 2),
(9, '浴室镜', 2),
(10, '智能马桶', 3),
(11, '机械马桶', 3),
(12, '机械淋浴器', 4),
(13, '恒温淋浴器', 4),
(14, '花洒配件', 4),
(15, '面盆龙头', 5),
(16, '浴缸龙头', 5),
(17, '厨房龙头', 5),
(18, '其他', 5);