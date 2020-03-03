# nn-blog-app

System dependencies for this app are:
- `node == 13.9.0`
- `postgresql >= 9.6` 

If your postgres install is out of spec, then you can also use a docker image
```
docker run --name postgres -e POSTGRES_USER="postgres" -e POSTGRES_PASSWORD="postgres" -d -p 127.0.0.1:5000:5432 postgres
```
Database config is defined in `db.js` file, to set schema use `schema.sql` file.

Install project's reqs, `npm install`

Run this by using, `npm start` 

This is a blog backend in express with the following endpoints:
- `/api/get/all_posts` : Get all post from all users newest first
- `/api/get/post?post_id=` : Get post by id
- `/api/post/post_to_db` : Create a new post
- `/api/put/post` : Edit a post by providing all the values
- `/api/delete/post_commets` : Deletes all comments associated with the post
- `/api/delete/post?post_id=` : Deletes post by id
- `/api/put/likes` : add the user id of the user who liked the post then we increase the likes count by 1, provide user id(uid) as well as post_id.
- `/api/post/comment_to_db` : Saves a comment to the database
- `/api/delete/comment?comment_id=` : Delete a comment by id
- `/api/get/all_post_comments?post_id=`: delete all comments associted with the `post_id`
- `/api/posts/user_profile_to_db` : Save a new user to db
- `/api/get/user_profile_from_db?email=` : Get user by email
- `/api/get/user_posts?user_id=` : Get all post by a user, provide user_id
