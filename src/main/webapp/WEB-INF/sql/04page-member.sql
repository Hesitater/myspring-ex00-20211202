USE test;

desc Member;

CREATE TABLE Mytable30 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    prefix VARCHAR(10)
);


DESC Mytable30;
SELECT * FROM Mytable30;
SELECT COUNT(*) FROM Mytable30;
INSERT INTO Mytable30 (prefix) VALUES ('testid');

INSERT INTO Mytable30 (prefix) SELECT prefix FROM Mytable30;
-- 기하급수적으로 ㄴ늘어나니 카운트 보면서

DESC Member;

INSERT INTO Member (id, password, email, address, nickName)
SELECT concat(prefix, id),'pw' , concat(prefix, id, '@gmail.com'), 'seoul', concat(prefix, id) FROM Mytable30;


DESC Mytable30;
SELECT count(*) FROM Mytable30;
SELECT * FROM Member ORDER BY inserted DESC;



