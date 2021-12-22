USE test;

DESC Board;
DESC Member;

CREATE TABLE Reply (
	id INT PRIMARY KEY AUTO_INCREMENT,
	boardId INT NOT NULL,
    reply VARCHAR(500) NOT NULL,
    memberId VARCHAR(30) NOT NULL,
    inserted DATETIME NOT NULL DEFAULT NOW(),
    updated DATETIME NOT NULL DEFAULT NOW()
);

DESC Reply;

SELECT * FROM Board ORDER BY id DESC; -- 2035
SELECT * FROM Member ORDER BY inserted DESC; -- myid10

-- test 데이터 입력
INSERT INTO Reply (boardId, reply, memberId) VALUES (2035, '테스트용 댓글!@!@!@', 'myid10');
INSERT INTO Reply (boardId, reply, memberId) VALUES (2035, '좋아요', 'myid5');


SELECT * FROM Reply ORDER BY id DESC;
SELECT * FROM Member;
DESC Reply;


SELECT r.*, m.nickName
FROM Reply r LEFT JOIN Member m ON r.memberId = m.id
; 
	SELECT
		r.id,
		r.boardId,
		r.memberId,
		r.reply,
		r.inserted,
		r.updated,
		m.nickName
	FROM 
		Reply r JOIN Member m ON r.memberId = m.id
	WHERE
		r.boardId = #{boardId}
	ORDER BY 
		r.id DESC


SELECT r.id, r.boardId, r.reply, r.memberId, r.inserted, r.updated, m.nickName
FROM Reply r LEFT JOIN Member m ON r.memberId = m.id
; 

SELECT * FROM Member ORDER BY inserted DESC;

SELECT * FROM Reply;

-- BoardMapper.xml에 getListPage 
	SELECT 
	    b.id,
	    b.title,
	    b.content,
	    b.writer,
	    b.inserted,
	    b.updated,
	    m.nickName
	FROM
	    Board b
	        JOIN
	    Member m ON b.writer = m.id
	ORDER BY id DESC
    LIMIT 0 , 10;
 

	SELECT 
	    b.id,
	    b.title,
	    b.content,
	    b.writer,
	    b.inserted,
	    b.updated,
	    m.nickName,
        count(r.id) AS replyCount
	FROM
	    Board b
	        JOIN
	    Member m ON b.writer = m.id
			LEFT JOIN 
		Reply r ON b.id = r.boardId
    GROUP BY b. id    
	ORDER BY b.id DESC
    LIMIT 0 , 10;
    
    DESC Reply;
    SELECT * FROM Reply;
    SELECT * FROM Board;
    
    
    
    
    



