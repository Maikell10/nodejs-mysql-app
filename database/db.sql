CREATE DATABASE database_links;

USE database_links;

-- USERS TABLE
CREATE TABLE users(
    id INT(11) NOT NULL IDENTITY(1,1),
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY (id);


--LINKS TABLE
CREATE TABLE links(
    id INT(11) NOT NULL IDENTITY(1,1),
    title VARCHAR(150) not null,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT(11),
    create_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE links
    ADD PRIMARY KEY (id);