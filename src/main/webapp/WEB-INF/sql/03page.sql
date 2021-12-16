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
SELECT COUNT(*) FROM Member;

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