drop table usertable;

CREATE TABLE usertable(
  ID VARCHAR2(20),
  PW VARCHAR2(20),
  NAME VARCHAR2(20),
  AUTH VARCHAR2(1)
);


INSERT INTO usertable VALUES ('admin', 'admin', '관리자', 'A');
INSERT INTO usertable VALUES ('test', 'test', '테스터', 'U');
INSERT INTO usertable VALUES ('qwer', 'qwer', '홍길동', 'U');
INSERT INTO usertable VALUES ('sana', '1111', '김길수', 'U');
INSERT INTO usertable VALUES ('momo', '2222', '박지원', 'U');
INSERT INTO usertable VALUES ('tshuwoo', '3333', '사미정', 'U');
INSERT INTO usertable VALUES ('nayeon', '4444', '동굴', 'U');
INSERT INTO usertable VALUES ('daehyun', '5555', '바위', 'U');
INSERT INTO usertable VALUES ('cheayoung', '6666', '롱스톤', 'U');
INSERT INTO usertable VALUES ('twice', '7777', '비수기', 'U');
INSERT INTO usertable VALUES ('woojoo', '8888', '성수기', 'U');
INSERT INTO usertable VALUES ('baedae', '9999', '비성수기', 'U');
INSERT INTO usertable VALUES ('summer', '1212', 'summer', 'U');
INSERT INTO usertable VALUES ('exyo',   '1313',  'exyo', 'U');
INSERT INTO usertable VALUES ('black',  '1414', 'jisoo', 'U');
INSERT INTO usertable VALUES ('pink',   '1515', 'rose', 'U');
INSERT INTO usertable VALUES ('ioiWinnor', '1616',   'som', 'U');
INSERT INTO usertable VALUES ('ioiWinnor', '1717', 'limneayoung', 'U');
INSERT INTO usertable VALUES ('godSeajung', '1818', 'seajung', 'U');

SELECT * FROM usertable;

COMMIT;
