DROP TABLE IF EXISTS user_clients CASCADE;

CREATE TABLE user_clients (
    user_id int8 NOT NULL,
    client_id int8 NOT NULL,
    CONSTRAINT user_clients_pkey PRIMARY KEY (client_id, user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);


ALTER TABLE roles DROP CONSTRAINT roles_name_check;

ALTER TABLE roles
ADD CONSTRAINT roles_name_check
CHECK (
  name IN ('CONTACT_NORMAL', 'CONTACT_ADMIN', 'ADMIN', 'COMERCIAL')
);

INSERT INTO roles(name) VALUES ('COMERCIAL');

INSERT INTO user_clients (user_id, client_id) VALUES (2, 25);
INSERT INTO user_clients (user_id, client_id) VALUES (5, 37);
INSERT INTO user_clients (user_id, client_id) VALUES (3, 36);
INSERT INTO user_clients (user_id, client_id) VALUES (3, 25);
INSERT INTO user_clients (user_id, client_id) VALUES (6, 36);
INSERT INTO user_clients (user_id, client_id) VALUES (8, 44);
INSERT INTO user_clients (user_id, client_id) VALUES (10, 60);
INSERT INTO user_clients (user_id, client_id) VALUES (11, 69);
INSERT INTO user_clients (user_id, client_id) VALUES (13, 34);
INSERT INTO user_clients (user_id, client_id) VALUES (13, 9);
INSERT INTO user_clients (user_id, client_id) VALUES (13, 76);
INSERT INTO user_clients (user_id, client_id) VALUES (13, 46);
INSERT INTO user_clients (user_id, client_id) VALUES (14, 80);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 27);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 76);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 45);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 80);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 31);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 20);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 41);
INSERT INTO user_clients (user_id, client_id) VALUES (15, 53);
INSERT INTO user_clients (user_id, client_id) VALUES (16, 36);
INSERT INTO user_clients (user_id, client_id) VALUES (18, 80);
INSERT INTO user_clients (user_id, client_id) VALUES (20, 79);
INSERT INTO user_clients (user_id, client_id) VALUES (20, 40);
INSERT INTO user_clients (user_id, client_id) VALUES (22, 36);
INSERT INTO user_clients (user_id, client_id) VALUES (24, 44);
INSERT INTO user_clients (user_id, client_id) VALUES (26, 81);
INSERT INTO user_clients (user_id, client_id) VALUES (26, 50);
INSERT INTO user_clients (user_id, client_id) VALUES (26, 15);
INSERT INTO user_clients (user_id, client_id) VALUES (26, 30);
INSERT INTO user_clients (user_id, client_id) VALUES (26, 32);
INSERT INTO user_clients (user_id, client_id) VALUES (27, 78);
INSERT INTO user_clients (user_id, client_id) VALUES (28, 25);
INSERT INTO user_clients (user_id, client_id) VALUES (29, 25);
INSERT INTO user_clients (user_id, client_id) VALUES (30, 63);
INSERT INTO user_clients (user_id, client_id) VALUES (31, 32);
INSERT INTO user_clients (user_id, client_id) VALUES (34, 36);
INSERT INTO user_clients (user_id, client_id) VALUES (35, 15);