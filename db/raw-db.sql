CREATE TABLE admin(
	aid int primary key auto_increment,
	first_name varchar(30),
	last_name varchar(30),
	designation varchar(20),
	email varchar(50),
	password varchar(50)
);

CREATE TABLE dev(
	did int primary key auto_increment,
	first_name varchar(30),
	last_name varchar(30),
	initial varchar(5),
	designation varchar(20),
	email varchar(50),
	password varchar(50)
);