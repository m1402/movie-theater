
create table MovieInfo (
  num  number(5),
  title  varchar2(100),
  dir	varchar2(100),
  bookp   number(3),
  day   date
);


--상영예정영화

insert into MovieInfo (num, title, dir, day)
values (1, '폴링 스노우', '샤밈 샤리프', '20170222');

insert into MovieInfo (num, title, dir, day)
values (2, '스노든', '올리버 스톤', '20170301');

insert into MovieInfo (num, title, dir, day)
value (3, '더 큐어', '고어 버번스키',  '20170201');

insert into MovieInfo (num, title, dir, day)
value (4, '문라이트', '배리 젠킨스', '20170312');

insert into MovieInfo (num, title, dir, day)
value (5, '사랑의 시대', '토마스 빈터베르그', '20170330');



--현재있는영화


insert into MovieInfo
values (1,'컨택트',20,'20170222');

insert into MovieInfo
values (2,'조작된 도시',30,'20170301');

insert into MovieInfo
values (3,'공조',10,'20170201');

insert into MovieInfo
values (4,'모아나', 13,'20170312');

insert into MovieInfo
values (5,'스타워즈', 50,'20170330');







select * from MovieInfo