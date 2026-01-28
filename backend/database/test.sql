USE defaultdb;

-- =========================
-- USERS TABLE CRUD TESTING
-- =========================

INSERT INTO users (name, phone, password_hash, role_id)
VALUES
('Alice Mukamana', '0788000001', 'hash_1', 1),
('Jean Claude', '0788000002', 'hash_2', 1),
('Eric Niyonzima', '0788000003', 'hash_3', 2),
('Grace Uwimana', '0788000004', 'hash_4', 2),
('Admin User', '0788000005', 'hash_5', 3);

SELECT * FROM users;

UPDATE users
SET name = 'Jean Claude N.'
WHERE phone = '0788000002';

SELECT * FROM users WHERE phone = '0788000002';

DELETE FROM users
WHERE phone = '0788000005';

SELECT * FROM users;


-- =========================
-- SYSTEM_LOGS TABLE CRUD TESTING
-- =========================

INSERT INTO system_logs (user_id, enteredAt, finishedAt, action, message, message_body)
VALUES
(1, NOW(), NOW(), 'LOGIN', 'success', 'User logged in successfully'),
(2, NOW(), NOW(), 'TRANSFER', 'success', 'Transferred funds to another user'),
(3, NOW(), NOW(), 'WITHDRAW', 'error', 'Insufficient balance'),
(4, NOW(), NOW(), 'UPDATE_PROFILE', 'success', 'User updated profile details'),
(1, NOW(), NOW(), 'LOGOUT', 'success', 'User logged out');

SELECT * FROM system_logs;

UPDATE system_logs
SET message = 'success',
    message_body = 'Withdrawal completed after retry'
WHERE action = 'WITHDRAW';

SELECT * FROM system_logs WHERE action = 'WITHDRAW';

DELETE FROM system_logs
WHERE action = 'LOGOUT';

SELECT * FROM system_logs;


-- =========================
-- TRANSACTIONS TABLE CRUD TESTING
-- =========================

INSERT INTO transactions (fin_trans_id, amount, fees, trans_cat_id) VALUES
('78654326', 2000.00, 0.00, 20),
('78654327', 150.00, 0.00, 21),
('78654328', 5000.00, 0.00, 22),
('78654329', 1200.00, 0.00, 23),
('78654330', 300.00, 0.00, 24);

select * from transactions;

UPDATE transactions
SET amount = 3500.00
WHERE fin_trans_id = '78654322';

DELETE FROM transactions
WHERE fin_trans_id = '78654321';
