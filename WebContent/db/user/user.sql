
CREATE TABLE usertable(
  ID VARCHAR2(20),
  PW VARCHAR2(20),
  NAME VARCHAR2(20),
  AUTH VARCHAR2(1)
);


INSERT INTO usertable VALUES ('admin', 'admin', '������', 'A');
INSERT INTO usertable VALUES ('test', 'test', '�׽���', 'U');
INSERT INTO usertable VALUES ('qwer', 'qwer', 'ȫ�浿', 'U');

SELECT * FROM usertable;

COMMIT;
