use test;


CREATE TABLE rFile2 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    boardID INT NOT NULL,
    fileName VARCHAR(255) NOT NULL,
    FOREIGN KEY (boardId) REFERENCES ResellBoard(id)
);

DESC rFile2;

SELECT * FROM Food ORDER BY inserted desc;

SELECT
	rr.id,
    rr.boardId,
    rr.memberId,
    rr.userId,
    rr.replyText,
    rr.inserted,
    rr.updated,
    up.name
FROM
	rReply rr left JOIN User up
    ON
		rr.userId = up.id
    JOIN ResellBoard rb 
	ON	
	rr.boardId = rb.id
WHERE
	rr.boardId = 542
   ORDER BY 
		id DESC;
        
SELECT 
	    rb.id,
	    rb.title,
	    rb.content,
	    rb.nickName,
	    rb.memberId,
	    rb.address,
	    rb.price,
	    rb.inserted,
	    rb.updated,
	    rb.memberId,
        rr.userId,
       count(rr.id) replyCount 
 FROM   
	    ResellBoard  rb
        		LEFT JOIN
       rReply rr On rb.id = 514
      			LEFT JOIN  
			User u On u.id=rr.userId 	       
GROUP BY rb.id
ORDER BY rb.id DESC
LIMIT 0,10;        
SELECT * FROm rReply;  

SELECT 
    b.id,
    b.title,
    b.content,
    b.writer,
    b.inserted,
    b.updated,
    m.nickName,
    COUNT(r.id) replyCount
FROM
    Board b
        JOIN
    Member m ON b.writer = m.id
    	LEFT JOIN
    Reply r ON b.id = r.boardId
GROUP BY b.id
ORDER BY b.id DESC
LIMIT 0,10;

dESC User;
DESC ResellBoard;
DESC rReply;

SELECT COUNT(id) FROM ResellBoard;


SELECT * FROM ResellBoard
WHERE  (id> 510) AND (title LIKE '%123%' OR nickName LIKE '%id1%')
ORDER BY id DESC
LIMIT 0 , 20;


DESC User;
SELECT * FROM User ORDER BY id DESC;



DESC ResellBoard;





      