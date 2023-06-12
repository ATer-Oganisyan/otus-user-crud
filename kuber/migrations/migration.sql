create table user (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
login VARCHAR(255) NOT NULL,
pwd_crypted VARCHAR(255) NOT NULL,
age INT NOT NULL,
user_role VARCHAR(255) NOT NULL DEFAULT "user"
);

insert user values (1, "Root", "root", "098f6bcd4621d373cade4e832627b4f6", 1, "admin");
insert user values (2, "Money_Source", "money_source", "098f6bcd4621d373cade4e832627b4f6", 1, "money_source");