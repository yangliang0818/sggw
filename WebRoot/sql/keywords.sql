-- phpMyAdmin SQL Dump
-- version 2.6.4-pl4
-- http://www.phpmyadmin.net
-- 
-- 主机: 58.64.138.108
-- 生成日期: 2013 年 10 月 26 日 21:56
-- 服务器版本: 5.0.95
-- PHP 版本: 5.2.6
-- 
-- 数据库: sq_shiguwen
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 keywords
-- 

CREATE TABLE keywords (
  id int(11) NOT NULL auto_increment,
  title varchar(128) default NULL,
  pagename varchar(128) default NULL,
  keyword varchar(256) default NULL,
  PRIMARY KEY  (id),
  KEY keywords (id)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- 导出表中的数据 keywords
-- 

INSERT INTO keywords VALUES (1, '首页', 'index', '交通事故');
INSERT INTO keywords VALUES (2, '专业技术在交通事故处理中的作用', 'zyjs', '交通事故');
INSERT INTO keywords VALUES (3, '司法鉴定咨询', 'sfjd', '事故鉴定');
INSERT INTO keywords VALUES (4, '专业资料分析', 'zyfx', '交通事故责任');
INSERT INTO keywords VALUES (5, '专家出庭服务', 'ctfw', '交通事故');
INSERT INTO keywords VALUES (6, '一站式理赔诉讼支持', 'sszc', '交通事故诉讼');
INSERT INTO keywords VALUES (7, '行车记录仪数据分析', 'jlyfx', '行车记录仪');
INSERT INTO keywords VALUES (12, '三维动画在事故诉讼中的价值', 'swdhjz', '交通事故视频');
INSERT INTO keywords VALUES (13, '交通事故发生后的处理方法', 'transfersgcl', '交通事故处理');
