/*
CREATE TABLE `NOTICE_CONTENTS` (
	`PK_A`	VARCHAR(50)	NOT NULL,
	`CONTENTS`	VARCHAR(1000)	NULL,
	`WRITER`	VARCHAR(50)	NULL
);

CREATE TABLE `NOTICE_VISITOR` (
	`PK_B`	VARCHAR(50)	NOT NULL,
	`FK_A`	VARCHAR(50)	NOT NULL,
	`VISITOR`	VARCHAR(50)	NULL
);
*/
-- syntex 참조
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ... -- pk는 못바꾼다고 생각하자
-- WHERE condition; -- 주로 unique 한 값

-- update notice_contents
UPDATE `NOTICE_CONTENTS`
SET `CONTENTS` = '이벤트 안내 수정', `WRITER` = '관리자'
WHERE `PK_A` = 'A002'
;

UPDATE `NOTICE_VISITOR`
SET `VISITOR` = '이상훈'
WHERE `FK_A` = 'A002'
;
