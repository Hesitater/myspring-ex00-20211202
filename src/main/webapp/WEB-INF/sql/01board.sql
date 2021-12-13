USE test;

CREATE TABLE Board (
	id Int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(2000) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    updated DATETIME DEFAULT NOW()
     
);

DESC Board;

SELECT * FROM Board ORDER BY id DESC;

-- inserted 가 null인거 지우기 (세이프모드라서 안되서 세이프모드 해제하고 해야됨)
DELETE FROM Board WHERE
(id) IN (SELECT id 
		 FROM Board 
         WHERE inserted IS NULL);
-- updated NULL 인거 지우기
DELETE FROM Board WHERE updated IS NULL;

-- inserted,updated DATETIME NOT NULL 되게 하기
ALTER TABLE Board MODIFY COLUMN inserted DATETIME NOT NULL DEFAULT NOW();
ALTER TABLE Board MODIFY COLUMN updated DATETIME NOT NULL DEFAULT NOW();






















