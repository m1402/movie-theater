
create table MovieInfo (
  num  number(5),
  title  varchar2(100),
  dir	varchar2(100),
  bookp   number(3),
  day   date
);


--�󿵿�����ȭ

insert into MovieInfo (num, title, dir, day)
values (1, '���� �����', '���� ������', '20170222');

insert into MovieInfo (num, title, dir, day)
values (2, '�����', '�ø��� ����', '20170301');

insert into MovieInfo (num, title, dir, day)
value (3, '�� ť��', '��� ������Ű',  '20170201');

insert into MovieInfo (num, title, dir, day)
value (4, '������Ʈ', '�踮 ��Ų��', '20170312');

insert into MovieInfo (num, title, dir, day)
value (5, '����� �ô�', '�丶�� ���ͺ�����', '20170330');



--�����ִ¿�ȭ


insert into MovieInfo
values (1,'����Ʈ',20,'20170222');

insert into MovieInfo
values (2,'���۵� ����',30,'20170301');

insert into MovieInfo
values (3,'����',10,'20170201');

insert into MovieInfo
values (4,'��Ƴ�', 13,'20170312');

insert into MovieInfo
values (5,'��Ÿ����', 50,'20170330');







select * from MovieInfo