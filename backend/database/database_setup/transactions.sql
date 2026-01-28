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


INSERT INTO transaction_category (name) VALUES
('Refund'),
('Cashback'),
('Loan Payment'),
('Purchase'),
('Subscription');

select * from transactions;

INSERT INTO transactions (fin_trans_id, amount, fees, trans_cat_id) VALUES
('78654326', 2000.00, 0.00, 20),
('78654327', 150.00, 0.00, 21),
('78654328', 5000.00, 0.00, 22),
('78654329', 1200.00, 0.00, 23),
('78654330', 300.00, 0.00, 24);

UPDATE transactions
SET amount = 3500.00
WHERE fin_trans_id = '78654322';
