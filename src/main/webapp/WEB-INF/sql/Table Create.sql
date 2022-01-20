use prj1;

CREATE TABLE Food (
	id Int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(10000) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    updated DATETIME DEFAULT NOW(),
    boardCnt int NOT NULL,
    memberId int NOT NULL,
    imageKey VARCHAR(500),
    address VARCHAR(100)
);

