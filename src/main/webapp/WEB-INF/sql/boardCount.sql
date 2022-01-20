use test;


DESC ResellBoard;
SELECT *  FROM ResellBoard ORDER BY inserted DESC;

ALTER TABlE Member ADD COLUMN nickName VARCHAR(30); -- 컬럼추가
DESC LikeBoard;


ALTER TABLE ResellBoard ADD boardCount int DEFAULT 0;
SELECT * FROM User;
SELECT * FROM rReply ORDER BY inserted DESC;
DELETE FROM rReply WHERE boardId = 541;

SELECT * FROM Board;
UPDATE Board SET content = concat(content,'추가값') WHERE id = 2050;
SELECT * FROM Food ORDER BY inserted DESC;

SELECT * FROM ResellBoard ORDER BY inserted DESC;

DESC Board;
SELECT * FROM Board;
UPDATE 
	Board
SET
	content = concat(content,'추가값1') WHERE id = 2050;
	
SELECT imageKey FROM ResellBoard WHERE id = 578;    
SELECT imageKey FROM ResellBoard WHERE id = 568;

SELECT * FROM Board;
SELECT * FROM ResellBoard ORDER BY inserted DESC;
UPDATE Board
	SET content = concat(content,',','추가값2') WHERE id = 2050;
    
 	UPDATE
		ResellBoard
	SET
		imageKey = CONCAT (imageKey,',','추가되니')
	WHERE
		id = 559;   
    
    
    UPDATE
		ResellBoard
	SET
		title = #{title},
		content = #{content},
		nickName = #{nickName},
		address = #{address},
		price = #{price},
		imageKey = #{imageKey},
		updated = NOW()
	WHERE
		id = #{id};
        ;
        
SELECT * FROM Board;

SELECT imageKey FROM ResellBoard WHERE id = 571;




