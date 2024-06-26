create database teamproject default character set utf8;
use teamproject;


create table member (id varchar(20) primary key not null, pw varchar(1000) not null, name varchar(10) not null, birth date not null, email varchar(50) not null, tel varchar(15) not null, addr varchar(200), postcode varchar(20));
select * from member;
desc member;
insert into member values ('admin', 'admin', 'jwj', '2024-05-19', 'jwj4546@emy.org', '010-0000-0000', '을지로1가', '20003');

create table notice ( no int primary key auto_increment, title varchar(20) not null, content varchar(1000) not null, resdate datetime default current_timestamp, visited int default 0);
select * from notice;

create table qna ( no int primary key auto_increment, plevel varchar(20) not null, parno int, title varchar(20) not null, content varchar(1000) not null, resdate datetime default current_timestamp, visited int default 0, aid varchar(20), foreign key(aid) references member(id));
select * from qna;
drop table qna;

commit;

