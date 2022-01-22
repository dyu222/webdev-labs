-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name;


-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id=26;


-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id=12 OR user_id =26;


-- Exercise 6
SELECT COUNT(*) FROM posts;



-- Exercise 7
SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id
ORDER BY COUNT(*) DESC;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users
ON users.id = posts.user_id
WHERE users.id =12 or users.id =26;



-- Exercise 9
SELECT posts.pub_date, following_id
FROM posts
INNER JOIN following
ON following.following_id = posts.user_id
WHERE following.user_id =26;



-- Exercise 10
SELECT posts.pub_date, following_id, username
FROM posts
INNER JOIN following
ON following.following_id = posts.user_id
INNER JOIN users
ON users.id = posts.user_id
WHERE following.user_id =26
ORDER BY pub_date DESC;



-- Exercise 11
INSERT INTO bookmarks (id,user_id,post_id)
VALUES(501,26,219);
INSERT INTO bookmarks (id, user_id,post_id)
VALUES(502,26,220);
INSERT INTO bookmarks (id,user_id,post_id)
VALUES(503,26,221);



-- Exercise 12
DELETE FROM bookmarks
WHERE id = 501;
DELETE FROM bookmarks
WHERE id = 502;
DELETE FROM bookmarks
WHERE id = 503;



-- Exercise 13
UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id = 26;



-- Exercise 14
