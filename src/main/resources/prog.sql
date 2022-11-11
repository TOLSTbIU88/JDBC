create table users (id serial primary key, name varchar(100)not null unique, password varchar(100)not null,created_at timestamp);

create table post (id serial primary key, text varchar(100)not null, created_at timestamp,user_id int references users(id));

create table comment (id serial primary key, text varchar(100)not null, post_id int references post(id)not null, user_id int references users(id)not null,created_at timestamp);

create table liked (id serial primary key, user_id int references users(id)not null,post_id int references post(id),comment_id int references comment(id), check (post_id is not null or comment_id is not null));
