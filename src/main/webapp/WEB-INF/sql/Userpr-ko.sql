Use test;
CREATE TABLE UserPr(
	id VARCHAR(11) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    password VARCHAR(100) NOT NULL,
    created DATETIME NOT NULL DEFAULT NOW(),
    updated DATETIME NOT NULL DEFAULT NOW(),
    email VARCHAR(100) NOT NULL UNIQUE
);

DESC User;
DESC UserPr;
SELECT * FROM ResellMember;
SELECT * FROM UserPr;
INSERT INTO UserPr ( id, name, password, email)
VALUES ('id2','name2','id2','id2@gmail.com');

SELECT * FROM ResellReply ORDER BY inserted DESC;
UPDATE ResellReply SET memberId = 'id1' WHERE id = 33;


SELECT * FROM UserPr;
UPDATE UserPr SET Name = id; -- id컬럼을 nickName컬럼으로 추가
 -- 인서트 멤버 예시   
INSERT INTO ResellMember (id,password, email, address, addressDetail, nickName)
VALUES ('id9','id9','id9@gmail.com','seoul','상세주소9','아이디9');
UPDATE ResellMember SET nickName = 'id1';
UPDATE ResellBoard SET writer = 'id1';

SELECT * FROM ResellBoard rb JOIN ResellMember rm ON rb.;
UPDATE ResellBoard rb JOIN ResellMember rm ON  SET writer = id;

DESC Food;
DESC FoodReply;

DESC User;
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

SELECT 
	rr.id,
    rr.boardId,
    rr.memberId,
    rr.reply,
    rr.inserted,
    rr.updated
FROM 
	ResellReply rr JOIN ResellBoard rb
ON
	rr.boardId = rb.id
JOIN  ResellMember rm 
	ON rr.memberId = rm.id
WHERE 
	rr.boardId = 504
   ORDER BY rr.id DESC;
    
   DESC ResellReply;
   
   
SELECT * FROM ResellReply ORDER BY inserted DESC;

DESC ResellReply;
DESC FoodReply;   
DESC User;
DESC ResellMember;



