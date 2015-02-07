
/* Drop Triggers */

DROP TRIGGER TRI_board_board_no;
DROP TRIGGER TRI_breply_breply_no;
DROP TRIGGER TRI_img_img_no;
DROP TRIGGER TRI_license_license_no;
DROP TRIGGER TRI_msg_msg_no;
DROP TRIGGER TRI_restaurant_res_no;
DROP TRIGGER TRI_review_review_no;
DROP TRIGGER TRI_rreply_rreply_no;



/* Drop Tables */

DROP TABLE breply CASCADE CONSTRAINTS;
DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE favorite CASCADE CONSTRAINTS;
DROP TABLE favorite_loc CASCADE CONSTRAINTS;
DROP TABLE friend CASCADE CONSTRAINTS;
DROP TABLE img CASCADE CONSTRAINTS;
DROP TABLE licensed_user CASCADE CONSTRAINTS;
DROP TABLE license CASCADE CONSTRAINTS;
DROP TABLE rreply CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE restaurant CASCADE CONSTRAINTS;
DROP TABLE loc CASCADE CONSTRAINTS;
DROP TABLE msg CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_board_board_no;
DROP SEQUENCE SEQ_breply_breply_no;
DROP SEQUENCE SEQ_img_img_no;
DROP SEQUENCE SEQ_license_license_no;
DROP SEQUENCE SEQ_msg_msg_no;
DROP SEQUENCE SEQ_restaurant_res_no;
DROP SEQUENCE SEQ_review_review_no;
DROP SEQUENCE SEQ_rreply_rreply_no;




/* Create Sequences */

CREATE SEQUENCE SEQ_board_board_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_breply_breply_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_img_img_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_license_license_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_msg_msg_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_restaurant_res_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_review_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_rreply_rreply_no INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE board
(
	board_no number NOT NULL,
	board_title varchar2(20) NOT NULL,
	board_content varchar2(500) NOT NULL,
	board_regdate date DEFAULT sysdate NOT NULL,
	board_updatedate date DEFAULT sysdate NOT NULL,
	board_type char NOT NULL,
	user_id varchar2(20) NOT NULL,
	PRIMARY KEY (board_no)
);


CREATE TABLE breply
(
	breply_no number NOT NULL,
	breply_content varchar2(200) NOT NULL,
	breply_regdate date DEFAULT sysdate NOT NULL,
	breply_updatedate date DEFAULT sysdate NOT NULL,
	user_id varchar2(20) NOT NULL,
	board_no number NOT NULL,
	PRIMARY KEY (breply_no)
);


CREATE TABLE favorite
(
	user_id varchar2(20) NOT NULL,
	res_no number NOT NULL
);


CREATE TABLE favorite_loc
(
	user_id varchar2(20) NOT NULL,
	loc_name varchar2(20) NOT NULL
);


CREATE TABLE friend
(
	user_id varchar2(20) NOT NULL,
	friend_id varchar2(20) NOT NULL
);


CREATE TABLE img
(
	img_no number NOT NULL,
	img_path varchar2(50),
	PRIMARY KEY (img_no)
);


CREATE TABLE license
(
	license_no number NOT NULL,
	write_cnt number NOT NULL,
	loc_name varchar2(20),
	res_kind varchar2(20),
	PRIMARY KEY (license_no)
);


CREATE TABLE licensed_user
(
	user_id varchar2(20) NOT NULL,
	license_no number NOT NULL
);


CREATE TABLE loc
(
	loc_name varchar2(20) NOT NULL,
	PRIMARY KEY (loc_name)
);


CREATE TABLE msg
(
	msg_no number NOT NULL,
	reciever varchar2(20) NOT NULL,
	sender varchar2(20) NOT NULL,
	msg_content varchar2(500) NOT NULL,
	write_date date DEFAULT sysdate NOT NULL,
	write_type char NOT NULL,
	warn_no number,
	PRIMARY KEY (msg_no)
);


CREATE TABLE restaurant
(
	res_no number NOT NULL,
	res_name varchar2(20) NOT NULL,
	res_number varchar2(20) NOT NULL,
	res_score number DEFAULT 0 NOT NULL,
	res_loc varchar2(20) NOT NULL,
	res_content varchar2(1000) NOT NULL,
	user_id varchar2(20) NOT NULL,
	res_img varchar2(50) DEFAULT 'noimage.jpg' NOT NULL,
	loc_name varchar2(20) NOT NULL,
	rest_kind varchar2(20) NOT NULL,
	res_regdate date DEFAULT sysdate NOT NULL,
	res_updatedate date DEFAULT sysdate NOT NULL,
	PRIMARY KEY (res_no)
);


CREATE TABLE review
(
	review_no number NOT NULL,
	review_score number NOT NULL,
	review_content varchar2(1000) NOT NULL,
	review_regdate date DEFAULT sysdate NOT NULL,
	review_updatedate date NOT NULL,
	res_no number NOT NULL,
	user_id varchar2(20) NOT NULL,
	PRIMARY KEY (review_no)
);


CREATE TABLE rreply
(
	rreply_no number NOT NULL,
	rreply_content varchar2(500) NOT NULL,
	rreply_regdate date DEFAULT sysdate NOT NULL,
	rreply_updatedate date DEFAULT sysdate NOT NULL,
	res_no number NOT NULL,
	user_id varchar2(20) NOT NULL,
	PRIMARY KEY (rreply_no)
);


CREATE TABLE users
(
	user_id varchar2(20) NOT NULL,
	user_pass varchar2(20) NOT NULL,
	user_name varchar2(20) NOT NULL UNIQUE,
	user_email varchar2(30) NOT NULL UNIQUE,
	user_gender char NOT NULL,
	user_phone varchar2(20) NOT NULL,
	user_regdate date DEFAULT sysdate NOT NULL,
	user_updatedate date DEFAULT sysdate NOT NULL,
	user_grade varchar2(20) DEFAULT '학사' NOT NULL,
	user_img varchar2(50) DEFAULT 'noimage.jsp' NOT NULL,
	user_activation char,
	PRIMARY KEY (user_id)
);



/* Create Foreign Keys */

ALTER TABLE breply
	ADD FOREIGN KEY (board_no)
	REFERENCES board (board_no)
;


ALTER TABLE licensed_user
	ADD FOREIGN KEY (license_no)
	REFERENCES license (license_no)
;


ALTER TABLE restaurant
	ADD FOREIGN KEY (loc_name)
	REFERENCES loc (loc_name)
;


ALTER TABLE favorite_loc
	ADD FOREIGN KEY (loc_name)
	REFERENCES loc (loc_name)
;


ALTER TABLE rreply
	ADD FOREIGN KEY (res_no)
	REFERENCES restaurant (res_no)
;


ALTER TABLE favorite
	ADD FOREIGN KEY (res_no)
	REFERENCES restaurant (res_no)
;


ALTER TABLE review
	ADD FOREIGN KEY (res_no)
	REFERENCES restaurant (res_no)
;


ALTER TABLE friend
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE favorite
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE rreply
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE favorite_loc
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE board
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE review
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE licensed_user
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE restaurant
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE breply
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_board_board_no BEFORE INSERT ON board
FOR EACH ROW
BEGIN
	SELECT SEQ_board_board_no.nextval
	INTO :new.board_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_breply_breply_no BEFORE INSERT ON breply
FOR EACH ROW
BEGIN
	SELECT SEQ_breply_breply_no.nextval
	INTO :new.breply_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_img_img_no BEFORE INSERT ON img
FOR EACH ROW
BEGIN
	SELECT SEQ_img_img_no.nextval
	INTO :new.img_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_license_license_no BEFORE INSERT ON license
FOR EACH ROW
BEGIN
	SELECT SEQ_license_license_no.nextval
	INTO :new.license_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_msg_msg_no BEFORE INSERT ON msg
FOR EACH ROW
BEGIN
	SELECT SEQ_msg_msg_no.nextval
	INTO :new.msg_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_restaurant_res_no BEFORE INSERT ON restaurant
FOR EACH ROW
BEGIN
	SELECT SEQ_restaurant_res_no.nextval
	INTO :new.res_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_review_no BEFORE INSERT ON review
FOR EACH ROW
BEGIN
	SELECT SEQ_review_review_no.nextval
	INTO :new.review_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_rreply_rreply_no BEFORE INSERT ON rreply
FOR EACH ROW
BEGIN
	SELECT SEQ_rreply_rreply_no.nextval
	INTO :new.rreply_no
	FROM dual;
END;

/




