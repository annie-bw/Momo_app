create table transactions
(
    transactions_id int auto_increment
        primary key,
    fin_trans_id    varchar(50)    null comment 'Financial transaction ID extracted from SMS',
    amount          decimal(12, 2) null comment 'Transaction amount',
    fees            decimal(12, 2) null comment 'Transaction processing fees',
    createdAt       datetime       null comment 'Date and time when the transaction occurred',
    trans_cat_id    int            not null,
    constraint fin_trans_id
        unique (fin_trans_id),
    constraint trans_fin_ix
        unique (fin_trans_id),
    constraint fk_transaction_category
        foreign key (trans_cat_id) references transaction_category (trans_cat_id)
            on delete cascade
);

create index createdAt_ix
    on transactions (createdAt);

create index trans_cat_idx
    on transactions (trans_cat_id);
