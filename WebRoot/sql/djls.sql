-- phpMyAdmin SQL Dump
-- version 2.6.4-pl4
-- http://www.phpmyadmin.net
-- 
-- 主机: 58.64.138.108
-- 生成日期: 2013 年 10 月 26 日 21:49
-- 服务器版本: 5.0.95
-- PHP 版本: 5.2.6
-- 
-- 数据库: sq_shiguwen
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 djls
-- 

CREATE TABLE djls (
  id int(11) NOT NULL auto_increment,
  name varchar(32) default NULL,
  phone varchar(15) default NULL,
  lsname varchar(32) default NULL,
  province varchar(32) default NULL,
  city varchar(32) default NULL,
  country varchar(32) default NULL,
  date varchar(32) default NULL,
  PRIMARY KEY  (id),
  KEY keywords (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 djls
-- 

