create table transaction_category
(
    trans_cat_id int auto_increment
        primary key,
    name         varchar(30) null comment 'Type of transaction such as deposit, transfer, withdrawal, or airtime',
    constraint name
        unique (name),
    constraint trans_name_ix
        unique (name)
);