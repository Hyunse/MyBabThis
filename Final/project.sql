
/* Drop Triggers */

DROP TRIGGER TRI_boards_boards_no;
DROP TRIGGER TRI_image_image_no;
DROP TRIGGER TRI_license_license_no;
DROP TRIGGER TRI_message_message_no;
DROP TRIGGER TRI_replys_boards_reply_no;
DROP TRIGGER TRI_reply_board_reply_no;
DROP TRIGGER TRI_restaurants_restaurant_no;
DROP TRIGGER TRI_review_board_review_no;



/* Drop Tables */

DROP TABLE replys CASCADE CONSTRAINTS;
DROP TABLE boards CASCADE CONSTRAINTS;
DROP TABLE favorite CASCADE CONSTRAINTS;
DROP TABLE favorite_location CASCADE CONSTRAINTS;
DROP TABLE friend CASCADE CONSTRAINTS;
DROP TABLE image CASCADE CONSTRAINTS;
DROP TABLE licensed_user CASCADE CONSTRAINTS;
DROP TABLE license CASCADE CONSTRAINTS;
DROP TABLE reply_board CASCADE CONSTRAINTS;
DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE restaurants CASCADE CONSTRAINTS;
DROP TABLE location CASCADE CONSTRAINTS;
DROP TABLE message CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_boards_boards_no;
DROP SEQUENCE SEQ_image_image_no;
DROP SEQUENCE SEQ_license_license_no;
DROP SEQUENCE SEQ_message_message_no;
DROP SEQUENCE SEQ_replys_boards_reply_no;
DROP SEQUENCE SEQ_reply_board_reply_no;
DROP SEQUENCE SEQ_restaurants_restaurant_no;
DROP SEQUENCE SEQ_review_board_review_no;




/* Create Sequences */

CREATE SEQUENCE SEQ_boards_boards_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_image_image_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_license_license_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_message_message_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_replys_boards_reply_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_reply_board_reply_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_restaurants_restaurant_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_board_review_no INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE boards
(
	boards_no number NOT NULL,
	boards_title varchar2(20) NOT NULL,
	boards_content varchar2(500) NOT NULL,
	boards_date date DEFAULT sysdate NOT NULL,
	boards_type char NOT NULL,
	user_id varchar2(20) NOT NULL,
	PRIMARY KEY (boards_no)
);


CREATE TABLE favorite
(
	user_id varchar2(20) NOT NULL,
	restaurant_no number NOT NULL
);


CREATE TABLE favorite_location
(
	user_id varchar2(20) NOT NULL,
	locaion_name varchar2(20) NOT NULL
);


CREATE TABLE friend
(
	user_id varchar2(20) NOT NULL,
	friend_id varchar2(20) NOT NULL
);


CREATE TABLE image
(
	image_no number NOT NULL,
	image_path varchar2(50),
	PRIMARY KEY (image_no)
);


CREATE TABLE license
(
	license_no number NOT NULL,
	write_cnt number NOT NULL,
	location_name varchar2(20),
	restaurant_kind varchar2(20),
	PRIMARY KEY (license_no)
);


CREATE TABLE licensed_user
(
	user_id varchar2(20) NOT NULL,
	license_no number NOT NULL
);


CREATE TABLE location
(
	locaion_name varchar2(20) NOT NULL,
	PRIMARY KEY (locaion_name)
);


CREATE TABLE message
(
	message_no number NOT NULL,
	reciever varchar2(20) NOT NULL,
	sender varchar2(20) NOT NULL,
	message_content varchar2(500) NOT NULL,
	write_date date DEFAULT sysdate NOT NULL,
	warn_check char NOT NULL,
	warn_no number,
	PRIMARY KEY (message_no)
);


CREATE TABLE replys
(
	boards_reply_no number NOT NULL,
	boards_reply_content varchar2(200) NOT NULL,
	boards_reply_date date DEFAULT sysdate NOT NULL,
	user_id varchar2(20) NOT NULL,
	boards_no number NOT NULL,
	PRIMARY KEY (boards_reply_no)
);


CREATE TABLE reply_board
(
	reply_no number NOT NULL,
	reply_content varchar2(500) NOT NULL,
	reply_regdate date DEFAULT sysdate NOT NULL,
	reply_updatedate date DEFAULT sysdate NOT NULL,
	restaurant_no number NOT NULL,
	user_id varchar2(20) NOT NULL,
	PRIMARY KEY (reply_no)
);


CREATE TABLE restaurants
(
	restaurant_no number NOT NULL,
	restaurant_name varchar2(20) NOT NULL,
	restaurant_number varchar2(20) NOT NULL,
	restaurant_score number DEFAULT 0 NOT NULL,
	restaurant_location varchar2(20) NOT NULL,
	restaurant_content varchar2(1000) NOT NULL,
	user_id varchar2(20) NOT NULL,
	restautant_image varchar2(50) DEFAULT 'noimage.jpg' NOT NULL,
	locaion_name varchar2(20) NOT NULL,
	restaurant_kind varchar2(20) NOT NULL,
	PRIMARY KEY (restaurant_no)
);


CREATE TABLE review_board
(
	review_no number NOT NULL,
	review_score number NOT NULL,
	review_content varchar2(1000) NOT NULL,
	review_regdate date DEFAULT sysdate NOT NULL,
	review_updatedate date NOT NULL,
	restaurant_no number NOT NULL,
	user_id varchar2(20) NOT NULL,
	PRIMARY KEY (review_no)
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
	user_activation char,
	user_image varchar2(50) DEFAULT 'noimage.jsp' NOT NULL,
	PRIMARY KEY (user_id)
);



/* Create Foreign Keys */

ALTER TABLE replys
	ADD FOREIGN KEY (boards_no)
	REFERENCES boards (boards_no)
;


ALTER TABLE licensed_user
	ADD FOREIGN KEY (license_no)
	REFERENCES license (license_no)
;


ALTER TABLE favorite_location
	ADD FOREIGN KEY (locaion_name)
	REFERENCES location (locaion_name)
;


ALTER TABLE restaurants
	ADD FOREIGN KEY (locaion_name)
	REFERENCES location (locaion_name)
;


ALTER TABLE reply_board
	ADD FOREIGN KEY (restaurant_no)
	REFERENCES restaurants (restaurant_no)
;


ALTER TABLE review_board
	ADD FOREIGN KEY (restaurant_no)
	REFERENCES restaurants (restaurant_no)
;


ALTER TABLE favorite
	ADD FOREIGN KEY (restaurant_no)
	REFERENCES restaurants (restaurant_no)
;


ALTER TABLE boards
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE reply_board
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE restaurants
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE favorite
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE review_board
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE licensed_user
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE favorite_location
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE friend
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE replys
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_boards_boards_no BEFORE INSERT ON boards
FOR EACH ROW
BEGIN
	SELECT SEQ_boards_boards_no.nextval
	INTO :new.boards_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_image_image_no BEFORE INSERT ON image
FOR EACH ROW
BEGIN
	SELECT SEQ_image_image_no.nextval
	INTO :new.image_no
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

CREATE OR REPLACE TRIGGER TRI_message_message_no BEFORE INSERT ON message
FOR EACH ROW
BEGIN
	SELECT SEQ_message_message_no.nextval
	INTO :new.message_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_replys_boards_reply_no BEFORE INSERT ON replys
FOR EACH ROW
BEGIN
	SELECT SEQ_replys_boards_reply_no.nextval
	INTO :new.boards_reply_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_reply_board_reply_no BEFORE INSERT ON reply_board
FOR EACH ROW
BEGIN
	SELECT SEQ_reply_board_reply_no.nextval
	INTO :new.reply_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_restaurants_restaurant_no BEFORE INSERT ON restaurants
FOR EACH ROW
BEGIN
	SELECT SEQ_restaurants_restaurant_no.nextval
	INTO :new.restaurant_no
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_board_review_no BEFORE INSERT ON review_board
FOR EACH ROW
BEGIN
	SELECT SEQ_review_board_review_no.nextval
	INTO :new.review_no
	FROM dual;
END;

/




