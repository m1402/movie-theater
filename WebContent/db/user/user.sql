drop table usertable;

CREATE TABLE usertable(
  ID VARCHAR2(20),
  PW VARCHAR2(20),
  NAME VARCHAR2(20),
  AUTH VARCHAR2(1)
);


INSERT INTO usertable VALUES ('admin', 'admin', '������', 'A');
INSERT INTO usertable VALUES ('test', 'test', '�׽���', 'U');
INSERT INTO usertable VALUES ('qwer', 'qwer', 'ȫ�浿', 'U');
INSERT INTO usertable VALUES ('sana', '1111', '����', 'U');
INSERT INTO usertable VALUES ('momo', '2222', '������', 'U');
INSERT INTO usertable VALUES ('tshuwoo', '3333', '�����', 'U');
INSERT INTO usertable VALUES ('nayeon', '4444', '����', 'U');
INSERT INTO usertable VALUES ('daehyun', '5555', '����', 'U');
INSERT INTO usertable VALUES ('cheayoung', '6666', '�ս���', 'U');
INSERT INTO usertable VALUES ('twice', '7777', '�����', 'U');
INSERT INTO usertable VALUES ('woojoo', '8888', '������', 'U');
INSERT INTO usertable VALUES ('baedae', '9999', '�񼺼���', 'U');
INSERT INTO usertable VALUES ('summer', '1212', 'summer', 'U');
INSERT INTO usertable VALUES ('exyo',   '1313',  'exyo', 'U');
INSERT INTO usertable VALUES ('black',  '1414', 'jisoo', 'U');
INSERT INTO usertable VALUES ('pink',   '1515', 'rose', 'U');
INSERT INTO usertable VALUES ('ioiWinnor', '1616',   'som', 'U');
INSERT INTO usertable VALUES ('ioiWinnor', '1717', 'limneayoung', 'U');
INSERT INTO usertable VALUES ('godSeajung', '1818', 'seajung', 'U');

SELECT * FROM usertable;

COMMIT;
