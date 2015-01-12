CREATE TABLE T_USER(
	USER_ID NUMBER(10),
	USER_NAME VARCHAR2(30),
	CREDITS NUMBER(5),
	PASSWORD VARCHAR2(32),
	LAST_VISIT TIMESTAMP(6),
	LAST_IP VARCHAR2(23),
	CONSTRAINT PK_T_USER PRIMARY KEY(USER_ID) ENABLE
);

CREATE SEQUENCE T_USER_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 NOORDER NOCYCLE;

CREATE TABLE T_LOGIN_LOG(
	LOGIN_LOG_ID NUMBER(10),
	USER_ID NUMBER(10),
	IP VARCHAR2(23),
	LOGIN_DATETIME TIMESTAMP(6),
	CONSTRAINT PK_T_LOGIN_LOG PRIMARY KEY(LOGIN_LOG_ID) ENABLE
);

CREATE SEQUENCE T_LOGIN_LOG_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 NOORDER NOCYCLE;

INSERT INTO T_USER(USER_ID,USER_NAME,PASSWORD) VALUES(T_USER_SEQ.NEXTVAL,'admin','123456');
COMMIT;
