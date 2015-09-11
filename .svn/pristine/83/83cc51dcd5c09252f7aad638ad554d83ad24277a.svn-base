create table tsjy
(
id int  auto_increment primary key,
type varchar(16),
name varchar(32),
phone varchar(15),
mail  varchar(128),
address varchar(128),
content varchar(512)
);
ALTER TABLE tsjy ADD INDEX keywords (id);

create table shiguwen
(
id int  auto_increment primary key,
ifToll varchar(16),
duty varchar(16),
ifHaveContro varchar(16),
accidentJudge  varchar(32),
judgeIfContro varchar(16),
accidentIfContro varchar(16),
phone varchar(15),
content varchar(512)
);
ALTER TABLE shiguwen ADD INDEX keywords (id);
//登记律师
drop table djls;
create table djls
(
id int  auto_increment primary key,
name varchar(32),
phone varchar(15),
lsname varchar(32),
province varchar(32),
city varchar(32),
country varchar(32),
date varchar(32)
);
ALTER TABLE djls ADD INDEX keywords (id);
//投诉与建议
drop table tsjy;
create table tsjy
(
id int  auto_increment primary key,
type varchar(16),
name varchar(32),
phone varchar(15),
content varchar(512),
date varchar(32)
);
ALTER TABLE tsjy ADD INDEX keywords (id);
/*所需帮助*/
drop table needhelp;
create table needhelp
(
id int  auto_increment primary key,
ntype varchar(16),
qtype varchar(16),
province varchar(32),
city varchar(32),
country varchar(32),
name varchar(32),
phone varchar(15),
content varchar(512),
mail varchar(128),
date varchar(32)
);
ALTER TABLE needhelp ADD INDEX keywords (id);
create table tjtj
(
id int  auto_increment primary key,/*序列*/
type varchar(128), /*分类*/
ttime varchar(32), /*数据提交时间*/
stime varchar(32), /*服务器处理时间*/
tstime varchar(32) /*提交到服务器处理时间*/
);
ALTER TABLE tjtj ADD INDEX keywords (id);




