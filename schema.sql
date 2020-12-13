CREATE DATABASE doingsdone
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE doingsdone;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    password CHAR(64) NOT NULL UNIQUE,
    dt_add TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dt_task TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    st_check INT(1) DEFAULT 0,
    title_task VARCHAR(128) NOT NULL,
    dl_file VARCHAR(4000),
    dt_end DATE
);

CREATE TABLE projects (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title_project VARCHAR(128) NOT NULL
);
