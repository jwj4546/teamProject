create database team72 default character set utf8;
use team72;
SET SQL_SAFE_UPDATES = 0;

create table member (id varchar(20) primary key not null, pw varchar(1000) not null, name varchar(10) not null, birth date not null, email varchar(50) not null, tel varchar(15) not null, addr varchar(200), postcode varchar(20));
select * from member;
desc member;
insert into member values ('admin', 'admin', 'jwj', '2024-05-19', 'jwj4546@emy.org', '010-0000-0000', '을지로1가', '20003');

create table notice ( no int primary key auto_increment, title varchar(20) not null, content varchar(1000) not null, resdate datetime default current_timestamp, visited int default 0);
select * from notice;

create table qna ( no int primary key auto_increment, plevel varchar(20) not null, parno int, title varchar(20) not null, content varchar(1000) not null, resdate datetime default current_timestamp, visited int default 0, aid varchar(20), foreign key(aid) references member(id));
select * from qna;
drop table qna;

create table traffic(tno int primary key auto_increment, ttype varchar(20) not null, no varchar(100), route varchar(1000), coment varchar(500), uri varchar(100));
drop table traffic;
select * from traffic;

insert into traffic values (default, '버스', '03', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 주요경유지 : (순환)강화터미널~세광아파트~선원초등학교~불은면사무소~온수리~전등사~장흥리입구~함허동천~정수사입구~흥왕리~화도터미널~건평항~외포항~인산저수지~농업기술센터~세광아파트~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22003?c=11.00,0,0,0,dh');
insert into traffic values (default, '버스', '04', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 주요경유지 : (순환) 강화터미널~세광아파트~농업기술센터~인산저수지~외포터미널~건평항~화도터미널~흥왕리~동막해변~정수사입구~함허동천~장흥리입구~전등사~온수리~불은면~선원초등학교~세광아파트~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22004?c=11.00,0,0,0,dh');
insert into traffic values (default, '버스', '09', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 9번 버스 : 개편 전 4회 → 개편 후 4회 (변동없음) ○ 주요경유지 : 강화터미널~강화중학교~옥림슈퍼~강화산단입구~풍산특수금속~옥림슈퍼~강화중학교~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/11000399?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '10', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 10번 버스 : 개편 전 11회 → 개편 후 11회 (변동없음) ○ 주요경유지 : 강화터미널~축협~강화경찰서~강화중학교~장승마을~강화산단~월곳리~대산리(회차)~월곳리~강화산단~장승마을~강화중학교~강화군청~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22005?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '10A', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 10A번 버스 : 개편 전 2회 → 개편 후 2회 (변동없음) ○ 주요경유지 : 강화터미널~강화경찰서~강화중학교~장승마을~강화산단~월곳삼거리~돌머루~월곳삼거리~강화경찰서~중앙시장~여고입구~강화서문(회차)~강화군청~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/21298?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '11', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 11번 버스 : 개편 전 10회 → 개편 후 9회 (총1회 감회) ○ 주요경유지 : 강화터미널~강화문화원~수협~설호아파트~용정리마을회관~용구물입구~용정리마을회관~설호아파트~강화병원~축협~강화문화원~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22006?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '11A', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 11A번 버스 : 개편 전 3회 → 개편 후 3회 (총1회 증회) ○ 주요경유지 : 강화터미널~강화문화원~수협~설호아파트~용정리마을회관~용구물입구~용정리마을회관~설호아파트~중앙시장~여고입구~강화서문(회차)~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/21299?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '12', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 12번 버스 : 개편 전 6회 → 개편 후 5회 (총1회 감회) ○ 주요경유지 : 강화터미널~세광아파트~선원초등학교~선원면사무소~선우너사~더리미미술관~더리미경로당~더리미장어마을~갑곶돈대~청소년수련관~강화병원~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22007?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '12A', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 12A번 버스 : 개편 전 1회 → 개편 후 1회 (변동없음) ○ 주요경유지 : 강화터미널~세광아파트~선원면사무소~더리미경로당~청소년수련관~강화병원~강화군청~여고입구~강화서문(회차)~여고입구~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/21301?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '13', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 13번 버스 : 개편 전 4회 → 개편 후 5회 (총1회 증회) ○ 주요경유지 : 강화터미널~강화병원~현대아파트~갑곳돈대입구~더리미경로당~선원사~선원면사무소~선원초교~세광아파트~강화문화원~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22008?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '14', '	○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 14번 버스 : 개편 전 7회 → 개편 후 7회 (변동없음) ○ 주요경유지 : 강화터미널~축협~강화고등학교~국화저수지~청련사~황련사~충렬사~명진부페~보건소~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22009?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '15', '	○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 15번 버스 : 개편 전 2회 → 개편 후 2회 (변동없음) ○ 주요경유지 : 강화터미널~보건소~명진부페~충렬사~황련사~청련사~국화저수지~강화고등학교~수협~터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22010?c=13.00,0,0,0,dh');
insert into traffic values (default, '버스', '16', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 16-1번,16-2번 → 16번으로 통합하였으며, 총5회 운행 ○ 주요경유지 : 강화터미널~창리~송림빌라~고시기(가재골)~환경공단강화사업소~더리미경로당~환경공단강화사업소~고시기(가재골)~송림빌라~강화문화원~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/2806484?c=14.00,0,0,0,dh');
insert into traffic values (default, '버스', '17', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 17번 버스 : 개편 전 7회 → 개편 후 7회 (변동없음) ○ 주요경유지 : 강화터미널~세광아파트~군인아파트~선원면사무소~연리 입구~금월리종점~연리 입구~선원면사무소~군인아파트~세광아파트~강화문화원~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22012?c=12.00,0,0,0,dh');
insert into traffic values (default, '버스', '18', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 18번 버스 : 개편 전 11회 → 개편 후 11회 (변동없음) ○ 주요경유지 : 강화터미널~신봉리~인화리~봉소리~대룡리~상용리(월선포)~대룡리~봉소리~인화리~신봉리~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/21180?c=11.00,0,0,0,dh');
insert into traffic values (default, '버스', '19', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 19번 버스 : 개편 전 1회 → 개편 후 1회 (변동없음) ○ 주요경유지 : 강화터미널~강화병원~강화여자중학교~구 보건소~강화문화원~강화군청~여고입구~강화고등학교~여고입구~강화군청~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/2806485?c=11.00,0,0,0,dh');
insert into traffic values (default, '버스', '20', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 20번 버스 : 개편 전 8회 → 개편 후 8회 (변동없음) ○ 주요경유지 : 강화터미널~축협~강화서문~송해면사무소~숭뢰2리-우뢰촌~호박골삼거리~홍의삼거리~부근삼거리~파라다이스공원~송해삼거리~고인돌체육관~강화서문~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22013?c=12.00,0,0,0,dh');
insert into traffic values (default, '버스', '21', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 21번 버스 : 개편 전 6회 → 개편 후 6회 (변동없음) ○ 주요경유지 : 강화터미널~축협~강화서문~고인돌체육관~파라다이스공원~부근삼거리~홍의삼거리~호박골사거리~숭뢰2리~송해면사무소~강화서문~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22014?c=12.00,0,0,0,dh');
insert into traffic values (default, '버스', '22', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 22번 버스 : 개편 전 3회 → 개편 후 3회 (변동없음) ○ 주요경유지 : 강화터미널~축협~강화중학교~대월초등학교~송해면사무소~홍의삼거리~양오저수지~부대아래~양오저수지~홍의삼거리~송해면사무소~대월초등학교~강화중학교~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/21076?c=12.00,0,0,0,dh');
insert into traffic values (default, '버스', '23', '○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 23번 버스 : 개편 전 2회 → 개편 후 2회 (변동없음) ○ 주요경유지 : 강화터미널~축협~강화서문~송해파출소~부근삼거리~강화역사박물관~장정2리 마을회관~양오1리 마을회관~양오리(모름말)~양오1리 마을회관~장정2리 마을회관~강화역사박물관~부근삼거리~송해파출소~강화서문~수협~강화터미널', '좋은 버스', 'https://map.naver.com/p/bus/bus-route/%EA%B0%95%ED%99%94/bus-route/22016?c=12.00,0,0,0,dh');

commit;