USE test;


CREATE TABLE ResellMember(
	id VARCHAR(30) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    addressDetail VARCHAR(255) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW(),
    nickName VARCHAR(30) UNIQUE NOT NULL
);

ALTER TABLE ResellBoard MODIFY inserted DATETIME NOT NULL;
ALTER TABLE ResellMember ADD COLUMN addressDetail VARCHAR(30);

ALTER TABLE ResellBoard MODIFY price VARCHAR(30) AFTER writer;
DESC ResellBoard;
DESC ResellMember;

-- 컬럼 addressDetail 을 address 뒤에 넣기
ALTER TABLE ResellMember MODIFY addressDetail VARCHAR(30) AFTER address;

ALTER TABLE ResellMember MODIFY password VARCHAR(100);

DESC ResellBoard;
DESC ResellMember;
SELECT * FROM ResellMember ORDER BY inserted DESC;
SELECT * FROM ResellBoard ORDER BY inserted DESC;


-- 게시물 조회, 작성자의 nickname
SELECT rb.id, rb.title, rb.content, rb.writer, rb.inserted, rb.updated, rb.price , rm.nickName
FROM ResellBoard rb JOIN ResellMember rm ON rb.writer = rm.id
ORDER BY id DESC;

SELECT 
    rb.id,
    rb.title,
    rb.content,
    rb.writer,
    rb.inserted,
    rb.updated,
    rb.price,
    rm.nickName
FROM
    ResellBoard rb
        JOIN
    ResellMember rm ON rb.writer = rm.id
ORDER BY id DESC;

ALTER TABlE Member ADD COLUMN nickName VARCHAR(30); -- 컬럼추가
UPDATE Member SET nickName = id; -- id컬럼을 nickName컬럼으로 추가
ALTER TABLE Member MODIFY COLUMN nickName VARCHAR(30) NOT NULL UNIQUE; -- 제약사항 추가

UPDATE ResellBoard SET price= 1000;

SELECT * FROM Member;
INSERT INTO Member (id , password, email, address, nickName)
VALUES ('id2','id2','','','');
DESC Member;
CREATE TABLE MemberEx(
	id VARCHAR(30) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    addressDetail VARCHAR(255) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW(),
    nickName VARCHAR(30) UNIQUE NOT NULL
);


-- id 컬럼을 nickName 컬럼으로 추가 (추가한 거 NULL 이니 일단 값 집어넣기(세이프모드 생각)
UPDATE ResellMember SET nickName= 'id1' WHERE nickName = id1;

-- 컬럼 addressDetail 을 address 뒤에 넣기
ALTER TABLE ResellMember MODIFY addressDetail VARCHAR(30) AFTER address;


DESC ResellBoard;
DESC rReply;
DESC ResellReply;
SELECT * FROM rReply ORDER BY inserted DESC;
SELECT * FROM ResellBoard ORDER BY inserted DESC;


ALTER TABLE ResellBoard ADD COLUMN memberId int;
ALTER TABLE ResellBoard MODIFY memberId int NOT NULL;

ALTER TABLE rReply ADD COLUMN memberId int NOT NULL;
ALTER TABLE ResellBoard ADD COLUMN memberId int NOT NULL;




-- 컬럼추가
ALTER TABLE ResellMember ADD COLUMN 컬럼명 데이터타입(크기);

-- ResellBoard 테이블의 작성자 열을 ResellMember 테이블 id값으로 수정 ( 세이프모드 생각)
UPDATE ResellBoard SET writer = (SELECT id FROM ResellMember ORDER BY inserted LIMIT 1);

-- 컬럼 제약사항 추가 할떄 
ALTER TABLE ResellMember MODIFY COLUMN nickName VARCHAR(30) UNIQUE NOT NULL;

-- id 컬럼을 nickName 컬럼으로 추가 (추가한 거 NULL 이니 일단 값 집어넣기(세이프모드 생각)
UPDATE ResellMember nickname = id;

-- 컬럼추가
ALTER TABLE ResellMember ADD COLUMN 컬럼명 데이터타입(크기);


-- 컬럼 데이터 변경
ALTER TABLE 테이블명 MODIFY 컬럼명 변경할데이터형(크기) CONSTRAINT 제약사항명 제약사항;

-- 컬럼 제약사항 추가 할떄 
ALTER TABLE ResellMember MODIFY COLUMN nickName VARCHAR(30) UNIQUE NOT NULL;

 -- 인서트 멤버 예시   
INSERT INTO ResellMember (id,password, email, address, addressDetail, nickName)
VALUES ('id9','id9','id9@gmail.com','seoul','상세주소9','아이디9');


;
UPDATE ResellBoard SET price=1000 WHERE id= 17;
UPDATE ResellMember SET addressDetail='상세주소id7' WHERE id ='id7';

ALTER TABLE ResellBoard MODIFY inserted DATETIME DEFAULT NOW();
ALTER TABLE ResellBoard MODIFY updated DATETIME DEFAULT  NOW();

ALTER TABLE ResellMember MODIFY addressDetail NOT NULL;


-- 컬럼 제약 조건 추가
alter table [테이블명] modify [컬럼명] [타입] [제약조건];

ALTER TABLE ResellMember modify addressDetail VARCHAR(30) NOT NULL;

SELECT * FROM ResellMember;

DESC ResellMember;
SELECT * FROM ResellMember ORDER BY inserted DESC;

INSERT INTO ResellMember (id,password, email, address, nickName)
VALUES ('id4','id4','id4@gmail.com','seoul','myid4');

SELECT id, password, email, address FROM ResellMember;

INSERT INTO ResellMember (id, password, email, address) 
VALUES ('','','','','');

UPDATE ResellBoard SET price=1000 WHERE id= 17;

UPDATE ResellMember 
SET
	id = ,
    password = '',
    email = '글쓴이10',
    address = ''
    WHERE 
		id = 10;
DESC Member;


	SELECT 
	    id,
	    title,
	    content,
	    writer,
	    inserted,
	    updated
	FROM
	    ResellBoard 
	ORDER BY id DESC;
    
 -- 인서트 멤버 예시   
INSERT INTO ResellMember (id,password, email, address, addressDetail, nickName)
VALUES ('id9','id9','id9@gmail.com','seoul','상세주소9','아이디9');
    


SELECT * FROM ResellMember ORDER BY inserted DESC;