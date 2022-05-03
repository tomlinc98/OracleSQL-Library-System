create or replace view vw_users
 as
 
 select username,
        password,
        first_name,
        last_name
        email,
        u_type
 from   users
 where  status_id = (select status_id
                     from   status_user
                     where  code = 10)
