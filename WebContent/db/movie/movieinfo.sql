create table MovieInfo (
  num  number(30),
  title  varchar2(300),
  dir	varchar2(300),
  bookp   number(30),
  imgurl  varchar2(50),
  day   date,
  fday date
);


--�󿵿�����ȭ

insert into MovieInfo (num, title, dir, day)
values (1, '���� �����', '���� ������', '20170222');

insert into MovieInfo (num, title, dir, day)
values (2, '�����', '�ø��� ����', '20170301');

insert into MovieInfo (num, title, dir, day)
values (3, '�� ť��', '��� ������Ű', '20170201');

insert into MovieInfo (num, title, dir, day)
values (4, '������Ʈ', '�踮 ��Ų��', '20170312');

insert into MovieInfo (num, title, dir, day)
values (5, '����� �ô�', '�丶�� ���ͺ�����', '20170330');



--�����ִ¿�ȭ


insert into MovieInfo
values (6,'����Ʈ', '��� ������', 41, 'contact', '20161222', '20170322');

insert into MovieInfo
values (7,'���۵� ����', '�ڱ���', 30, 'FabricatedCity', '20161231', '20170331');

insert into MovieInfo
values (8,'����', '�輺��', 25, 'kongjo', '20170101', '20170401');

insert into MovieInfo
values (9,'��Ƴ�', '�� Ŭ������', 13, 'moana', '20170201', '20170501');

insert into MovieInfo
values (10,'��Ÿ����', '���̺� �ʷδ�', 6, 'starwars', '20170205', '20170505');



drop table MovieInfo


select * from MovieInfo