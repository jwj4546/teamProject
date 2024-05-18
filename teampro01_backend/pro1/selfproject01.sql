create database kew01;
show databases;
use kew01;

drop table traffic;
drop table member;
drop table qna;
drop table data;

-- traffic table 생성
create table traffic(tno int primary key, ttype varchar(20), no varchar(10), route varchar(50), coment varchar(1000));

-- member(회원) 테이블 생성
create table member(id varchar(20), password varchar(300),
name varchar(50), email varchar(200), tel varchar(20));

-- guide table 생성
create table guide(pcode int, pname varchar(100), ptype varchar(3), paddr varchar(200), ptel varchar(20), pgps varchar(50), pcoment varchar(2000));

-- qna table 생성
create table qna(no int auto_increment primary key, plevel int, parno int, title varchar(200), content varchar(2000), resdate timestamp, visited int, aid varchar(20));

-- data table 생성
create table data(no int auto_increment primary key, title varchar(200), content varchar(2000), datafile varchar(200), resdate timestamp, visited int);

-- notice table 생성
create table notice(no int auto_increment primary key, title varchar(200), content varchar(2000), resdate timestamp, visited int auto_increment primary key); 


