SET NAMES UTF8;
DROP DATABASE IF EXISTS huawei;
CREATE DATABASE huawei CHARSET=UTF8;
USE huawei;
#轮播图
CREATE TABLE hw_carouse_item(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(128),
	url VARCHAR(128),
	title VARCHAR(128)
);
INSERT INTO hw_carouse_item VALUES
(NULL,'imges/carouse/01.png','/car_m1.html',''),
(NULL,'imges/carouse/02.png','/car_m2.html',''),
(NULL,'imges/carouse/03.png','/car_m3.html',''),
(NULL,'imges/carouse/04.png','/car_m4.html',''),
(NULL,'imges/carouse/05.png','/car_m5.html',''),
(NULL,'imges/carouse/06.png','/car_m6.html',''),
(NULL,'imges/carouse/07.png','/car_m7.html','');
#主页商品列表
CREATE TABLE hw_index_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	lid INT,#分组
	img VARCHAR(128),
	title VARCHAR(32),
	info VARCHAR(128),
	price DECIMAL(10,2)
);
  #主-f1楼
INSERT INTO hw_index_product VALUES
(NULL,1,'imges/index_img/','荣耀畅玩8c','两天一冲 购新机想多重权益','1099'),
(NULL,1,'imges/index_img/','HUAWEI P20','享6期免息 限量好礼','3388'),
(NULL,1,'imges/index_img/','荣耀10','最高优惠400 赠豪华礼包 ','2299'),
(NULL,1,'imges/index_img/','HUAWEI P20 Pro','享6期免息 限量好礼','4988'),
(NULL,1,'imges/index_img/','荣耀V10','限时最高优惠1000元 ','2099'),
(NULL,1,'imges/index_img/','华为畅享9 Plus','128GB版开售 赠自拍杆','1699'),
(NULL,1,'imges/index_img/','荣耀8X Max','骁龙660版开售 7.12英寸珍珠屏','1499'),
(NULL,1,'imges/index_img/','华为畅享 MAX','64GB版开售 赠自拍杆','1699');

  #主-f2楼
(NULL,2,'imges/','HUAWEI nova 3','限时直降200+6期免息 ',2599),
(NULL,2,'imges/','荣耀Play','最高优惠300元 赠豪华礼包  ',1799),
(NULL,2,'imges/','华为畅享8','领券立减+赠配件好礼  ',1299),
(NULL,2,'imges/','荣耀9青春版','尊享版降600 加赠手环+数据线',999),
(NULL,2,'imges/','华为畅享8 Plus','领券享优惠+赠好礼 ',1699),
(NULL,2,'imges/','HUAWEI 麦芒7','限量赠豪华配件礼包 ',2399),
(NULL,2,'imges/','荣耀畅玩7X','标配最高优惠300 ',1099),
  #主-f3楼
(NULL,3,'imges/','荣耀MagicBook','购机享6期免息 ',4999),
(NULL,3,'imges/','HUAWEI MateBook X','限时直降1300元 ',8699),
(NULL,3,'imges/','HUAWEI MateBook E','最高直降700元 ',4288),
(NULL,3,'imges/','荣耀MagicBook 锐龙版','高性能金属轻薄本',3999),
(NULL,3,'imges/','HUAWEI MateBook D（2018版）','赠双肩包 ',6288),
(NULL,3,'imges/','荣耀MagicBook 星云紫','高颜值时尚轻薄本',4999),
(NULL,3,'imges/','HUAWEI MateBook X Pro','享6期免息 ',8688);
  #主-f4楼
(NULL,4,'imges','华为平板 M5 青春版','订金9元抵159元',1899),
(NULL,4,'imges','荣耀Waterplay 8英寸','赠保护套',2199),
(NULL,4,'imges','华为平板 M5 10.8英寸','订金9元抵89元 ',1299),
(NULL,4,'imges','华为畅享平板','订金9元抵159元',1899),
(NULL,4,'imges','荣耀Waterplay','防水影音平板 ',1699),
(NULL,4,'imges','华为平板 M5 8.4英寸','赠保护套 ',1799),
(NULL,4,'imges','荣耀畅玩平板2 9.6英寸','护眼滤蓝光高清大屏 ',1299),
(NULL,4,'imges','荣耀畅玩平板2 8英寸','大电池长续航 ',1099),
(NULL,4,'imges','华为平板 M5 Pro','赠平板支架',3388),
(NULL,4,'imges','华为平板 M3 青春版 10.1英寸','哈曼卡顿品质立体声,1699),
(NULL,4,'imges','华为平板M3 青春版 8英寸','增强护眼功能 ',1399),
(NULL,4,'imges','华为平板 M5 Pro','赠平板支架',3388),

#用户表
CREATE TABLE hw_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(11),
	avatar VARCHAR(128),
	user_name VARCHAR(32),
	gender INT
);
INSERT INTO hw_user VALUES
(NULL,'dingding','123456','ding@qq.com','18893308888','imges/user_avatar/default.png','王鼎','1'),
(NULL,'dandan','123456','dan@qq.com','18888888888','imges/user_avatar/default.png','张丹','0'),
(NULL,'yuanyuan','123456','yaun@qq.com','19993308888','imges/user_avatar/default.png','李媛','0'),
(NULL,'xiaozhao','123456','xiao@qq.com','18893308999','imges/user_avatar/default.png','赵博','1');