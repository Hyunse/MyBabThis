
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
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE rreply CASCADE CONSTRAINTS;
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
	board_title varchar2(1000) NOT NULL,
	board_content varchar2(10000) NOT NULL,
	board_regdate date DEFAULT sysdate NOT NULL,
	board_updatedate date DEFAULT sysdate NOT NULL,
	board_type char NOT NULL,
	user_id varchar2(100) NOT NULL,
	PRIMARY KEY (board_no)
);


CREATE TABLE breply
(
	breply_no number NOT NULL,
	breply_content varchar2(5000) NOT NULL,
	breply_regdate date DEFAULT sysdate NOT NULL,
	breply_updatedate date DEFAULT sysdate NOT NULL,
	user_id varchar2(100) NOT NULL,
	board_no number NOT NULL,
	PRIMARY KEY (breply_no)
);


CREATE TABLE favorite
(
	user_id varchar2(100) NOT NULL,
	res_no number NOT NULL
);


CREATE TABLE favorite_loc
(
	user_id varchar2(100) NOT NULL,
	loc_name varchar2(50) NOT NULL
);


CREATE TABLE friend
(
	user_id varchar2(100) NOT NULL,
	friend_id varchar2(100) NOT NULL
);


CREATE TABLE img
(
	img_no number NOT NULL,
	img_path varchar2(1000),
	PRIMARY KEY (img_no)
);


CREATE TABLE license
(
	license_no number NOT NULL,
	write_cnt number NOT NULL,
	loc_name varchar2(50),
	res_kind varchar2(50),
	license_name varchar2(50),
	PRIMARY KEY (license_no)
);


CREATE TABLE licensed_user
(
	user_id varchar2(100) NOT NULL,
	license_no number NOT NULL
);


CREATE TABLE loc
(
	loc_name varchar2(50) NOT NULL,
	PRIMARY KEY (loc_name)
);


CREATE TABLE msg
(
	msg_no number NOT NULL,
	receiver varchar2(100) NOT NULL,
	sender varchar2(100) NOT NULL,
	msg_content varchar2(5000) NOT NULL,
	write_date date DEFAULT sysdate NOT NULL,
	write_type char NOT NULL,
	warn_no number,
	check_sum char,
	PRIMARY KEY (msg_no)
);


CREATE TABLE restaurant
(
	res_no number NOT NULL,
	res_name varchar2(500) NOT NULL,
	res_number varchar2(100) NOT NULL,
	res_score number DEFAULT 0 NOT NULL,
	res_loc varchar2(500) NOT NULL,
	res_content varchar2(10000) NOT NULL,
	user_id varchar2(100) NOT NULL,
	res_img varchar2(500) DEFAULT 'noimage.jpg' NOT NULL,
	loc_name varchar2(50) NOT NULL,
	res_kind varchar2(50) NOT NULL,
	res_regdate date DEFAULT sysdate NOT NULL,
	res_updatedate date DEFAULT sysdate NOT NULL,
	PRIMARY KEY (res_no)
);


CREATE TABLE review
(
	review_no number NOT NULL,
	review_score number NOT NULL,
	review_title varchar2(1000) DEFAULT 'NoTitle' NOT NULL,
	review_content varchar2(10000) NOT NULL,
	review_regdate date DEFAULT sysdate NOT NULL,
	review_updatedate date NOT NULL,
	res_no number NOT NULL,
	user_id varchar2(100) NOT NULL,
	PRIMARY KEY (review_no)
);


CREATE TABLE rreply
(
	rreply_no number NOT NULL,
	rreply_content varchar2(5000) NOT NULL,
	rreply_regdate date DEFAULT sysdate NOT NULL,
	rreply_updatedate date DEFAULT sysdate NOT NULL,
	res_no number NOT NULL,
	user_id varchar2(100) NOT NULL,
	PRIMARY KEY (rreply_no)
);


CREATE TABLE users
(
	user_id varchar2(100) NOT NULL,
	user_pass varchar2(100) NOT NULL,
	user_name varchar2(100) NOT NULL UNIQUE,
	user_email varchar2(100) NOT NULL UNIQUE,
	user_gender char NOT NULL,
	user_phone varchar2(100) NOT NULL,
	user_regdate date DEFAULT sysdate NOT NULL,
	user_updatedate date DEFAULT sysdate NOT NULL,
	user_grade varchar2(50) DEFAULT '학사' NOT NULL,
	user_img varchar2(500) DEFAULT 'noimage.jsp' NOT NULL,
	user_activation char,
	PRIMARY KEY (user_id)
);



/* Create Foreign Keys */

ALTER TABLE breply
	ADD FOREIGN KEY (board_no)
	REFERENCES board (board_no)
on delete cascade;


ALTER TABLE licensed_user
	ADD FOREIGN KEY (license_no)
	REFERENCES license (license_no)
on delete cascade;


ALTER TABLE restaurant
	ADD FOREIGN KEY (loc_name)
	REFERENCES loc (loc_name)
on delete cascade;


ALTER TABLE favorite_loc
	ADD FOREIGN KEY (loc_name)
	REFERENCES loc (loc_name)
on delete cascade;


ALTER TABLE review
	ADD FOREIGN KEY (res_no)
	REFERENCES restaurant (res_no)
on delete cascade;


ALTER TABLE favorite
	ADD FOREIGN KEY (res_no)
	REFERENCES restaurant (res_no)
on delete cascade;


ALTER TABLE rreply
	ADD FOREIGN KEY (res_no)
	REFERENCES restaurant (res_no)
on delete cascade;


ALTER TABLE favorite
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE licensed_user
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE board
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE restaurant
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE review
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE breply
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE rreply
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE favorite_loc
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;


ALTER TABLE friend
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
on delete cascade;



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
/*디폴트 데이터 */
/*****지역이름*******/
insert into loc (loc_name) values('강남');
insert into loc (loc_name) values('송파');
insert into loc (loc_name) values('대학로');
insert into loc (loc_name) values('신림');
insert into loc (loc_name) values('건대');
insert into loc (loc_name) values('홍대');
insert into loc (loc_name) values('종로');
insert into loc (loc_name) values('영등포');

/*****자격증DB*******/
insert into license (write_cnt, loc_name, license_name ) values(3, '강남', '강남 마스터');
insert into license (write_cnt, loc_name, license_name ) values(3, '송파', '강남 마스터');
insert into license (write_cnt, loc_name, license_name ) values(3, '대학로', '대학로 마스터');
insert into license (write_cnt, loc_name, license_name ) values(3, '신림', '신림 마스터');
insert into license (write_cnt, loc_name, license_name ) values(3, '건대', '건대 마스터');
insert into license (write_cnt, loc_name, license_name ) values(3, '홍대', '홍대 마스터');
insert into license (write_cnt, loc_name, license_name ) values(3, '종로', '종로 마스터');
insert into license (write_cnt, loc_name, license_name ) values(3, '영등포', '영등포 마스터');

insert into license (write_cnt, res_kind, license_name ) values(3, '한식', '한식 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '중식', '중식 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '일식', '일식 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '양식', '양식 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '분식', '분식 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '치킨', '치킨 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '피자', '피자 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '햄버거', '햄버거 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '베이커리', '베이커리 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '디저트', '디저트 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '카페', '카페 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '안주', '안주 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '고기', '고기 마스터');
insert into license (write_cnt, res_kind, license_name ) values(3, '기타', '기타 리스트');




