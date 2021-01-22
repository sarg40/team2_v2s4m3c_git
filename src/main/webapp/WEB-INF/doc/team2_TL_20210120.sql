--------------------------------------------------------
--  ������ ������ - ������-1��-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADMIN_LOG_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2"."ADMIN_LOG_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ADMIN_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2"."ADMIN_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 CACHE 2 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FAV_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2"."FAV_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGIN_LOG_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2"."LOGIN_LOG_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 7 CACHE 2 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2"."MEMBER_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 13 CACHE 2 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MYRECOMEND_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2"."MYRECOMEND_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "TEAM2"."ADMIN" 
   (	"ADMIN_NO" NUMBER(10,0), 
	"ADMIN_ID" NUMBER(10,0), 
	"ADMIN_PASSWD" VARCHAR2(30 BYTE), 
	"AUTH_NO" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."ADMIN"."ADMIN_NO" IS '�����ڹ�ȣ';
   COMMENT ON COLUMN "TEAM2"."ADMIN"."ADMIN_ID" IS '������ID';
   COMMENT ON COLUMN "TEAM2"."ADMIN"."ADMIN_PASSWD" IS '������ ��й�ȣ';
   COMMENT ON COLUMN "TEAM2"."ADMIN"."AUTH_NO" IS '���ѹ�ȣ';
   COMMENT ON TABLE "TEAM2"."ADMIN"  IS '������';
--------------------------------------------------------
--  DDL for Table ADMIN_LOG
--------------------------------------------------------

  CREATE TABLE "TEAM2"."ADMIN_LOG" 
   (	"ADMIN_LOG_NO" NUMBER(30,0), 
	"ADMIN_NO" NUMBER(10,0), 
	"ADMIN_LOG_DATE" DATE, 
	"ADMIN_LOG_IP" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."ADMIN_LOG"."ADMIN_LOG_NO" IS '������ �α��� ��ȣ';
   COMMENT ON COLUMN "TEAM2"."ADMIN_LOG"."ADMIN_NO" IS '������ ��ȣ';
   COMMENT ON COLUMN "TEAM2"."ADMIN_LOG"."ADMIN_LOG_DATE" IS '������ �α��� ��¥';
   COMMENT ON COLUMN "TEAM2"."ADMIN_LOG"."ADMIN_LOG_IP" IS '������ �α��� IP';
   COMMENT ON TABLE "TEAM2"."ADMIN_LOG"  IS '������ �α��α��';
--------------------------------------------------------
--  DDL for Table AUTH
--------------------------------------------------------

  CREATE TABLE "TEAM2"."AUTH" 
   (	"AUTH_NO" NUMBER(10,0), 
	"AUTH_CONTENT" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."AUTH"."AUTH_NO" IS '���� ��ȣ';
   COMMENT ON COLUMN "TEAM2"."AUTH"."AUTH_CONTENT" IS '���� �̸�';
   COMMENT ON TABLE "TEAM2"."AUTH"  IS '����';
--------------------------------------------------------
--  DDL for Table AUTHURL
--------------------------------------------------------

  CREATE TABLE "TEAM2"."AUTHURL" 
   (	"AURHURL_NO" NUMBER(10,0), 
	"AUTH_NO" NUMBER(10,0), 
	"URL_NO" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."AUTHURL"."AURHURL_NO" IS '���Ѻ� ���� URL ��ȣ';
   COMMENT ON COLUMN "TEAM2"."AUTHURL"."AUTH_NO" IS '���� ��ȣ';
   COMMENT ON COLUMN "TEAM2"."AUTHURL"."URL_NO" IS '���� �ּ� ��ȣ';
   COMMENT ON TABLE "TEAM2"."AUTHURL"  IS '���Ѻ� ���� URL';
--------------------------------------------------------
--  DDL for Table LOGIN_LOG
--------------------------------------------------------

  CREATE TABLE "TEAM2"."LOGIN_LOG" 
   (	"LOGIN_LOG_NO" NUMBER(30,0), 
	"MEMBER_NO" NUMBER(10,0), 
	"LOGIN_LOG_DATE" DATE, 
	"LOGIN_LOG_IP" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."LOGIN_LOG"."LOGIN_LOG_NO" IS '�α��ι�ȣ';
   COMMENT ON COLUMN "TEAM2"."LOGIN_LOG"."MEMBER_NO" IS 'ȸ����ȣ';
   COMMENT ON COLUMN "TEAM2"."LOGIN_LOG"."LOGIN_LOG_DATE" IS '�α����Ͻ�';
   COMMENT ON COLUMN "TEAM2"."LOGIN_LOG"."LOGIN_LOG_IP" IS '�α������';
   COMMENT ON TABLE "TEAM2"."LOGIN_LOG"  IS '�α��α��';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "TEAM2"."MEMBER" 
   (	"MEMBER_NO" NUMBER(10,0), 
	"MEMBER_ID" VARCHAR2(100 BYTE), 
	"MEMBER_PASSWD" VARCHAR2(100 BYTE), 
	"MEMBER_NICKNAME" VARCHAR2(200 BYTE), 
	"MEMBER_NAME" VARCHAR2(100 BYTE), 
	"MEMBER_ISADULT" NUMBER(20,0), 
	"MEMBER_TEL" NUMBER(20,0), 
	"MEMBER_EMAIL" VARCHAR2(500 BYTE), 
	"MEMBER_RDATE" DATE, 
	"MEMBER_ADDRESS1" VARCHAR2(500 BYTE), 
	"MEMBER_ADDRESS2" VARCHAR2(500 BYTE), 
	"MEMBER_PROFILEPIC" VARCHAR2(100 BYTE), 
	"MEMBERLEVEL_NO" NUMBER(10,0), 
	"AUTH_NO" NUMBER(10,0), 
	"SNSLOGIN_NO" NUMBER(10,0), 
	"MEMBER_PROFILETHUMB" VARCHAR2(50 BYTE), 
	"MEMBER_ZIPCODE" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_NO" IS 'ȸ����ȣ';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_ID" IS 'ID';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_PASSWD" IS '��й�ȣ';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_NICKNAME" IS '�г���';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_NAME" IS '�̸�';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_ISADULT" IS '�ֹε�Ϲ�ȣ';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_TEL" IS '��ȭ��ȣ';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_EMAIL" IS '�̸���';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_RDATE" IS '������';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_ADDRESS1" IS '�ּ�1';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_ADDRESS2" IS '�ּ�2';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_PROFILEPIC" IS '�����ʻ���';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBERLEVEL_NO" IS '���';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."AUTH_NO" IS '���� ��ȣ';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."SNSLOGIN_NO" IS 'SNS�α���';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_PROFILETHUMB" IS '������ ������';
   COMMENT ON COLUMN "TEAM2"."MEMBER"."MEMBER_ZIPCODE" IS '������ȣ';
   COMMENT ON TABLE "TEAM2"."MEMBER"  IS 'ȸ��';
--------------------------------------------------------
--  DDL for Table MEMBERLEVEL
--------------------------------------------------------

  CREATE TABLE "TEAM2"."MEMBERLEVEL" 
   (	"MEMBERLEVEL_NO" NUMBER(10,0), 
	"MEMBERLEVEL_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."MEMBERLEVEL"."MEMBERLEVEL_NO" IS '��� ��ȣ';
   COMMENT ON COLUMN "TEAM2"."MEMBERLEVEL"."MEMBERLEVEL_NAME" IS '��� �̸�';
   COMMENT ON TABLE "TEAM2"."MEMBERLEVEL"  IS '���';
--------------------------------------------------------
--  DDL for Table SNSLOGIN
--------------------------------------------------------

  CREATE TABLE "TEAM2"."SNSLOGIN" 
   (	"SNSLOGIN_NO" NUMBER(10,0), 
	"SNSLOGIN_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."SNSLOGIN"."SNSLOGIN_NO" IS 'SNS���й�ȣ';
   COMMENT ON COLUMN "TEAM2"."SNSLOGIN"."SNSLOGIN_NAME" IS 'SNS��';
   COMMENT ON TABLE "TEAM2"."SNSLOGIN"  IS 'SNS�α���';
--------------------------------------------------------
--  DDL for Table URL
--------------------------------------------------------

  CREATE TABLE "TEAM2"."URL" 
   (	"URL_NO" NUMBER(10,0), 
	"URL_URL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEAM2"."URL"."URL_NO" IS '���� �ּ� ��ȣ';
   COMMENT ON COLUMN "TEAM2"."URL"."URL_URL" IS '���� �ּ�';
   COMMENT ON TABLE "TEAM2"."URL"  IS '���� �ּ�';
REM INSERTING into TEAM2.ADMIN
SET DEFINE OFF;
REM INSERTING into TEAM2.ADMIN_LOG
SET DEFINE OFF;
REM INSERTING into TEAM2.AUTH
SET DEFINE OFF;
Insert into TEAM2.AUTH (AUTH_NO,AUTH_CONTENT) values (2,'�Խ��� ����');
Insert into TEAM2.AUTH (AUTH_NO,AUTH_CONTENT) values (3,'�Ǹ���');
Insert into TEAM2.AUTH (AUTH_NO,AUTH_CONTENT) values (4,'����');
Insert into TEAM2.AUTH (AUTH_NO,AUTH_CONTENT) values (5,'�� ���');
Insert into TEAM2.AUTH (AUTH_NO,AUTH_CONTENT) values (6,'�� ����');
Insert into TEAM2.AUTH (AUTH_NO,AUTH_CONTENT) values (1,'�ְ�����');
REM INSERTING into TEAM2.AUTHURL
SET DEFINE OFF;
REM INSERTING into TEAM2.LOGIN_LOG
SET DEFINE OFF;
Insert into TEAM2.LOGIN_LOG (LOGIN_LOG_NO,MEMBER_NO,LOGIN_LOG_DATE,LOGIN_LOG_IP) values (1,1,to_date('2020-12-14 04:58:34','YYYY-MM-DD HH:MI:SS'),'127.1.1.8');
Insert into TEAM2.LOGIN_LOG (LOGIN_LOG_NO,MEMBER_NO,LOGIN_LOG_DATE,LOGIN_LOG_IP) values (2,2,to_date('2020-12-14 04:58:37','YYYY-MM-DD HH:MI:SS'),'1.0.0.1');
Insert into TEAM2.LOGIN_LOG (LOGIN_LOG_NO,MEMBER_NO,LOGIN_LOG_DATE,LOGIN_LOG_IP) values (4,2,to_date('2020-12-14 04:59:07','YYYY-MM-DD HH:MI:SS'),'127.1.1.8');
Insert into TEAM2.LOGIN_LOG (LOGIN_LOG_NO,MEMBER_NO,LOGIN_LOG_DATE,LOGIN_LOG_IP) values (5,1,to_date('2020-12-14 04:59:10','YYYY-MM-DD HH:MI:SS'),'127.1.1.8');
REM INSERTING into TEAM2.MEMBER
SET DEFINE OFF;
Insert into TEAM2.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NICKNAME,MEMBER_NAME,MEMBER_ISADULT,MEMBER_TEL,MEMBER_EMAIL,MEMBER_RDATE,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_PROFILEPIC,MEMBERLEVEL_NO,AUTH_NO,SNSLOGIN_NO,MEMBER_PROFILETHUMB,MEMBER_ZIPCODE) values (1,'test1','1234','����','ȫ�浿',9001011234567,1012345678,'test1@gmail.com',to_date('2020-12-14 04:47:45','YYYY-MM-DD HH:MI:SS'),'����Ư����','2','xmas03_1.jpg',1,1,1,'xmas03_1_t.jpg','11111');
Insert into TEAM2.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NICKNAME,MEMBER_NAME,MEMBER_ISADULT,MEMBER_TEL,MEMBER_EMAIL,MEMBER_RDATE,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_PROFILEPIC,MEMBERLEVEL_NO,AUTH_NO,SNSLOGIN_NO,MEMBER_PROFILETHUMB,MEMBER_ZIPCODE) values (2,'test2','1234','����','�̵�',8001011234567,1087654321,'test2@gmail.com',to_date('2020-12-14 04:47:45','YYYY-MM-DD HH:MI:SS'),'����Ư����','�߶���','02.jpg',4,5,1,null,null);
Insert into TEAM2.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NICKNAME,MEMBER_NAME,MEMBER_ISADULT,MEMBER_TEL,MEMBER_EMAIL,MEMBER_RDATE,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_PROFILEPIC,MEMBERLEVEL_NO,AUTH_NO,SNSLOGIN_NO,MEMBER_PROFILETHUMB,MEMBER_ZIPCODE) values (12,'test1234','1234','��ǳ','ȫ�浿',8000001234567,1012345678,'test1@gmail.com',to_date('2021-01-14 10:23:31','YYYY-MM-DD HH:MI:SS'),'���� ������ �б����� 102 (�Ż絿, ������2����)','11',null,1,1,1,null,null);
Insert into TEAM2.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NICKNAME,MEMBER_NAME,MEMBER_ISADULT,MEMBER_TEL,MEMBER_EMAIL,MEMBER_RDATE,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_PROFILEPIC,MEMBERLEVEL_NO,AUTH_NO,SNSLOGIN_NO,MEMBER_PROFILETHUMB,MEMBER_ZIPCODE) values (11,'test1111','1234','��ǳ','ȫ�浿',8000001234567,1012345678,'test1@gmail.com',to_date('2021-01-10 07:21:14','YYYY-MM-DD HH:MI:SS'),'���� ������ ������ 5����� 8 (���縮)','11','592919.jpg',1,1,1,'592919_t.jpg',null);
Insert into TEAM2.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NICKNAME,MEMBER_NAME,MEMBER_ISADULT,MEMBER_TEL,MEMBER_EMAIL,MEMBER_RDATE,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_PROFILEPIC,MEMBERLEVEL_NO,AUTH_NO,SNSLOGIN_NO,MEMBER_PROFILETHUMB,MEMBER_ZIPCODE) values (8,'test6','1234','��ǳ','ȫ�浿',8000001234567,1012345678,'test1@gmail.com',to_date('2020-12-15 01:19:19','YYYY-MM-DD HH:MI:SS'),'����Ư����','�߶���','ElYAYBKUcAA2sdB.jpg',1,1,1,'ElYAYBKUcAA2sdB_t.jpg',null);
Insert into TEAM2.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NICKNAME,MEMBER_NAME,MEMBER_ISADULT,MEMBER_TEL,MEMBER_EMAIL,MEMBER_RDATE,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_PROFILEPIC,MEMBERLEVEL_NO,AUTH_NO,SNSLOGIN_NO,MEMBER_PROFILETHUMB,MEMBER_ZIPCODE) values (9,'test7','1234','�ܿ�','��浿',8000001234567,1012345678,'test1@gmail.com',to_date('2020-12-15 11:46:40','YYYY-MM-DD HH:MI:SS'),'���� ���� �Ǳ�1�� 3 (�Ǿϵ�)','1','xmas02_0.jpg',1,1,1,'xmas02_0_t.jpg','12345');
Insert into TEAM2.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NICKNAME,MEMBER_NAME,MEMBER_ISADULT,MEMBER_TEL,MEMBER_EMAIL,MEMBER_RDATE,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_PROFILEPIC,MEMBERLEVEL_NO,AUTH_NO,SNSLOGIN_NO,MEMBER_PROFILETHUMB,MEMBER_ZIPCODE) values (10,'test11','1234','��ǳ','�ٱ浿',8000001234567,1012345678,'test1@gmail.com',to_date('2020-12-15 03:18:20','YYYY-MM-DD HH:MI:SS'),'���� ������ ������� 708 (�б�����, �ѳ��뱳���κ���ī��)','12','xmas01.jpg',1,1,1,'xmas01_t.jpg','00000');
REM INSERTING into TEAM2.MEMBERLEVEL
SET DEFINE OFF;
Insert into TEAM2.MEMBERLEVEL (MEMBERLEVEL_NO,MEMBERLEVEL_NAME) values (1,'��� ȸ��');
Insert into TEAM2.MEMBERLEVEL (MEMBERLEVEL_NO,MEMBERLEVEL_NAME) values (2,'��� ȸ��');
Insert into TEAM2.MEMBERLEVEL (MEMBERLEVEL_NO,MEMBERLEVEL_NAME) values (3,'��ȸ��');
Insert into TEAM2.MEMBERLEVEL (MEMBERLEVEL_NO,MEMBERLEVEL_NAME) values (4,'��ȸ��');
REM INSERTING into TEAM2.SNSLOGIN
SET DEFINE OFF;
Insert into TEAM2.SNSLOGIN (SNSLOGIN_NO,SNSLOGIN_NAME) values (1,'Ȩ������ ȸ��');
Insert into TEAM2.SNSLOGIN (SNSLOGIN_NO,SNSLOGIN_NAME) values (2,'���� ����');
Insert into TEAM2.SNSLOGIN (SNSLOGIN_NO,SNSLOGIN_NAME) values (3,'īī�� ����');
Insert into TEAM2.SNSLOGIN (SNSLOGIN_NO,SNSLOGIN_NAME) values (4,'���̹� ����');
REM INSERTING into TEAM2.URL
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007433
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007433" ON "TEAM2"."SNSLOGIN" ("SNSLOGIN_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007436
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007436" ON "TEAM2"."MEMBERLEVEL" ("MEMBERLEVEL_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007439
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007439" ON "TEAM2"."AUTH" ("AUTH_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007452
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007452" ON "TEAM2"."MEMBER" ("MEMBER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007460
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007460" ON "TEAM2"."LOGIN_LOG" ("LOGIN_LOG_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007464
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007464" ON "TEAM2"."URL" ("URL_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007467
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007467" ON "TEAM2"."AUTHURL" ("AURHURL_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007474
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007474" ON "TEAM2"."ADMIN" ("ADMIN_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007480
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2"."SYS_C007480" ON "TEAM2"."ADMIN_LOG" ("ADMIN_LOG_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "TEAM2"."ADMIN" ADD PRIMARY KEY ("ADMIN_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."ADMIN" MODIFY ("AUTH_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."ADMIN" MODIFY ("ADMIN_PASSWD" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."ADMIN" MODIFY ("ADMIN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN_LOG
--------------------------------------------------------

  ALTER TABLE "TEAM2"."ADMIN_LOG" ADD PRIMARY KEY ("ADMIN_LOG_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."ADMIN_LOG" MODIFY ("ADMIN_LOG_IP" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."ADMIN_LOG" MODIFY ("ADMIN_LOG_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."ADMIN_LOG" MODIFY ("ADMIN_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."ADMIN_LOG" MODIFY ("ADMIN_LOG_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTH
--------------------------------------------------------

  ALTER TABLE "TEAM2"."AUTH" ADD PRIMARY KEY ("AUTH_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."AUTH" MODIFY ("AUTH_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."AUTH" MODIFY ("AUTH_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTHURL
--------------------------------------------------------

  ALTER TABLE "TEAM2"."AUTHURL" ADD PRIMARY KEY ("AURHURL_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."AUTHURL" MODIFY ("AUTH_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."AUTHURL" MODIFY ("AURHURL_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGIN_LOG
--------------------------------------------------------

  ALTER TABLE "TEAM2"."LOGIN_LOG" ADD PRIMARY KEY ("LOGIN_LOG_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."LOGIN_LOG" MODIFY ("LOGIN_LOG_IP" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."LOGIN_LOG" MODIFY ("LOGIN_LOG_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."LOGIN_LOG" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."LOGIN_LOG" MODIFY ("LOGIN_LOG_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "TEAM2"."MEMBER" ADD PRIMARY KEY ("MEMBER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("SNSLOGIN_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("AUTH_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBERLEVEL_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_ADDRESS2" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_ADDRESS1" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_RDATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_TEL" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_ISADULT" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_PASSWD" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBER" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBERLEVEL
--------------------------------------------------------

  ALTER TABLE "TEAM2"."MEMBERLEVEL" ADD PRIMARY KEY ("MEMBERLEVEL_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."MEMBERLEVEL" MODIFY ("MEMBERLEVEL_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."MEMBERLEVEL" MODIFY ("MEMBERLEVEL_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SNSLOGIN
--------------------------------------------------------

  ALTER TABLE "TEAM2"."SNSLOGIN" ADD PRIMARY KEY ("SNSLOGIN_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."SNSLOGIN" MODIFY ("SNSLOGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."SNSLOGIN" MODIFY ("SNSLOGIN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table URL
--------------------------------------------------------

  ALTER TABLE "TEAM2"."URL" ADD PRIMARY KEY ("URL_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEAM2"."URL" MODIFY ("URL_URL" NOT NULL ENABLE);
  ALTER TABLE "TEAM2"."URL" MODIFY ("URL_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "TEAM2"."ADMIN" ADD FOREIGN KEY ("AUTH_NO")
	  REFERENCES "TEAM2"."AUTH" ("AUTH_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMIN_LOG
--------------------------------------------------------

  ALTER TABLE "TEAM2"."ADMIN_LOG" ADD FOREIGN KEY ("ADMIN_NO")
	  REFERENCES "TEAM2"."ADMIN" ("ADMIN_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTHURL
--------------------------------------------------------

  ALTER TABLE "TEAM2"."AUTHURL" ADD FOREIGN KEY ("AUTH_NO")
	  REFERENCES "TEAM2"."AUTH" ("AUTH_NO") ENABLE;
  ALTER TABLE "TEAM2"."AUTHURL" ADD FOREIGN KEY ("URL_NO")
	  REFERENCES "TEAM2"."URL" ("URL_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOGIN_LOG
--------------------------------------------------------

  ALTER TABLE "TEAM2"."LOGIN_LOG" ADD FOREIGN KEY ("MEMBER_NO")
	  REFERENCES "TEAM2"."MEMBER" ("MEMBER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "TEAM2"."MEMBER" ADD FOREIGN KEY ("SNSLOGIN_NO")
	  REFERENCES "TEAM2"."SNSLOGIN" ("SNSLOGIN_NO") ENABLE;
  ALTER TABLE "TEAM2"."MEMBER" ADD FOREIGN KEY ("MEMBERLEVEL_NO")
	  REFERENCES "TEAM2"."MEMBERLEVEL" ("MEMBERLEVEL_NO") ENABLE;
  ALTER TABLE "TEAM2"."MEMBER" ADD FOREIGN KEY ("AUTH_NO")
	  REFERENCES "TEAM2"."AUTH" ("AUTH_NO") ENABLE;