CREATE DATABASE pjproject;

create database join_test;
use join_test;
DESC User;
SELECT * FROM User;
SELECT * FRoM ResellReply;
DESC ResellBoard;
DESC Food;
DESC FoodReply;
DESC Resell;
DESC ResellReply;
DESC User;

SELECT id,imageKey FROM Resell ORDER BY inserted DESC;
SELECT id,imageKey FROM Food ORDER BY inserted DESC;

SELECT * FROM User ORDER BY id DESC;
SELECT * FROM Resell ORDER BY inserted DESC;
SELECT * FROM Food ORDER BY inserted DESC;
use pjproject;
DESC Resell;
DESC ResellBoard;
-- 컬럼 데이터 변경
ALTER TABLE ResellBoard MODIFY content VARCHAR(16000);

ALTER TABLE Resell MODIFY price int(13) DEFAULT 0;
ALTER TABLE Resell MODIFY price int(13) NULL ;
SELECT * FROM Resell ORDER BY inserted DESC;
