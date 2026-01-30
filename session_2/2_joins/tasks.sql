-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT * FROM posts WHERE deleted = 1;
SELECT Username, Content FROM posts p JOIN users u ON p.user_id = u.id WHERE Username LIKE 'A%';
SELECT Username, Content FROM posts, users WHERE Content LIKE '%small%';

SELECT follower.Username AS Follower, followed.Username AS Followed 
FROM follows f 
JOIN users follower ON f.following_user_id=follower.id 
JOIN users followed ON f.followed_user_id=followed.id;

SELECT  ORDER BY created_on ASC;