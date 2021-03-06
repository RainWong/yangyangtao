DROP DATABASE IF EXISTS sampledb;
CREATE DATABASE sampledb DEFAULT CHARACTER SET utf8;

CREATE TABLE t_user(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	user_name VARCHAR(30),
	credits INT,
	password VARCHAR(32),
	last_visit datetime,
	last_ip VARCHAR(23)
)ENGINE=InnoDB;

CREATE TABLE t_login_log(
	login_log_id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT,
	ip VARCHAR(23),
	login_datetime datetime
)ENGINE=InnoDB;

--ENGINE=InnoDB指定表的引擎为InnoDB类型，该类型表支持事务。MySQL默认采用MyISAM引擎，该类型表不支持事务，仅存数数据，优点在于读写很快。

--初始化一条数据
INSERT INTO t_user(user_name,password) VALUES('admin','123456');
COMMIT;