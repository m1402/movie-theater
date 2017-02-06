create table MovieInfo (
  num  number(30),
  title  varchar2(300),
  dir	varchar2(300),
  bookp   number(30),
  imgurl  varchar2(50),
  day   date,
  fday date
);


--상영예정영화

insert into MovieInfo (num, title, dir, imgurl, day)
values (1, '폴링 스노우', '샤밈 샤리프', 'fallingsnow', '20170222');

insert into MovieInfo (num, title, dir, imgurl, day)
values (2, '스노든', '올리버 스톤', 'snorden', '20170301');

insert into MovieInfo (num, title, dir, imgurl, day)
values (3, '더 큐어', '고어 버번스키', 'thecure', '20170201');

insert into MovieInfo (num, title, dir, imgurl, day)
values (4, '문라이트', '배리 젠킨스', 'moonlight', '20170312');

insert into MovieInfo (num, title, dir, imgurl, day)
values (5, '사랑의 시대', '토마스 빈터베르그', 'lovemovie', '20170330');



--현재있는영화


insert into MovieInfo
values (6,'컨택트', '드니 빌뇌브', 41, 'contact', '20161222', '20170322');

insert into MovieInfo
values (7,'조작된 도시', '박광현', 30, 'FabricatedCity', '20161231', '20170331');

insert into MovieInfo
values (8,'공조', '김성훈', 25, 'kongjo', '20170101', '20170401');

insert into MovieInfo
values (9,'모아나', '론 클레먼츠', 13, 'moana', '20170201', '20170501');

insert into MovieInfo
values (10,'스타워즈', '데이브 필로니', 6, 'starwars', '20170205', '20170505');



drop table MovieInfo


select * from MovieInfo