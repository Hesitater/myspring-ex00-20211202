USE test;

-- Reply boardId 가 Board id를 참조 
ALTER TABLE Reply
ADD FOREIGN KEY (boardId) REFERENCES Board(id);

-- Reply memberId 가 Member id를 참조 
ALTER TABLE Reply
ADD FOREIGN KEY (memberId) REFERENCES Member(id);
SELECT *FROM ResellBoard ORDER BY inserted DESC;
DESC ResellBoard;
DESC rReply;
DESC User;
SELECT * FROM rReply;
SELECT * FROM ResellBoard WHERE id = 542;
SELECT * FROM User;
SELECT b.memberId as BoardUserId,u.id as UserId FROM ResellBoard b LEFT JOIN User u ON b.memberId = u.id;

SELECT b.id as BboardId,r.boardId as RboardId FROM ResellBoard b RIGHT JOIN rReply r ON b.id = r.boardId;

DELETE FROM rReply WHERE userId =6;
DELETE FROM rReply WHERE boardId = 548; 

UPDATE ResellBoard SET memberId = 9 WHERE memberId = 0;

 -- rReply의 boardId 가 ResellBoard id 를 참조
ALTER TABLE rReply
ADD FOREIGN KEY (boardId) REFERENCES ResellBoard(id);

-- rReply의 userId가 User id를 참조
ALTER TABLE rReply
ADD FOREIGN KEY  (userId) REFERENCES User(id);

-- ResellBoard의 id가 User의 id 참조
ALTER TABLE ResellBoard
ADD FOREIGN KEY (memberId) REFERENCES User(id);




DESC User;
SELECT * FROM User;

DESC ResellMember;
DESC ResellBoard;
SELECT * FROM ResellMember;
SELECT * FROM ResellBoard ORDER BY inserted DESC;



DESC ResellBoard;
SELECT COUNT(*) FROM ResellBoard;
INSERT INTO ResellBoard (title, content, writer)
(SELECT title,content, writer FROM ResellBoard);

-- 모든 리스트
	SELECT 
	    id,
	    title,
	    content,
	    writer,
	    price,
	    inserted,
	    updated
	FROM
	    ResellBoard  
	ORDER BY id DESC
    LIMIT 30, 10
    ;						
    
    
    -- from(0-index), number
    -- page 1 : 0, 10
    -- page 2 : 10, 10
    -- page 3 : 20, 10
    -- page 4 : 30, 10

    
    
    USE test;
DESC Board;
SELECT * FROM Board;
SELECT COUNT(*) FROM Board;

INSERT INTO Board (title, content, writer)
(SELECT title, content, writer FROM Board); -- 이미 있는 레코드 복사해서 다시 입력

-- 모든 리스트
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
    LIMIT 0, 10 
    ;
    -- from(0-index), number
    -- page 1 : 0, 10
    -- page 2 : 10, 10
    -- page 3 : 20, 10
    -- page 4 : 30, 10
    -- page 5 : 40, 10

DESC Member;
SELECT * FROM Member;
SELECT COUNT(*) FROM ResellMember;

INSERT INTO Member ( password, email, address,inserted, nickName)
(SELECT password, email, address, nickName  FROM Member); -- 이미 있는 레코드 복사해서 다시 입력

INSERT INTO Member (id, password, email, address, nickName)
VALUES (id11, pw11, id10gmail.com, seoul, NOW(), id11 );


	SELECT 
	    m.id,
	    m.password,
	    m.email,
	    m.address,
	    m.inserted,
	    m.nickName,
	    COUNT(b.id) AS numberOfBoard
	FROM
	    Member m
	        LEFT JOIN
	    Board b ON m.id = b.writer
	GROUP BY m.id
	ORDER BY m.inserted DESC
	LIMIT 1, 20;

	SELECT 
	    m.id,
	    m.password,
	    m.email,
	    m.address,
	    m.inserted,
	    m.nickName,
	    COUNT(b.id) AS numberOfBoard
	FROM
	    Member m
	        LEFT JOIN
	    Board b ON m.id = b.writer
	GROUP BY m.id
	ORDER BY m.inserted DESC
    LIMIT 1 , 10
    ;
    
    	SELECT COUNT(id) FROM ResellBoard 
	 	<!-- 검색 조건이 null이 아니라면 검색조건에 따른 데이터 조회-->
 	<if test="searchType != null">
		<if test="searchType == 'all'.toString()">
			WHERE ( title  LIKE CONCAT('%', #{keyword}, '%') OR
			rb.nickName LIKE CONCAT('%', #{keyword}, '%'))
		</if>
		<if test="searchType == 't'.toString()">
			WHERE title LIKE CONCAT('%', #{keyword}, '%')
		</if>
		<if test="searchType == 'w'.toString()">
			WHERE nickName LIKE CONCAT('%', #{keyword}, '%')
		</if>
	</if> ;
    
   SELECT * FROM User; 
    
 SELECT COUNT(id) FROM ResellBoard;   
 SELECT COUNT(id) FROM ResellBoard 
 WHERE nickName = concat('%','안진혁','%');
  SELECT COUNT(id) FROM ResellBoard 
 WHERE title = concat('id',1);
 SELECT COUNT(id) FROM ResellBoard
 WHERE title = concat('%','id1','%') OR nickName = concat('%','id1','%');
      