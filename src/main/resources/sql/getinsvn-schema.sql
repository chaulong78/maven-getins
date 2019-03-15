DROP DATABASE IF EXISTS getinsvn;
CREATE DATABASE getinsvn;
-- CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
USE getinsvn;

CREATE TABLE image
(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  url  VARCHAR(1000)
);

CREATE TABLE contact
(
  id      INT PRIMARY KEY AUTO_INCREMENT,
  name    NVARCHAR(250),
  email   VARCHAR(250),
  phone   CHAR(11),
  comments NVARCHAR(1000)
);

CREATE TABLE user
(
  id        INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(250) UNIQUE NOT NULL,
  password  VARCHAR(250)       NOT NULL,
  email     VARCHAR(250) UNIQUE NOT NULL,
  avatar    VARCHAR(1000),
  enabled   BIT DEFAULT 1
);

CREATE TABLE user_detail
(
  user_id    INT PRIMARY KEY,
  full_name  NVARCHAR(250),
  birth_date DATE DEFAULT '2000-1-1',
  gender     BIT  DEFAULT 1,
  address    NVARCHAR(500),
  phone      CHAR(11),
  job        NVARCHAR(250),
  CONSTRAINT FK_userDetail_user FOREIGN KEY (user_id)
    REFERENCES user (id)
    ON DELETE CASCADE
);

CREATE TABLE role
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  name        VARCHAR(250) UNIQUE NOT NULL,
  description NVARCHAR(250),
  enabled     BIT DEFAULT 1
);

CREATE TABLE user_role
(
  user_id INT NOT NULL,
  role_id INT NOT NULL,
  PRIMARY KEY (user_id, role_id),
  CONSTRAINT FK_userRole_user FOREIGN KEY (user_id)
    REFERENCES user (id)
    ON DELETE CASCADE,
  CONSTRAINT FK_userRole_role FOREIGN KEY (role_id)
    REFERENCES role (id)
    ON DELETE CASCADE
);

CREATE TABLE functions
(
  id        VARCHAR(250) PRIMARY KEY,
  name      NVARCHAR(250),
  url       VARCHAR(250),
  icon      VARCHAR(250),
  parent_id VARCHAR(250),
  CONSTRAINT FK_function_function FOREIGN KEY (parent_id)
    REFERENCES functions (id)
    ON DELETE CASCADE
);

CREATE TABLE role_function
(
  role_id     INT         NOT NULL,
  function_id VARCHAR(250) NOT NULL,
  can_view    BIT DEFAULT 1,
  can_create  BIT DEFAULT 1,
  can_update  BIT DEFAULT 1,
  can_delete  BIT DEFAULT 1,
  PRIMARY KEY (role_id, function_id),
  CONSTRAINT FK_roleFunction_role FOREIGN KEY (role_id)
    REFERENCES role (id)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_roleFunction_function FOREIGN KEY (function_id)
    REFERENCES functions (id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE post_type
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  name        NVARCHAR(250) NOT NULL,
  url_name    VARCHAR(250)  NOT NULL,
  description NVARCHAR(250)
);

CREATE TABLE post
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  author_id   INT,
  type_id     INT,
  name        MEDIUMTEXT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_VIETNAMESE_CI NOT NULL,
  url_name    VARCHAR(250)                                                  NOT NULL,
  description NVARCHAR(1000),
  image       varchar(1000),
  content     MEDIUMTEXT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_VIETNAMESE_CI NOT NULL,
  attach      VARCHAR(1000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  enabled     BIT       DEFAULT 1,
  CONSTRAINT FK_post_user FOREIGN KEY (author_id)
    REFERENCES user (id),
  CONSTRAINT FK_post_postType FOREIGN KEY (type_id)
    REFERENCES post_type (id)
);

CREATE TABLE course_type
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  name        NVARCHAR(250) UNIQUE NOT NULL,
  url_name    VARCHAR(250)        NOT NULL,
  description NVARCHAR(250)
);

CREATE TABLE course
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  author_id   INT,
  type_id     INT,
  name        NVARCHAR(250)                                                 NOT NULL,
  url_name    VARCHAR(250)                                                  NOT NULL,
  description MEDIUMTEXT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_VIETNAMESE_CI NOT NULL,
  content     MEDIUMTEXT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_VIETNAMESE_CI NOT NULL,
  video_url   VARCHAR(1000),
  price       VARCHAR(250),
  rating      SMALLINT DEFAULT 0,
  requirement MEDIUMTEXT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_VIETNAMESE_CI,
  duration    INT      DEFAULT 0,
  enabled     BIT      DEFAULT 1,
  CONSTRAINT FK_course_courseType FOREIGN KEY (type_id)
    REFERENCES course_type (id),
  CONSTRAINT FK_course_user FOREIGN KEY (author_id)
    REFERENCES user (id)
);

CREATE TABLE class
(
  id             INT PRIMARY KEY AUTO_INCREMENT,
  course_id      INT,
  teacher_id     INT,
  name           NVARCHAR(250) NOT NULL,
  url_name       VARCHAR(250)  NOT NULL,
  student_number TINYINT DEFAULT 0,
  description    MEDIUMTEXT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_VIETNAMESE_CI,
  begin_date     DATE,
  end_date       DATE,
  enabled        BIT     DEFAULT 1,
  CONSTRAINT FK_class_course FOREIGN KEY (course_id)
    REFERENCES course (id)
    ON DELETE CASCADE,
  CONSTRAINT FK_class_user FOREIGN KEY (teacher_id)
    REFERENCES user (id)
    ON DELETE CASCADE
);

CREATE TABLE persistent_logins
(
  username  VARCHAR(250),
  series    VARCHAR(250),
  token     VARCHAR(250),
  last_used DATETIME
);

CREATE TABLE password_reset_token
(
  user_id     INT PRIMARY KEY,
  token       VARCHAR(250) NOT NULL,
  expiry_date DATETIME     NOT NULL,
  CONSTRAINT FK_password_user FOREIGN KEY (user_id)
    REFERENCES user (id)
);

CREATE TABLE event
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  image       VARCHAR(1000),
  name        NVARCHAR(500),
  url_name    VARCHAR(250),
  event_time  VARCHAR(250),
  event_place NVARCHAR(500),
  description NVARCHAR(500),
  content     MEDIUMTEXT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_VIETNAMESE_CI NOT NULL,
  enabled     BIT default 0,
  map         VARCHAR(1000)
);

CREATE TABLE speaker
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  name        NVARCHAR(250),
  image       VARCHAR(1000),
  job         NVARCHAR(250),
  description NVARCHAR(500)
);

CREATE TABLE event_speaker
(
  speaker_id INT NOT NULL,
  event_id   INT NOT NULL,
  PRIMARY KEY (speaker_id, event_id),
  CONSTRAINT FK_eventSpeaker_speaker FOREIGN KEY (speaker_id)
    REFERENCES speaker (id)
    ON DELETE CASCADE,
  CONSTRAINT FK_eventSpeaker_event FOREIGN KEY (event_id)
    REFERENCES event (id)
    ON DELETE CASCADE
);

DELIMITER $$
CREATE procedure `getinsvn`.`getNewestEvent`()
BEGIN
  SELECT *
  FROM event
  WHERE enabled = 1
    AND id =
        (SELECT MAX(id) FROM event);
END;