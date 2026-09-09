create table users(
  id serial primary key,
  username varchar(50)
);

insert into users (username)
values ('user1'), ('user2');

create table photos(
  id serial primary key,
  url varchar(200),
  user_id integer references users(id)
);


insert into photos(url, user_id)
values  
      ('http://img1.com', 1),
      ('http://img2.com', 1),
      ('http://img3.com', 2),
      ('http://img4.com', 2);
      

select * from users u join photos p on p.user_id = u.id;