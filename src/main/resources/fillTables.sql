insert into users ("name", "password", created_at) values ('Konstantin', 'qwerty', 'yesterday');

insert into post (text, created_at, user_id) values ('УЖС', 'yesterday', '1');

insert into comment (text, post_id, user_id, created_at) values ('да ну нафиг ', '1', '1', 'now');

insert into liked (user_id, post_id, comment_id) values ('1', '1', null);