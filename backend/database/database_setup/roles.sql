create table roles
(
    role_id   int auto_increment
        primary key,
    role_name varchar(20) not null,
    constraint role_name
        unique (role_name),
    constraint role_name_ix
        unique (role_name)
);
