CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Primary key for system users',

    name VARCHAR(100) NULL COMMENT 'Full name of the user',

    phone VARCHAR(15) NULL COMMENT 'Unique phone number from MoMo SMS',

    password_hash VARCHAR(255) NULL COMMENT 'Encrypted user password',

    role_id INT NOT NULL COMMENT 'References roles.role_id',

    CONSTRAINT uq_users_phone UNIQUE (phone),

    CONSTRAINT fk_users_roles
        FOREIGN KEY (role_id)
        REFERENCES roles (role_id)
        ON UPDATE CASCADE
);


create index phone_ix
    on users (phone);

create index role_id_ix
    on users (role_id);