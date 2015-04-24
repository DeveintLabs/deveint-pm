CREATE TABLE user(
	uid int primary key auto_increment,
	first_name varchar(30),
	last_name varchar(30),
	initial varchar(5),
	designation varchar(20),
	email varchar(50),
	password varchar(50),
	is_admin int
);

CREATE TABLE client(
	cid int primary key auto_increment,
	name varchar(50),
	website varchar(50),
	phone varchar(50),
	email varchar(50)
);

CREATE TABLE project(
	pid int primary key auto_increment,
	name varchar(50),
	percentage_complete int,
	status varchar(20),
	start_date date,
	end_date date,
	technologies text,
	url_dev varchar(100),
	url_live varchar(100),
	contract_signed int,
	quote_agreed int,
	dropbox_folder varchar(100),
	cid int,
	foreign key(cid) references client(cid)
);

CREATE TABLE project_comment(
	pcid int primary key auto_increment,
	uid int,
	comment text,
	foreign key(uid) references user(uid)
);

CREATE TABLE user_project(
	upid int primary key auto_increment,
	uid int,
	pid int,
	role varchar(30),
	foreign key(uid) references user(uid),
	foreign key(pid) references project(pid)
);

CREATE TABLE time_log(
	tid int primary key auto_increment,
	upid int,
	time int,
	date_time timestamp default current_timestamp,
	foreign key(upid) references user_project(upid)
);

CREATE TABLE contact_person(
	cpid int primary key auto_increment,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(50),
	phone varchar(30),
	pid int,
	foreign key(pid) references project(pid)
);