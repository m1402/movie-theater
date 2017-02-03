
CREATE TABLE usertable(
  ID VARCHAR2(20),
  PW VARCHAR2(20),
  NAME VARCHAR2(20),
  AUTH VARCHAR2(1)
);


INSERT INTO usertable VALUES ('admin', 'admin', '관리자', 'A');
INSERT INTO usertable VALUES ('test', 'test', '테스터', 'U');
INSERT INTO usertable VALUES ('qwer', 'qwer', '홍길동', 'U');

SELECT * FROM usertable;

COMMIT;
