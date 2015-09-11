-- phpMyAdmin SQL Dump
-- version 2.6.4-pl4
-- http://www.phpmyadmin.net
-- 
-- 主机: 58.64.138.108
-- 生成日期: 2013 年 10 月 26 日 21:57
-- 服务器版本: 5.0.95
-- PHP 版本: 5.2.6
-- 
-- 数据库: sq_shiguwen
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 needhelp
-- 

CREATE TABLE needhelp (
  id int(11) NOT NULL auto_increment,
  ntype varchar(16) default NULL,
  qtype varchar(16) default NULL,
  province varchar(32) default NULL,
  city varchar(32) default NULL,
  country varchar(32) default NULL,
  name varchar(32) default NULL,
  phone varchar(15) default NULL,
  content varchar(512) default NULL,
  mail varchar(128) default NULL,
  date varchar(32) default NULL,
  PRIMARY KEY  (id),
  KEY keywords (id)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- 
-- 导出表中的数据 needhelp
-- 

INSERT INTO needhelp VALUES (17, '问题咨询', '医疗事故', '山东省', '荷泽市', '巨野县', '刘金', '18253086852', '患者上感输克林霉素2天后【药品无过期，无超量】出现血尿经县级医院治疗诊断后为药物性肾炎【无原发性肾病】经治疗后康复出院。为此原医疗机构有过错吗是医疗事故吗', '', '2013-09-04 14:46:13');
INSERT INTO needhelp VALUES (18, '问题咨询', '交通事故', '湖南省', '株洲市', '荷塘区', '李林', '15886378869', '对方全责，可获多少赔偿。我们在就住的医院做的伤情鉴定报告对方可以不认吗？伤两人各住院16天，其中一人还要休两个月，这是司法鉴定结果。', '', '2013-09-13 07:05:25');
INSERT INTO needhelp VALUES (19, '问题咨询', '交通事故', '', '', '', '吴', '18171773733', '电动车骑车人醉酒撞上停在路边的货车尾部', '', '2013-09-20 19:04:42');
INSERT INTO needhelp VALUES (20, '事故鉴定', '交通事故', '江苏省', '苏州市', '相城区', '孟祥燕', '15250458385', '左脚面粉碎性骨折', '', '2013-09-20 22:31:47');
INSERT INTO needhelp VALUES (21, '问题咨询', '交通事故', '浙江省', '温州市', '永嘉县', '章晓龙', '13806833851', '你好，因交通事故，在修车时间，因车在修对方是不是付你出租车的费。', '498474177@qq。com', '2013-09-21 00:25:51');
INSERT INTO needhelp VALUES (22, '问题咨询', '交通事故', '', '', '', '邓庆臣', '13848602540', '被摩托车撞了没有现场怎么办？', '', '2013-09-21 16:58:31');
INSERT INTO needhelp VALUES (24, '事故鉴定', '其他事故', '福建省', '宁德市', '柘荣县', '陈龙刚', '15159358652', '右手无名指末节断裂', '', '2013-09-22 18:46:27');
INSERT INTO needhelp VALUES (27, '事故鉴定', '交通事故', '湖北省', '武汉市', '蔡甸区', '黄刚', '13871230957', '交通事故致人死亡', '', '2013-10-24 14:03:30');
INSERT INTO needhelp VALUES (28, '问题咨询', '交通事故', '山东省', '淄博市', '张店区', '贾思瑞', '13864435201', '晚上开车过路口，我是由西向东绿灯直行，与由北向南方向两轮摩托相撞。对方是闯红灯，没有牌照。路口没有监控。对方有一人受了点轻伤，在医院检查没事。就走了。医药费我付的。对方司机当场跑了。我去交警队处理。找不到对方人怎么办？交警让我做车灯和刹车鉴定，是交警指定的地方，发现鉴定费很贵两项要一千块，需要么？当时把我车扣了，怎样才能拿到车？如果交警作出我没有责任的认定，我只有交强险保险公司能给报么？', '', '2013-10-25 13:22:16');
