
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

INSERT INTO `NOTICE_CONTENTS` (`PK_A`, `CONTENTS`, `WRITER`)
VALUES ('A_01', '서비스 점검 안내', '관리자');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_01', 'A_01', '홍길동');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_02', 'A_01', '김영희');

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO `NOTICE_CONTENTS` (`PK_A`, `CONTENTS`, `WRITER`)
VALUES ('A_02', '이벤트 안내', '마케팅팀');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_03', 'A_02', '백지영');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_04', 'A_02', '최민호');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_05', 'A_02', '송지현');

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO `NOTICE_CONTENTS` (`PK_A`, `CONTENTS`, `WRITER`)
VALUES ('A_03', '새로운 기능 추가 안내', '관리자');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_06', 'A_03', '장성우');

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO `NOTICE_CONTENTS` (`PK_A`, `CONTENTS`, `WRITER`)
VALUES ('A_04', '결제 시스템 업그레이드 안내', '운영팀');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_07', 'A_04', '백지영');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_08', 'A_04', '최민호');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_09', 'A_04', '임현서');

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


INSERT INTO `NOTICE_CONTENTS` (`PK_A`, `CONTENTS`, `WRITER`)
VALUES ('A_05', '서비스 이용약관 변경 안내', '운영팀');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_10', 'A_05', '강수민');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_11', 'A_05', '백지영');

INSERT INTO `NOTICE_VISITOR` (`PK_B`, `FK_A`, `VISITOR`)
VALUES ('B_12', 'A_05', '박정희');


--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/*
INSERT INTO `NOTICE_CONTENTS` (PK_A, CONTENTS, WRITER)
VALUES ('A001', '서비스 점검 안내', '관리자');
INSERT INTO `NOTICE_CONTENTS` (PK_A, CONTENTS, WRITER)
VALUES ('A002', '이벤트 안내', '마케팅팀');
INSERT INTO `NOTICE_CONTENTS` (PK_A, CONTENTS, WRITER)
VALUES ('A003', '새로운 기능 추가 안내', '관리자');
INSERT INTO `NOTICE_CONTENTS` (PK_A, CONTENTS, WRITER)
VALUES ('A004', '결제 시스템 업그레이드 안내', '운영팀');
INSERT INTO `NOTICE_CONTENTS` (PK_A, CONTENTS, WRITER)
VALUES ('A005', '서비스 이용약관 변경 안내', '운영팀');

INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_01','A001','홍길동');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_06','A001','김영희');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_02','A002','백지영');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_07','A002','최민호');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_08','A002','송지현');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_03','A003','장성우');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_04','A004','백지영');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_09','A004','최민호');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_10','A004','임현서');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_05','A005','강수민');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_11','A005','백지영');
INSERT INTO `NOTICE_VISITOR` (PK_B, FK_A, VISITOR)
VALUES ('B_12','A005','박정희');
*/