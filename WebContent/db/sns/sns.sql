drop table mvcsnsboard;

create table mvcsnsboard (
   bunho        number(5) 
         constraints  mvc_bunho_pk  primary key,
   snsjemok     varchar2(30),
   snswriter    varchar2(30),
   snscontent   varchar2(200),
   basebun      number(5),
   daetbun      number(5),
   daetdaetbun  number(5)
);

create sequence mvcsnsboard_sequence1;

insert into MVCSNSBOARD
values (mvcsnsboard_sequence1.NEXTVAL,'snsjemok','writer','snsNaeyong',mvcsnsboard_sequence1.CURRVAL,0,0);


insert into MVCSNSBOARD
values (mvcsnsboard_sequence1.NEXTVAL,'Olympic','medalman','first!!!',mvcsnsboard_sequence1.CURRVAL,0,0);

select * from MVCSNSBOARD;

delete * from MVCSNSBOARD;

