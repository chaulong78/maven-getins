USE getinsvn;
/* ADMIN ACCOUNT */
INSERT INTO user
  (user_name, password, email, avatar, enabled)
VALUES ( 'getinsadmin', '$2a$10$3LyhIrcZqN0bnPpt7E5z/u97ZPrnMlfA9XQlhv2xwABHmNPZlhpXW'
       , 'chaulongdbp@gmail.com'
       , 'https://scontent.fhan2-1.fna.fbcdn.net/v/t1.0-9/51293319_2009673572486778_2249694532385898496_n.jpg?_nc_cat=103&_nc_oc=AQnB4UxhIZpJHxpc1a-aLtOhVFxS7DZfku0dL82WG8nAWxN8mIlTJnBAh9lwQiaoQH0&_nc_ht=scontent.fhan2-1.fna&oh=556d6e8a00d14917d8c83a660f47e9a0&oe=5CF35744'
       , 1);

/* MANAGER ACCOUNT */
INSERT INTO user
  (user_name, password, email, avatar, enabled)
VALUES ( 'getinsmanager', '$2a$10$3LyhIrcZqN0bnPpt7E5z/u97ZPrnMlfA9XQlhv2xwABHmNPZlhpXW'
       , 'pcl1@gmail.com'
       , 'https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-9/38910088_693998667618650_4403305861766709248_n.png?_nc_cat=100&_nc_oc=AQn9YnqtIjwX9-1W73UqkuXq4bNXA4qjFmcMtWcf0uLzs-xXpJWxc16tdD7Rt-A2klA&_nc_ht=scontent.fhan5-7.fna&oh=d614415bbd4f34fcc2a466a412e44d72&oe=5D11C357'
       , 1);

/* SALE ACCOUNT */
INSERT INTO user
  (user_name, password, email, avatar, enabled)
VALUES ( 'getinssale', '$2a$10$3LyhIrcZqN0bnPpt7E5z/u97ZPrnMlfA9XQlhv2xwABHmNPZlhpXW'
       , 'pcl2@gmail.com'
       , 'https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-9/38910088_693998667618650_4403305861766709248_n.png?_nc_cat=100&_nc_oc=AQn9YnqtIjwX9-1W73UqkuXq4bNXA4qjFmcMtWcf0uLzs-xXpJWxc16tdD7Rt-A2klA&_nc_ht=scontent.fhan5-7.fna&oh=d614415bbd4f34fcc2a466a412e44d72&oe=5D11C357'
       , 1);

insert into user_detail
  (user_id, full_name, birth_date, gender, address, phone, job)
values (1, N'Phạm Châu Long', '1997-8-7', 1, N'Hà Nội', '0943394172', N'Sinh viên')
     , (2, N'Team quản lý', '2000-1-1', 1, null, null, null)
     , (3, N'Team marketing và sale', '2000-1-1', 1, null, null, null);

/* ROLE */
INSERT INTO role
  (name, description, enabled)
VALUES ('ROLE_ADMIN', N'Quản trị viên', 1),
       ('ROLE_USER', N'Người dùng', 1),
       ('ROLE_MANAGER', N'Quản lý chung', 1),
       ('ROLE_SALE', N'Quản lý sự kiện, bài viết', 1);

INSERT INTO user_role (user_id, role_id)
VALUES (1, 1),
       (2, 3),
       (3, 4);

/* Chức năng */
insert into functions
  (id, name, url, icon, parent_id)
values ('SystemManagement', N'Quản lý hệ thống', null, 'settings', null),
       ('FunctionList', N'Danh sách chức năng', '/admin/system/function', 'keyboard_arrow_right', 'SystemManagement'),
       ('RoleList', N'Danh sách quyền', '/admin/system/role', 'keyboard_arrow_right', 'SystemManagement'),

       ('UserManagement', N'Quản lý người dùng', null, 'group', null),
       ('UserList', N'Danh sách người dùng', '/admin/account', 'keyboard_arrow_right', 'UserManagement'),
       ('ContactList', N'Liên hệ người dùng', '/admin/account/contact', 'keyboard_arrow_right',
        'UserManagement'),

       ('CourseManagement', N'Quản lý khóa học', null, 'book', null),
       ('CourseList', N'Danh sách khóa học', '/admin/course', 'keyboard_arrow_right', 'CourseManagement'),
       ('CourseTypeList', N'Thể loại khóa học', '/admin/course/type', 'keyboard_arrow_right',
        'CourseManagement'),
       ('ClassList', N'Danh sách lớp học', '/admin/course/class', 'keyboard_arrow_right', 'CourseManagement'),

       ('EventManagement', N'Quản lý sự kiện', null, 'event', null),
       ('PostList', N'Danh sách bài viết', '/admin/event/post', 'keyboard_arrow_right', 'EventManagement'),
       ('PostTypeList', N'Thể loại bài viết', '/admin/event/post/type', 'keyboard_arrow_right',
        'EventManagement'),
       ('EventList', N'Danh sách sự kiện', '/admin/event', 'keyboard_arrow_right', 'EventManagement'),
       ('SpeakerList', N'Danh sách diễn giả', '/admin/event/speaker', 'keyboard_arrow_right', 'EventManagement'),
       ('ThemeManagement', N'Chỉnh sửa giao diện', '/admin/event/theme', 'keyboard_arrow_right', 'EventManagement'),

       ('MediaManagement', N'Quản lý media', '/admin/media', 'image', null),
       ('PhotoList', N'Danh sách hình ảnh', '/admin/media/photo', 'keyboard_arrow_right', 'MediaManagement'),
       ('VideoList', N'Danh sách video', '/admin/media/video', 'keyboard_arrow_right', 'MediaManagement');

/* ROLE FUNCTION */
insert into role_function
  (role_id, function_id, can_view, can_create, can_update, can_delete)
values (1, 'SystemManagement', 1, 1, 1, 1),
       (1, 'UserManagement', 1, 1, 1, 1),
       (1, 'CourseManagement', 1, 1, 1, 1),
       (1, 'EventManagement', 1, 1, 1, 1),
       (1, 'MediaManagement', 1, 1, 1, 1),
       (1, 'RoleList', 1, 1, 1, 1),
       (1, 'FunctionList', 1, 1, 1, 1),
       (1, 'ThemeManagement', 1, 1, 1, 1),
       (1, 'CourseTypeList', 1, 1, 1, 1),
       (1, 'CourseList', 1, 1, 1, 1),
       (1, 'ClassList', 1, 1, 1, 1),
       (1, 'PostTypeList', 1, 1, 1, 1),
       (1, 'PostList', 1, 1, 1, 1),
       (1, 'EventList', 1, 1, 1, 1),
       (1, 'SpeakerList', 1, 1, 1, 1),
       (1, 'ContactList', 1, 1, 1, 1),
       (1, 'UserList', 1, 1, 1, 1),
       (1, 'PhotoList', 1, 1, 1, 1),
       (1, 'VideoList', 1, 1, 1, 1);

insert into role_function
  (role_id, function_id, can_view, can_create, can_update, can_delete)
values (2, 'SystemManagement', 0, 0, 0, 0),
       (2, 'UserManagement', 0, 0, 0, 0),
       (2, 'CourseManagement', 0, 0, 0, 0),
       (2, 'EventManagement', 0, 0, 0, 0),
       (2, 'MediaManagement', 0, 0, 0, 0),
       (2, 'RoleList', 0, 0, 0, 0),
       (2, 'FunctionList', 0, 0, 0, 0),
       (2, 'ThemeManagement', 0, 0, 0, 0),
       (2, 'CourseTypeList', 0, 0, 0, 0),
       (2, 'CourseList', 0, 0, 0, 0),
       (2, 'ClassList', 0, 0, 0, 0),
       (2, 'PostTypeList', 0, 0, 0, 0),
       (2, 'PostList', 0, 0, 0, 0),
       (2, 'EventList', 0, 0, 0, 0),
       (2, 'SpeakerList', 0, 0, 0, 0),
       (2, 'ContactList', 0, 0, 0, 0),
       (2, 'UserList', 0, 0, 0, 0),
       (2, 'PhotoList', 0, 0, 0, 0),
       (2, 'VideoList', 0, 0, 0, 0);

insert into role_function
  (role_id, function_id, can_view, can_create, can_update, can_delete)
values (3, 'SystemManagement', 0, 0, 0, 0),
       (3, 'UserManagement', 0, 0, 0, 0),
       (3, 'CourseManagement', 1, 0, 0, 0),
       (3, 'EventManagement', 1, 0, 0, 0),
       (3, 'MediaManagement', 1, 0, 0, 0),
       (3, 'RoleList', 0, 0, 0, 0),
       (3, 'FunctionList', 0, 0, 0, 0),
       (3, 'ThemeManagement', 1, 1, 1, 1),
       (3, 'CourseTypeList', 1, 1, 1, 1),
       (3, 'CourseList', 1, 1, 1, 1),
       (3, 'ClassList', 1, 1, 1, 1),
       (3, 'PostTypeList', 1, 1, 1, 1),
       (3, 'PostList', 1, 1, 1, 1),
       (3, 'EventList', 1, 1, 1, 1),
       (3, 'SpeakerList', 1, 1, 1, 1),
       (3, 'ContactList', 1, 1, 1, 1),
       (3, 'UserList', 1, 1, 1, 1),
       (3, 'PhotoList', 1, 1, 1, 1),
       (3, 'VideoList', 1, 1, 1, 1);

insert into role_function
  (role_id, function_id, can_view, can_create, can_update, can_delete)
values (4, 'SystemManagement', 0, 0, 0, 0),
       (4, 'UserManagement', 1, 0, 0, 0),
       (4, 'CourseManagement', 1, 0, 0, 0),
       (4, 'EventManagement', 1, 0, 0, 0),
       (4, 'MediaManagement', 1, 0, 0, 0),
       (4, 'RoleList', 0, 0, 0, 0),
       (4, 'FunctionList', 0, 0, 0, 0),
       (4, 'ThemeManagement', 1, 1, 1, 1),
       (4, 'CourseTypeList', 1, 0, 0, 0),
       (4, 'CourseList', 1, 0, 0, 0),
       (4, 'ClassList', 1, 0, 0, 0),
       (4, 'PostTypeList', 1, 1, 1, 1),
       (4, 'PostList', 1, 1, 1, 1),
       (4, 'EventList', 1, 1, 1, 1),
       (4, 'SpeakerList', 1, 1, 1, 1),
       (4, 'ContactList', 1, 0, 0, 0),
       (4, 'UserList', 1, 0, 0, 0),
       (4, 'PhotoList', 1, 1, 1, 1),
       (4, 'VideoList', 1, 1, 1, 1);

DELIMITER $$
CREATE procedure `getinsvn`.`getNewestPost`()
BEGIN
       SELECT * FROM post ORDER BY id DESC LIMIT 3;
END;