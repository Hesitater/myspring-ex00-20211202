use test;


CREATE TABLE File ( 
	id INT PRIMARY KEY AUTO_INCREMENT,
	boardId INT NOT NULL,
    fileName VARCHAR(255) NOT NULL,
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

DESC File;

SELECT * FROM File ORDER BY boardId DESC, id ASC;
SELECT * FROM File;

INSERT INTO File (boardId, fileName)
SELECT 2044 as boardId, fileName FROM File WHERE boardId = 2045;

-- 
INSERT INTO File (boardId, fileName)
SELECT '507' as boardId, fileName FROM File WHERE boardId = '508';



SELECT * FROM File ORDER BY boardId DESC, id ASC;

SELECT * FROM Member ORDER BY id;



CREATE DATABASE prj1;
USE prj1;

CREATE TABLE FoodBoard

);
