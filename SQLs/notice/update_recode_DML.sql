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
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- update notice_contents
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;