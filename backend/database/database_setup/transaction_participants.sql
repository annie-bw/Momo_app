create table transaction_participants
(
    participant_id int auto_increment
        primary key,
    transaction_id int                         not null,
    user_id        int                         not null,
    role           enum ('sender', 'receiver') null comment 'Defines whether the user is sender or receiver in the transaction',
    constraint transaction_participants_ibfk_1
        foreign key (transaction_id) references transactions (transactions_id)
            on update cascade,
    constraint transaction_participants_ibfk_2
        foreign key (user_id) references users (user_id)
            on update cascade
);

create index idx_tp_transaction_id
    on transaction_participants (transaction_id);

create index idx_tp_user_id
    on transaction_participants (user_id);

create index tp_idx
    on transaction_participants (transaction_id);

create index tp_user_idx
    on transaction_participants (user_id);

