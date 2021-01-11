create table study_list
(
    `runoob_id`       varchar(50) not null,
    `runoob_title`    varchar(50) not null,
    `runoob_author`   varchar(50) not null,
    `submission_date` varchar(50) not null
);
INSERT INTO study_list(runoob_id, runoob_title, runoob_author, submission_date)
VALUES('1','学习PHP','菜鸟教程','2021-01-10');

SELECT * FROM study_list;