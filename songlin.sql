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
  -- family_son_id INT,
  title VARCHAR(64),
  price DECIMAL(10,2),
  promise VARCHAR(64),
  spec VARCHAR(64),
  img1 VARCHAR(128),
  img2 VARCHAR(128),
  img3 VARCHAR(128),
  img4 VARCHAR(128),
  img5 VARCHAR(128),
  -- foreign key(family_son_id) references family_son(id),
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
  family_id INT
  -- foreign key(id) references laptop_family(id)
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
(18, '其他', 5),
(19, '厨房水槽', 6),
(20, '水槽', 6),
(21, '淋浴房', 7),
(22, '淋浴房配件', 7),
(23, '浴缸', 8),
(24, '毛巾架', 9),
(25, '角蓝', 9),
(26, '纸巾架', 9),
(27, '马桶刷', 9),
(28, '五金配件', 10),
(29, '沙发', 11),
(30, '茶几', 11),
(31, '电视柜', 11),
(32, '柜架', 11),
(33, '餐桌', 12),
(34, '餐椅', 12),
(35, '餐边柜', 12),
(36, '床', 13),
(37, '床垫', 13),
(38, '床头柜', 13),
(39, '储物柜', 13),
(40, '书桌', 14),
(41, '扶手椅', 14),
(42, '毛巾', 15),
(43, '抱枕', 15),
(44, '床品套件', 15),
(45, '柜帽架', 16),
(46, '花瓶', 17),
(47, '框画', 17),
(48, '镜子', 17),
(49, '相框', 17),
(50, '餐具', 18),
(51, '厨具', 18),
(52, '衣物挂晒', 18),
(53, '浴室用品', 18),
(54, '收纳盒', 18),
(55, '出行', 19),
(56, '其他', 19);

INSERT INTO `laptop` (`id`, `family_id`, `title`, `price`, `promise`, `spec`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 1, '厦门业主专享 原木橱柜定制美式古典预售定金', '100000.00', '快递配送，包邮', '3米地柜+3米台面', 'https://pic.solux.cn/image/2c/19/12/2726de62bc7764eeb7a7434497.jpg?1544692459#h', 'https://pic.solux.cn/image/04/2f/bc/3f47e70942395bbdd359905129.jpg?1543822599#w', 'https://pic.solux.cn/image/3e/16/07/e43a7570bed271a7046ce2ba74.jpg?1543822598#w', 'https://pic.solux.cn/image/17/6c/82/ee943f755e2bb347a4ab210276.jpg?1543822599#h', 'https://pic.solux.cn/image/3c/90/d4/65d329634c6f7acfc692816c1e.jpg?1543822602#h'),
(2, 1, '厦门业主专享 整体橱柜定制日式极简', '12880.00', '快递配送，包邮', '无', 'https://pic.solux.cn/image/a7/ac/95/d2eec515f0c229415ed4eb0eaa.jpg', 'https://pic.solux.cn/image/26/5d/69/5dc44a7bd513511f00295a1924.jpg?1543826235#w', 'https://pic.solux.cn/image/d8/a4/72/f72fd3457ce8939b1004c9d3c9.jpg?1543819023#h', 'https://pic.solux.cn/image/86/57/bf/d89af395bf8a811ae56322d9f6.jpg?1543819025#w', 'https://pic.solux.cn/image/13/61/dc/70eb371f47baf390d0564888e8.jpg?1543819028#w'),
(3, 1, '厦门业主专享 整体橱柜定制现代轻奢', '19800.00', '包邮', '无', 'https://pic.solux.cn/image/a5/42/01/a11af85c22fde0eea1ab125822.jpg?1544692056#h', 'https://pic.solux.cn/image/db/6b/be/c9a606eac798eaf337edb470b3.jpg', 'https://pic.solux.cn/image/b1/cc/d7/469068ee7761b838a809a73bc4.jpg?1543821171#w', 'https://pic.solux.cn/image/d4/5b/fb/f787c165a60a34731d375d4425.jpg?1543821171#w', 'https://pic.solux.cn/image/4f/3b/35/6e1acfa7ee5040413d0ac8e0f1.jpg?1543821172#h'),
(4, 1, '厦门业主专享 餐边柜定制港式经典', '21888.00', '包邮', '无', 'https://pic.solux.cn/image/09/6a/2d/89acd1d9091a3a93e7cc8f7e15.jpg?1544692666#h', 'https://pic.solux.cn/image/c3/c1/ee/3fece530fe4f285294342ce03d.jpg', 'https://pic.solux.cn/image/bf/c8/57/28a0647beb64dd2359a1c85faa.jpg?1543821678#w', 'https://pic.solux.cn/image/ee/87/88/b5234228fa0516a81eed8461c6.jpg?1543821677#w', 'https://pic.solux.cn/image/8f/ab/30/c77c0dd0a00eef80d732ab17d2.jpg?1543821678#h'),
(5, 1, '厦门业主专享 整体橱柜定制美式LOFT', '26800.00', '包邮', '无', 'https://pic.solux.cn/image/c0/0f/04/bd200933273a8205d16be422b9.jpg?1544692896#h', 'https://pic.solux.cn/image/49/e6/15/8ceff358fc179f3c4cdaea967e.jpg', 'https://pic.solux.cn/image/24/4c/70/c674d5904d740ddb0a8ed0d271.jpg?1543822385#w', 'https://pic.solux.cn/image/87/27/47/70368f8589d2726ee82347b889.jpg?1543822385#w', 'https://pic.solux.cn/image/8f/1f/31/e72c7404beda5fdc69ad210f9c.jpg?1543822385#h'),
(6, 1, '厦门业主专享 整体衣柜定制雅致柚木按投影面积计价', '1999.00', '包邮', '无', 'https://pic.solux.cn/image/7f/ce/10/757fcc0f0757905efaabac2cfa.jpg?1544692324#h', 'https://pic.solux.cn/image/1f/34/86/b039f8a508ed3a5499b9951787.jpg', 'https://pic.solux.cn/image/a6/24/9b/d20764481ee4fa80f7e7835d3d.jpg?1543822136#w', 'https://pic.solux.cn/image/6e/01/ea/ac0b71f3b8531a3f3b3b48ee06.jpg?1543822135#w', 'https://pic.solux.cn/image/cf/30/e4/632d354af5456063c2a3271644.jpg?1543822139#h'),
(7, 1, '厦门业主专享 整体衣柜定制法式风情按投影面积计价', '3280.00', '包邮', '无', 'https://pic.solux.cn/image/2a/2e/ee/944bae16185cfd61ab14de4ba8.jpg?1544750885#h', 'https://pic.solux.cn/image/63/3f/9d/388fc3d4b4cde50e739983b389.jpg', 'https://pic.solux.cn/image/01/54/13/1249713b115cdb6b1c620b89b8.jpg?1543821906#w', 'https://pic.solux.cn/image/b5/d0/0c/2ecf23c92b3c4cd56f3611a3bb.jpg?1543821906#w', 'https://pic.solux.cn/image/62/c1/d5/a51cebea84e8a397a34eb7f192.jpg?1543821906#h'),
(8, 1, '厦门业主专享 榻榻米定制书香有礼', '23800.00', '包邮', '无', 'https://pic.solux.cn/image/92/22/cd/ba13ede22447e63d023591d982.jpg?1544691759#h', 'https://pic.solux.cn/image/28/08/cb/181dc3c97fdbdd8da62287a5e8.jpg', 'https://pic.solux.cn/image/59/76/53/e27c87e35bd8cc0a084b1f2721.jpg?1543822801#w', 'https://pic.solux.cn/image/0d/fd/d8/99038b1a919f24e34fb61166ab.jpg?1543822800#w', 'https://pic.solux.cn/image/57/20/f3/96dccd10ea2c204110e92bd62e.jpg?1543822801#w'),
(9, 1, '厦门业主专享多功能房定制北欧主义', '31600.00', '无', '无', 'https://pic.solux.cn/image/65/05/af/2bd25b319532c432bafc5e948b.jpg?1544691327#h', 'https://pic.solux.cn/image/98/d9/e4/8444e832fb36950c3c12f0da26.jpg', 'https://pic.solux.cn/image/b5/d3/e1/b4d6835c39fa7003c96334e19f.jpg?1543816420#w', 'https://pic.solux.cn/image/3a/2a/d9/7e83651974adf363964d545e6a.jpg?1543816419#w', 'https://pic.solux.cn/image/05/cc/f8/af4b50d4ecc035d4b294555816.jpg?1543816419#h'),
(10, 1, '厦门业主专享 儿童房定制伊索寓言系列按投影面积计价', '2680.00', '无', '无', 'https://pic.solux.cn/image/83/c6/c8/5a8bfa250b079c6622685a49c5.jpg?1544691522#h', 'https://pic.solux.cn/image/0a/55/91/d2762e8eade34916ba85775ca7.jpg', 'https://pic.solux.cn/image/69/85/42/2c2be7ab43e6ff2177008d97cf.jpg?1543818140#w', 'https://pic.solux.cn/image/d5/f9/f9/5a32300b91f360160bd99b0cb8.jpg?1543818140#w', 'https://pic.solux.cn/image/54/88/fd/d1b24be1f01f7add0a7bf3f974.jpg?1543818140#h'),
(11, 1, '客厅方案L13', '5081.00', '无', '无', 'https://pic.solux.cn/image/b2/a7/f8/a7d8a814bb8086bb9579576fb5.jpg?1516612629#h', 'https://pic.solux.cn/image/3c/9f/94/d9ad546e9d50cb927df5d82d89.jpg', 'https://pic.solux.cn/image/97/52/54/72d75e5d99badbfd8f91cea522.jpg?1518157297#w', 'https://pic.solux.cn/image/94/1b/2e/89eb278bdcf19d6bc31658bd72.jpg?1518157297#h', 'https://pic.solux.cn/image/86/3f/46/e82d1c4a6c949d30e5510fc7a7.jpg?1518157297#h'),
(12, 1, '客厅方案L15', '8061.00', '无', '无', 'https://pic.solux.cn/image/a9/0b/08/0fc473bd94334712a268c5641e.jpg?1529491025#h', 'https://pic.solux.cn/image/85/62/55/5a45e00dfb83805a147a5c78a9.jpg', 'https://pic.solux.cn/image/d6/67/51/1dd8e26d6f92a4a7dc1f6f6151.jpg?1529049305#w', 'https://pic.solux.cn/image/5b/d7/f8/4e3b7494f0391c98d9bce7f8a4.jpg?1529049305#h', 'https://pic.solux.cn/image/dd/4a/ee/793c75594752059ef6aff2b94f.jpg?1529049305#h'),
(13, 1, '客厅方案L17', '11181.00', '无', '无', 'https://pic.solux.cn/image/b3/46/1c/45f7998d4e18dad022ee6d99c1.jpg?1516668562#h', 'https://pic.solux.cn/image/06/9b/47/ceaae355f9310dabc92f40085b.jpg', 'https://pic.solux.cn/image/af/6e/64/8fa9260b8d6b2a5f7e293d6442.jpg?1518157508#w', 'https://pic.solux.cn/image/01/c9/76/dcd107c074c2015bfe7d775a30.jpg?1518157508#h', 'https://pic.solux.cn/image/83/8e/ef/abc3480f0edec4a0a959805a86.jpg?1518157509#h'),
(14, 2, 'Pula普拉 浴室柜套装', '3599.00', '无', '无', 'https://pic.solux.cn/image/76/b3/08/69d966df366388783d2c9c0e6a.png?1578278404#h', 'https://pic.solux.cn/image/3d/89/19/f000d5dde85e13c27652018baf.jpg', 'https://pic.solux.cn/image/cd/d7/9b/cf1ea93d9e63dbdcd0dfb80794.jpg?1575267240#w', 'https://pic.solux.cn/image/c5/d2/2f/7fd6251c0945d01d7beda520d4.jpg?1577321070#h', 'https://pic.solux.cn/image/c0/62/73/2ed82644af41c65e1e746530d2.jpg?1577321071#h'),
(15, 2, 'Rake瑞克 挂墙浴室柜', '0.00', '无', '无', 'https://pic.solux.cn/image/cf/67/6f/4bdbd84f5a785dbc3371a95b8b.png?1578278835#h', 'https://pic.solux.cn/image/f7/fa/1e/9eaedd4a25e962afc5c8beb76f.jpg', 'https://pic.solux.cn/image/48/9f/a8/1cf2087bfd7d6a29f85fde962b.jpg?1522666304#w', 'https://pic.solux.cn/image/cd/26/6b/367ea4a52e9ca97b597b26688f.jpg?1553481534#h', 'https://pic.solux.cn/image/16/64/a7/ea1908f8c2ab9a0d094e5eb053.jpg?1553481534#h'),
(16, 2, 'Vello维洛 挂墙浴室柜', '1999.00', '无', '无', 'https://pic.solux.cn/image/46/b8/a7/fb54e9aad9bca1ab4a56e759d4.png?1526287461#h', 'https://pic.solux.cn/image/b8/79/f9/7b8afc61e93af23af8c43d1673.jpg', 'https://pic.solux.cn/image/ad/75/20/0d7be65950e9eb7c55137f0fa6.jpg?1526288377#w', 'https://pic.solux.cn/image/d2/06/d0/74b5075251069c82fcfa0e5a2f.jpg?1553482111#h', 'https://pic.solux.cn/image/55/88/93/07fe8d9f4775dc21d91162472b.jpg?1584165704#h'),
(17, 2, 'Alva阿尔瓦 浴室柜800（白）', '3799.00', '无', '无', 'https://pic.solux.cn/image/fb/02/80/1d8705d8e8d5a7a3e859d8ab57.png?1544499078#h', 'https://pic.solux.cn/image/e1/38/51/aec8cc2ed5f905590227229d52.jpg', 'https://pic.solux.cn/image/c0/df/a5/5a241d2ea50b453d6fc7e51fe0.jpg?1529542018#w', 'https://pic.solux.cn/image/b8/8b/f1/46e8221e459dfac1d4ab72bacf.jpg?1553481944#h', 'https://pic.solux.cn/image/96/fd/8f/be546984beb338485d649919c9.jpg?1553481944#h'),
(18, 2, 'Seine塞纳 浴室柜', '5999.00', '无', '无', 'https://pic.solux.cn/image/0b/ad/d3/b9f033e27562dcb8e67ab83d8e.png?1578279962#h', 'https://pic.solux.cn/image/6d/5c/ac/b9415215bc16d014e48fd67ec8.jpg', 'https://pic.solux.cn/image/a4/5c/09/c3d7529e2373ff8a84daa0ac78.jpg?1521513306#w', 'https://pic.solux.cn/image/71/18/54/1b56cbefd4bfc9b9d5c151b382.jpg?1521512286#h', 'https://pic.solux.cn/image/ee/cc/d2/ac5e1fb0485e2992105c3ae4fd.jpg?1521512286#w'),
(19, 2, 'Baird贝尔德 置物层板镜', '399.00', '无', '无', 'https://pic.solux.cn/image/8c/4f/64/21a13567faf54e21f8f66db5f3.png?1524740278#h', 'https://pic.solux.cn/image/c3/4b/63/0c9ad392c294e3fd42ece80780.jpg', 'https://pic.solux.cn/image/2b/00/6c/4e80b061ebbdc46594667b6056.jpg?1524740498#w', 'https://pic.solux.cn/image/4c/44/16/d00731db8141bff1ff898ae755.jpg?1546414090#h', 'https://pic.solux.cn/image/97/50/45/bd478471be53cea60f7084c5c8.jpg?1546414089#h'),
(20, 2, 'Wake维克 层板方镜', '549.00', '无', '无', 'https://pic.solux.cn/image/c5/3b/dc/5dbc5e880db5c10829688076ee.png?1517815548#h', 'https://pic.solux.cn/image/5d/72/67/0599f71685d27c8949bcbe7358.jpg', 'https://pic.solux.cn/image/0f/84/15/c3968153551fcf2db711e941fb.jpg?1518162670#w', 'https://pic.solux.cn/image/61/00/cc/81a1c3755ec8de0bd7a8af55a9.jpg?1526007844#h', 'https://pic.solux.cn/image/dd/e6/ee/32665db70f7e58606df89c326f.jpg?1526007844#h');