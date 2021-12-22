USE test;

DESC Board;
-- Board.writer가 Member.id 참조
ALTER TABLE Board
ADD FOREIGN KEY (writer) REFERENCES Member(id);


-- 탈퇴한 아이디의 게시물을 삭제
-- board id만 뽑아 낸다규?
-- MUL -- 멀티키
SELECT b.id 
FROM Board b LEFT JOIN Member m ON b.writer = m.id
WHERE m.id IS NULL;

-- 탈퇴한 아이디의 게시물 삭제
DELETE FROM Board WHERE id IN
(
SELECT b.id 
FROM Board b LEFT JOIN Member m ON b.writer = m.id
WHERE m.id IS NULL
);



SELECT * FROM Member;




-- Reply boardId 가 Board id를 참조 
ALTER TABLE Reply
ADD FOREIGN KEY (boardId) REFERENCES Board(id);

-- Reply memberId 가 Member id를 참조 
ALTER TABLE Reply
ADD FOREIGN KEY (memberId) REFERENCES Member(id);

DESC Reply;

-- add primary key 
ALTER TABLE Member
ADD PRIMARY KEY (columnName);


-- delete duplicated member id

-- 중복된 키확인?
SELECT id, count(id) FROM Member GROUP BY id HAVING count(id) > 1;



-- 댓글 갯수
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
    
    
    -- -------------------한지훈씨 자료------------------------------
    USE test;

DESC Board;
DESC Member;

-- delete duplicated member id
DELETE FROM Member WHERE id IN(
SELECT id FROM Member GROUP BY id HAVING count(id) > 1);
-- add primary key
ALTER TABLE Member
ADD PRIMARY KEY (id);
-- Board.wirter 가 Member.id 참조

ALTER TABLE Board
ADD FOREIGN KEY (writer) REFERENCES Member(id);

-- 탈퇴한 아이디의 게시물 삭제
DELETE FROM Board WHERE id IN
(
SELECT b.id 
FROM Board b LEFT JOIN Member m ON b.writer = m.id
WHERE m.id IS NULL
);

ALTER TABLE Reply
ADD FOREIGN KEY (boardId) REFERENCES Board(id);

ALTER TABLE Reply
ADD FOREIGN KEY (memberId) REFERENCES Member(id);

DESC Reply;
