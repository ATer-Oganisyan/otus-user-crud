create table user (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
login VARCHAR(255) NOT NULL,
pwd_crypted VARCHAR(255) NOT NULL,
age INT NOT NULL
);