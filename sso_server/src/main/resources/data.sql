use sso;
begin;
insert into users (username,password,enabled) values ('admin','$2a$10$9I6SVCzLL8W4erROJxJSJ.tk2SWsDMIrIYuGlYSt/LHISdHcZqGGW',true);
insert into `groups` (`group_name`) values ('administrator');
select @gid:=@@IDENTITY;
insert into group_members (group_id, username) VALUES (@gid,'admin');
insert into group_authorities(group_id, authority) VALUES (@gid,'all');
commit ;