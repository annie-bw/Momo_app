
create table system_logs
(
    log_id       int auto_increment
        primary key,
    user_id      int         not null,
    enteredAt    datetime    null comment 'Timestamp when the action started',
    finishedAt   datetime    null comment 'Timestamp when the action completed',
    action       varchar(50) null comment 'Action performed by the user',
    message      varchar(20) null comment 'Status of the operation (success or error)',
    message_body text        null comment 'Detailed system log message'
);

create index logs_enteredAt_ix
    on system_logs (enteredAt);

create index logs_user_idx
    on system_logs (user_id);
