USE test;
-- foodTester@naver.com


CREATE TABLE UserPr(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    password VARCHAR(100) NOT NULL,
    created DATETIME NOT NULL DEFAULT NOW(),
    updated DATETIME NOT NULL DEFAULT NOW(),
    email VARCHAR(100) NOT NULL UNIQUE
);

SELECT * FROM ResellMember ORDER BY inserted DESC;
SELECT * FROM ResellBoard ORDER BY inserted DESC;
SELECT * FROM ResellReply ORDER BY inserted DESC;
DESC User;
SELECT * FROM UserPr ORDER BY id DESC;
DESC UserPr;
DESC ResellReply;
DESC FoodReply;
SELECT * FROM FoodReply;

CREATE TABLE rReply(
	id INT PRIMARY KEY AUTO_INCREMENT,
    BoardId INT NOT NULL,
    replyText VARCHAR(1000) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW(),
    updated DATETIME NOT NULL DEFAULT NOW(),
    userId INT NOT NULL
);
DESC rReply;
ALTER TABLE rReply CHANGE resellBoardID boardId VARCHAR(1000);

SELECT * FROM User;
SELECT * FROM ResellBoard ORDER BY id DESC; -- 515번
SELECT * FROM UserPr ORDER BY id DESC;    -- 2
SELECT * FROM rReply ORDER BY id DESC;
SELECT * FROM ResellReply;
dESC  rReply;
-- test 데이터입력
dESC UserPr;

INSERT INTO rReply (resellBoardId, replyText, userId)
VALUES (515, '테스트댓글@@@', 2);
SELECT 
	rr.id,
    rr.boardId,
    rr.memberId,
    rr.reply,
    rr.inserted,
    rr.updated,
    rm.nickName
FROM 
	ResellReply rr JOIN ResellBoard rb
ON
	rr.boardId = rb.id
JOIN  ResellMember rm 
	ON rr.memberId = rm.id
WHERE 
	rr.boardId = 504
   ORDER BY rr.id DESC;


-- 게시글 댓글 전체 보가
SELECT
   fr.id,
   fr.foodBoardId,
   fr.replyText,
   fr.userName,
   fr.inserted,
   fr.updated
FROM
   FoodReply fr JOIN Food f
ON
   fr.foodBoardId = f.id
WHERE
   fr.foodBoardId = 149
ORDER BY
   id DESC;

DESC UserPr;
SELECT * FROM ResellMember ORDER BY inserted DESC;
SELECT * FROM UserPr ORDER BY created DESC;
INSERT INTO UserPr (name, password, email)
VALUES ('name2','id2','id2@gmail.com');
SELECT * FROM User ORDER BY created DESC;
SELECT * FROM rReply ORDER BY inserted DESC;
-- foodTester@naver.com


SELECT
	rr.id,
    rr.boardId,
    rr.replyText,
    rr.inserted,
    rr.updated,
    rr.userId,
    up.id
FROm
	rReply rr JOIN UserPr up
     ON rr.userId = up.id
 WHERE
      rr.boardId = 514
ORDER BY
		rr.id DESC;
 
 DESC UserPr;
 SELECT * FROM rReply ORDER BY inserted;
-- 기존 sql      
  SELECT
	rr.id,
    rr.boardId,
    rr.userId,
    rr.replyText,
    rr.inserted,
    rr.updated,
    up.id
FROm
	rReply rr JOIN UserPr up
     ON rr.userId = up.id
 WHERE
      rr.boardId = 515
ORDER BY 
	rr.id DESC; 
    
SELECT
	rr.id,
    rr.boardId,
    rr.userId,
    rr.replyText,
    rr.inserted,
    rr.updated,
    up.name
FROM
	rReply rr  JOIN UserPr up
    ON
		rr.userId = up.id
    JOIN ResellBoard rb 
	ON	
	rr.boardId = rb.id
WHERE
	rr.boardId = 515
   ORDER BY 
		rr.id DESC;
 
 SELECT
	rr.id,
    rr.boardId,
    rr.userId,
    rr.replyText,
    rr.inserted,
    rr.updated,
    up.name
FROM
	rReply rr left JOIN User up
    ON
		rr.userId = up.id
    JOIN ResellBoard rb 
	ON	
	rr.boardId = rb.id
WHERE
	rr.boardId = 515
   ORDER BY 
		id DESC;
DESC User;
SELECT * FROM User;
SELECT * FROM rReply; 
SELECT title, content,writer FROM ResellBoard ORDER BY inserted DESC;
SELECT *  FROM ResellBoard ORDER BY inserted DESC; 
UPDATE User SET address='주소예시' WHERE id = 2; 
UPDATE ResellBoard SET price=1000 WHERE id= 6;
 million_food@naver.com
 
  SELECT
	rr.id,
    rr.boardId,
    rr.userId,
    rr.replyText,
    rr.inserted,
    rr.updated,
    up.id
FROm
	rReply rr JOIN UserPr up
     ON rr.userId = up.id
 WHERE
      rr.boardId = 515
ORDER BY 
	rr.id DESC;
 
 
 DESC rReply;
 
 SELECT * FROM rReply ORDER BY inserted DESC;
 SELECT * FROM User;
 
 DESC UserPr;
 SELECT * FROM rReply;
 SELECT * FROM UserPr;
 
 
SELECT
   fr.id,
   fr.foodBoardId,
   fr.replyText,
   fr.userName,
   fr.inserted,
   fr.updated
FROM
   FoodReply fr JOIN Food f
ON
   fr.foodBoardId = f.id
WHERE
   fr.foodBoardId = 149
ORDER BY
   id DESC;
 DESC FoodReply;  
