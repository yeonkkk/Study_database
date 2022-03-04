mysql -uroot -p

-- DB 생성
CREATE DATABASE opentutorials;

-- DB 삭제
DROP DATABASE opentutorials;

-- DB 확인
SHOW DATABASES;

-- DB 사용
USE opentutorials;

-- table 생성
CREATE TABLE topic(
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT NULL,
    created DATETIME NOT NULL,
    author VARCHAR(30) NULL,
    profile VARCHAR(100) NULL,
    PRIMARY KEY(id)
    );


-- INSERT
DESC topic;

INSERT INTO topic (title, description, created, author, profile) VALUES('MySQL', 'MySQL is ...', NOW(), 'egoing', 'developer');

SELECT * FROM topic;


-- SELECT
SELECT * FROM topic; 

SELECT id, title, created FROM topic;

SELECT id, title, created FROM topic WHERE author='egoing';

SELECT id, title, created FROM topic WHERE author='egoing' ORDER BY DESC;

SELECT id, title, created FROM topic WHERE author='egoing' ORDER BY DESC LIMIT 2;


-- UPDATE 
UPDATE topic SET description='Oracle is ...', title='Oracle' WHERE id='2';


-- DELETE
DELETE FROM topic WHERE id='5';


-- JOIN
SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.id;

SELECT topic.id,title,description,created,name,profile  FROM topic LEFT JOIN author ON topic.author_id = author.id;

SELECT topic.id AS topic_id,title,description,created,name,profile  FROM topic LEFT JOIN author ON topic.author_id = author.id;


