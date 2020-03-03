CREATE TABLE users (
  uid SERIAL PRIMARY KEY,
  username VARCHAR(200) UNIQUE,
  email VARCHAR(200),
  date_created DATE
);


CREATE TABLE posts (
  pid SERIAL PRIMARY KEY,
  heading VARCHAR(300),
  subheading VARCHAR(500),
  body text,
  user_id INT REFERENCES users(uid),
  author VARCHAR REFERENCES users(username),
  date_created TIMESTAMP,
  like_user_id INT[] DEFAULT ARRAY[]::INT[],
  likes INT DEFAULT 0
);

CREATE TABLE comments (
  cid SERIAL PRIMARY KEY,
  comment text,
  author VARCHAR REFERENCES users(username),
  user_id INT REFERENCES users(uid),
  post_id INT REFERENCES posts(pid),
  date_created TIMESTAMP
);

-- DROP TABLE comments;
-- DROP TABLE posts;
-- DROP TABLE users;