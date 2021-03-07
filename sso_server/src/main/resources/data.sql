use sso;
begin;
insert into users (username, password, enabled)
values ('admin', '$2a$10$9I6SVCzLL8W4erROJxJSJ.tk2SWsDMIrIYuGlYSt/LHISdHcZqGGW', true);
insert into `groups` (`group_name`)
values ('administrator');
select @gid := @@IDENTITY;
insert into group_members (group_id, username)
VALUES (@gid, 'admin');
insert into group_authorities(group_id, authority)
VALUES (@gid, 'all');
insert into oauth_client_details(client_id, client_secret, resource_ids, scope, authorized_grant_types,
                                 web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity,
                                 additional_information, autoapprove)
values ('decision_management', '$2a$10$9I6SVCzLL8W4erROJxJSJ.tk2SWsDMIrIYuGlYSt/LHISdHcZqGGW', null, 'user',
        'authorization_code', 'http://localhost:10000/login', null, 7200, 7200, 'decision management', 'true');
commit;