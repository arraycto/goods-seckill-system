CREATE TABLE goods (
  id bigint(20)  NOT NULL AUTO_INCREMENT COMMENT '商品ID',
    goods_name VARCHAR(16) DEFAULT null comment '商品名称',
    goods_title varchar(64) DEFAULT null comment '商品标题',
    goods_img varchar(64) DEFAULT null comment '商品的图片',
    goods_detail LONGTEXT COMMENT '商品的详情介绍',
    goods_price DECIMAL(10,2) DEFAULT '0.00'  COMMENT '商品单价',
    goods_stock int(11) DEFAULT '0' COMMENT '商品库存，-1表示没有限制',
    primary key (id)
)ENGINE=INNODB auto_increment=3 DEFAULT charset=utf8mb4;


INSERT INTO goods VALUES (1,'iphoneX','Apple iphone X (A1865) 64GB 银色 移动联通电信4G手机','/img/iphonex.png','Apple iphone X (A1865) 64GB 银色 移动联通电信4G手机',8765.00,10000),(2,'华为Meta9','华为Meta9 4GB+32GB版 月光银 移动联通电信4G手机 双卡双待','/img/meta9.png','华为Meta9 4GB+32GB版 月光银 移动联通电信4G手机 双卡双待',3212.00,-1);


CREATE TABLE miaosha_goods (
  id bigint(20)  NOT NULL AUTO_INCREMENT COMMENT '秒杀的商品表',
  goods_id bigint(20) DEFAULT null comment '商品id',
  miaosha_price DECIMAL(10,2) DEFAULT '0.00'  COMMENT '秒杀价',
  stock_count int(11) DEFAULT null COMMENT '库存数量',
  start_date datetime DEFAULT null COMMENT '秒杀开始时间',
  end_date datetime DEFAULT null COMMENT '秒杀结束时间',
    primary key (id)
)ENGINE=INNODB auto_increment=3 DEFAULT charset=utf8mb4;

insert into miaosha_goods values (1,1,0.01,4,'2018-11-05 15:18:00','2018-11-13 14:00:18'),(2,2,0.01,9,'2018-11-12 14:00:14','2018-11-13 14:00:24');

CREATE TABLE order_info (
  id bigint(20)  NOT NULL AUTO_INCREMENT,
    user_id bigint(20) DEFAULT null comment '用户ID',
    goods_id bigint(20) default null comment '商品ID',
    delivery_addr_id bigint(20) default null comment '收货地址ID',
    goods_name VARCHAR(16) DEFAULT null comment '冗余过来的商品名称',
    goods_count int(11) DEFAULT '0' comment '商品数量',
    goods_price DECIMAL(10,2) DEFAULT '0.00'  COMMENT '商品单价',
    order_channel tinyint(4) DEFAULT '0' comment '1pc,2android,3ios',
    status tinyint(4) DEFAULT '0' comment '订单状态，0新建未支付，1已支付，2已发货，3已收货，4已退款，5已完成',
    create_date datetime DEFAULT null comment '订单的创建时间',
    pay_date datetime DEFAULT null comment '支付时间',
    primary key (id)
)ENGINE=INNODB auto_increment=12 DEFAULT charset=utf8mb4;

CREATE TABLE miaosha_order (
  id bigint(20)  NOT NULL AUTO_INCREMENT,
    user_id bigint(20) DEFAULT null comment '用户ID',
    order_id bigint(20) default null comment '订单ID',
    goods_id bigint(20) default null comment '商品ID',
    primary key (id)
)ENGINE=INNODB auto_increment=3 DEFAULT charset=utf8mb4;


DROP TABLE IF EXISTS `miaosha_user`;
CREATE TABLE `miaosha_user` (
  `id` bigint(20) NOT NULL COMMENT '用户ID ,手机号码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `password` varchar(32) DEFAULT NULL COMMENT 'MD5(MD5(pass+固定salt) + salt)',
  `salt` varchar(10) DEFAULT NULL COMMENT '商品ID',
  `head` varchar(128) NOT NULL COMMENT '头像,云存储的ID',
  `register_date` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login_date` datetime DEFAULT NULL COMMENT '上次登录时间',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  PRIMARY KEY (`id`,`head`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;