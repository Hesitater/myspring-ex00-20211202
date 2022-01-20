USE test;

CREATE TABLE ResellBoard (
	id Int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content VARCHAR(2000) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    updated DATETIME DEFAULT NOW()
);


ALTER TABLE ResellBoard ADD COLUMN imageKey VARCHAR(500);


-- 기존 content 에 추가값 넣기
UPDATE Board SET content = concat(content,'추가값') WHERE id = 2050;

DROP DATABASE Rese;
ALTER table ResellBoard add column price INT;
-- 제약사항 추가
ALTER TABLE ResellBoard MODIFY inserted DATETIME DEFAULT NOW();
ALTER TABLE ResellBoard MODIFY updated DATETIME DEFAULT  NOW();
ALTER TABLE ResellBoard MODIFY COLUMN inserted DATETIME NOT NULL DEFAULT NOW();
ALTER TABLE ResellBoard MODIFY COLUMN updated DATETIME NOT NULL DEFAULT NOW();

SELECT * FROm Food ORDER BY inserted DESC;
DESC Board;

DESC ResellBoard;
SELECT * FROM ResellBoard ORDER BY inserted DESC; 

SELECT * FROM File;
SELECT * FROM Food ORDER BY inserted DESC;

SELECT 
    id, title, content, writer, inserted, updated
FROM
    ResellBoard;



SELECT id, title, content, writer, inserted ,updated FROM ResellBoard
ORDER BY id DESC;

SELECT id, title, content, writer, inserted ,updated FROM ResellBoard
WHERE id = 1 ;  -- WHERE id = #{id}

SELECT * FROM ResellBoard ORDER BY id DESC;
DESC ResellBoard;

SELECT * FROM ResellBoard ORDER BY id DESC;
ALTER TABLE Board MODIFY COLUMN inserted DATETIME NOT NULL DEFAULT NOW();
ALTER TABLE Board MODIFY COLUMN updated DATETIME NOT NULL DEFAULT NOW();

INSERT INTO ResellBoard (title, content, writer)
VALUES ('물건팜제목','물건팜내용','id1');

INSERT INTO ResellBoardBOARD (title, content, writer, inserted, updated) 
VALUES 	( #{title}, #{content}, #{writer}, #{inserted}, #[updated]) ;;
;
INSERT INTO ResellBoard (title, content, writer) VALUES
('2021-12-27테스트','테스트날짜확인','id1');

INSERT INTO ResellBoard (price) VALUES
('1000');

UPDATE ResellBoard SET price= 5100 WHERE id = 516;


UPDATE ResellBoard 
SET
	title = '제목10',
    content = '내용10',
    writer = '글쓴이10',
    updated = NOW()
    WHERE 
		id = 10;


UPDATE ResellBoard 
SET
	title = #{title},
    content = #{content},
    writer = #{writer},
    inserted = #{inserted},
    updated = NOW()
    WHERE 
		id = #{id};
    
DELETE FROM ResellBoard WHERE id = #{id};




