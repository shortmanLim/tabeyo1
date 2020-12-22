CREATE SEQUENCE seq_board;

CREATE TABLE tbl_board(
    bno NUMBER(10,0) CONSTRAINT pk_board PRIMARY KEY,
    title   VARCHAR2(200) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    writer  VARCHAR2(50) NOT NULL,
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT SYSDATE
    );
    
INSERT INTO tbl_board(bno, title, content, writer)
VALUES  (seq_board.NEXTVAL,'테스트 제목', '테스트 내용', 'user00');

CREATE TABLE tbl_reply (
    rno		NUMBER(10, 0)	CONSTRAINT pk_reply PRIMARY KEY,
    bno		NUMBER(10, 0)	CONSTRAINT fk_reply	REFERENCES tbl_board(bno)	NOT NULL,
    reply		VARCHAR2(1000)	NOT NULL,
    replyer	VARCHAR2(50)	NOT NULL,
    replyDate	DATE DEFAULT SYSDATE,
    updateDate	DATE DEFAULT SYSDATE
    );
    
    CREATE SEQUENCE seq_reply
    START WITH 1
    MAXVALUE 999999999999999
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
    
    ALTER TABLE tbl_reply add CONSTRAINT PK_REPLY PRIMARY KEY (rno);
    
   ALTER TABLE tbl_reply add CONSTRAINT fk_reply_board foreign key (bno) references tbl_board (bno);

CREATE  INDEX idx_reply ON tbl_reply(bno DESC, rno ASC);

CREATE TABLE users(
    username  VARCHAR2(50) NOT NULL PRIMARY KEY,
    password  VARCHAR2(50) NOT NULL,
    enabled char(1) default '1');

 
 create table authorities(
    username varchar2(50) not null,
    authority varchar2(50) not null,
    constraint fk_authorities_users foreign key(username) references users(username
    ));
    
    create unique index ix_auth_username on authorities (username,authority);
    
    insert into users (username, password) values ('user00','pw00');
    insert into users (username, password) values ('member00','pw00');
    insert into users (username, password) values ('admin00','pw00');
    
    insert into authorities (username , authority) values('user00','ROLE_USER');
    insert into authorities (username , authority) values('member00','ROLE_MANAGER');
    insert into authorities (username , authority) values('admin00','ROLE_MANAGER');
    insert into authorities (username , authority) values('admin00','ROLE_ADMIN');

    CREATE TABLE tbl_member(                 
                        userid VARCHAR2(50) NOT NULL PRIMARY KEY,        
                        userpw VARCHAR2(100) NOT NULL, 
                        username VARCHAR2(100) NOT NULL,  
                        regdate DATE DEFAULT SYSDATE,
                        updatedate DATE DEFAULT SYSDATE,
                        enabled char(1) default '1'
                        ); 
                        
     create table tbl_member_auth(
        userid varchar2(50) not null,
        auth varchar2(50) not null,
        constraint fk_member_auth foreign key(userid) references tbl_member(userid)
        );