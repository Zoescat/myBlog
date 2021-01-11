drop database if exists awesome;
create database awesome;
use awesome;
grant select, insert, update, delete on awesome.* to 'www-data'@'localhost' identified by 'www-data';

create table users
(
    `id`         INT UNSIGNED AUTO_INCREMENT,
    `email`      varchar(50)  not null,
    `password`     varchar(50)  not null,
    `admin`      bool         not null,
    `name`       varchar(50)  not null,
    `images`     varchar(500) not null,
    `created_at` real         not null,
    unique key `idx_email` (`email`),
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine = innodb
  default charset = utf8;

create table blogs
(
    `id`         varchar(50)  not null,
    `user_id`    varchar(50)  not null,
    `user_name`  varchar(50)  not null,
    `user_image` varchar(500) not null,
    `name`       varchar(50)  not null,
    `summary`    varchar(200) not null,
    `content`    mediumtext   not null,
    `created_at` real         not null,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine = innodb
  default charset = utf8;

create table comments
(
    `id`         varchar(50)  not null,
    `blog_id`    varchar(50)  not null,
    `user_id`    varchar(50)  not null,
    `user_name`  varchar(50)  not null,
    `user_image` varchar(500) not null,
    `content`    mediumtext   not null,
    `created_at` real         not null,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine = innodb
  default charset = utf8;

show tables;
describe blogs;
INSERT INTO awesome.blogs (id, user_id, user_name, user_image, name, summary, content, created_at)
VALUES ('4', 'wangwu', 'rrgg', 'nn', 'hhb', 'fff', 'jjj', 445);


INSERT INTO users(id, email, password, admin, name, images, created_at)
VALUES ('6', '1203@qq.com', '123456', FALSE, 'zhangsan', 'hssue', 898);

SELECT id,name FROM users;

SELECT * FROM users WHERE name='zhangsa1n';

UPDATE users SET name='xiaoweiba' WHERE admin=0;

ALTER  TABLE users CHANGE id  id  INT UNSIGNED AUTO_INCREMENT;

update `users` set `email`='742.94567682585test123@qq.com', `password`='123456', `admin`=null, `name`='testUpdate', `images`='dvdfbss', `created_at`=null where `id`=null;